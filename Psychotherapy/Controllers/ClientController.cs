using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Insourcia.Psychotherapy.Bll;
using Insourcia.Psychotherapy.Model;
using Insourcia.WebControls.MvcPaging;
using Insourcia.Common;
using System.Linq.Expressions;
using LinqKit;
using Psychotherapy.Utility;
using System.Xml;
using Insourcia.Common.Web;
using Insourcia.Psychotherapy.Models;
using Psychotherapy.Models;
using System.IO;
using Insourcia.Psychotherapy.Utility;
using Resources;
using Insourcia.Psychotherapy.Utility.Log;
using Insourcia.Psychotherapy.Utility.Security;
using System.Text;
namespace Psychotherapy.Controllers
{
    [SessionTimeOutFilterAttribute]
    public class ClientController : BaseController
    {

        #region Client
        /// <summary>
        /// 显示客户列表的Action
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public ActionResult List(int? id)
        {
            
            try
            {
                int userID = HttpRequestUtils.QueryInt("uid", UserID);
                PatientBll bll = new PatientBll();
                Expression<Func<Patient, bool>> filter = p => p.UserID == userID & p.SiteID == SiteID;
                UserBll uBll = new UserBll();
                IList<User> users = uBll.GetSharedPatientsUsers(UserID);

                ViewData["slUsers"] = users.ToSelectList(u => u.FirstName + " " + u.LastName, u => u.UserID.ToString(), userID.ToString());
                Session.Remove("ClientID");
                Session.Remove("ClientName");

                IPagedList<Patient> list = new PagedList<Patient>(null, 1, 12);                
                if (userID == UserID)
                {
                    list = bll.GetPagedPatientList(id ?? 1, 12, filter);
                }
                else
                {
                    list = bll.GetSharedPatientList(UserID, userID, id ?? 1, 12, null);
                }
                ViewData["mid"] = UserID;
                return View(list);
            }
            catch (Exception ex)
            {
                LogHelper.ErrorToDb("Client", "List", ex);
                return PartialView("Error");
            }
        }

        /// <summary>
        /// 客户分页列表的Action
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
       
        public ActionResult ClientList(int? id, FormCollection forms)
        {
            string strKeyword = HttpRequestUtils.GetString("keyword", string.Empty);
            int userID = HttpRequestUtils.FormInt("uid", UserID);
            try
            {
                PatientBll bll = new PatientBll();
                Expression<Func<Patient, bool>> filter = p => p.UserID == userID & p.SiteID == SiteID;
                if (!string.IsNullOrWhiteSpace(strKeyword))
                {
                    filter = filter.And(p => p.FirstName.Contains(strKeyword) || p.LastName.Contains(strKeyword) || p.MiddleName.Contains(strKeyword) || p.GRID.Contains(strKeyword));
                }

                Session.Remove("ClientID");
                Session.Remove("ClientName");
                IPagedList<Patient> list = new PagedList<Patient>(null, 1, 12);
                if (userID == UserID)
                {
                    list = bll.GetPagedPatientList(id ?? 1, 12, filter);
                }
                else
                {
                    list = bll.GetSharedPatientList(UserID, userID, id ?? 1, 12, null);
                }
                return PartialView("UcClientList", list);
            }
            catch (Exception ex)
            {
                LogHelper.ErrorToDb("Client", "ClientList", ex);
                return PartialView("Error");
            }
        }


        /// <summary>
        /// 显示新增客户的Action
        /// </summary>
        /// <returns></returns>
        public ActionResult Create()
        {
            return View();  
        }

        /// <summary>
        /// 提交新增客户的Action
        /// </summary>
        /// <param name="forms"></param>
        /// <param name="user"></param>
        /// <returns></returns>
        [HttpPost]
        public ActionResult Create(FormCollection forms, Patient patient)
        {
            try
            {
                PatientBll bll = new PatientBll();
                patient.UserID = UserID;
                patient.SiteID = SiteID;
                forms["ClientName"] = patient.LastName + "," + patient.FirstName + (!string.IsNullOrEmpty(patient.MiddleName) ? " " + patient.MiddleName + "." : "");
                //创建xml文档
                XmlDocument xmldoc = HandleXML.CreatXML();
                //加入根节点
                XmlElement root = xmldoc.CreateElement("", "root", "");
                xmldoc.AppendChild(root);
                XmlElement xmlelem = null;
                XmlText xmltext = null;
                foreach (var key in forms.AllKeys)
                {
                    var value = forms[key];
                    switch (key)
                    {
                        case "FirstName": break;
                        case "MiddleName": break;
                        case "LastName": break;
                        default:
                            {
                                xmlelem = xmldoc.CreateElement(key);
                                xmltext = xmldoc.CreateTextNode(value);
                                xmlelem.AppendChild(xmltext);
                                root.AppendChild(xmlelem);
                            }
                            break;
                    }
                }
                patient.Gender = forms["Sex"].ToString();
                patient.TimeCreated = DateTime.Now;
                patient.LastModified = DateTime.Now;
                patient.LastModifiedBy = UserID;
                patient.IsValid = true;
                patient.SymptomsInfo = xmldoc.InnerXml;
                //xmldoc.Save("D:/ClientAddData.xml");

                if (bll.AddPatient(patient))
                {
                    string path = AppDomain.CurrentDomain.BaseDirectory + "ClientFiles\\" + patient.PatientID;
                    if (!Directory.Exists(path))
                    {
                        Directory.CreateDirectory(path);
                    }
                    
                    return RedirectToAction("Info", new { id = patient.PatientID });
                }
                else
                {
                    ModelState.AddModelError("ErrorMsg", "Create failure.");
                }
            }
            catch (Exception ex)
            {
                LogHelper.ErrorToDb("Client", "Create", ex);
                ModelState.AddModelError("ErrorMsg", ex.Message);
            }
            return View(patient);
        }


        /// <summary>
        /// 显式客户编辑的Action
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public ActionResult Edit(int id)
        {
            try
            {
                PatientBll bll = new PatientBll();
                Patient user = bll.GetPatientByID(id);
                if (user == null) return PartialView("Error");
                int userID = Converter.ChangeType<int>(Session["UserID"], 0);   
                if (user.UserID != userID)
                {
                    PermissionBll permissionBll = new PermissionBll();
                    UserPatientPermission permission = permissionBll.GetPatientPermission(userID, user.PatientID);
                    if (permission == null || !permission.can_write)
                    {
                        return PartialView("NoAuthorize");
                    }                   
                }               
                XMLBean.setValue(user.SymptomsInfo);
                Session["ClientID"] = user.UserID;
                return View(user);
            }
            catch (Exception ex)
            {
                LogHelper.ErrorToDb("Client", "Edit", ex);
                return PartialView("Error");
            }
        }

        /// <summary>
        /// 提交编辑客户的Action
        /// </summary>
        /// <param name="forms"></param>
        /// <param name="user"></param>
        /// <returns></returns>
        [HttpPost]
        public ActionResult Edit(FormCollection forms, Patient patient)
        {
            try
            {
                PatientBll bll = new PatientBll();
                Patient targetPatient = bll.GetPatientByID(patient.PatientID);
                if (targetPatient == null) { ModelState.AddModelError("ErrorMsg", "Edit failure,The client does not exist."); return View(patient); }
                int userID = Converter.ChangeType<int>(Session["UserID"], 0);
                if (targetPatient.UserID != userID)
                {
                    PermissionBll permissionBll = new PermissionBll();
                    UserPatientPermission permission = permissionBll.GetPatientPermission(userID, targetPatient.PatientID);
                    if (permission == null || !permission.can_write)
                    {
                        return PartialView("NoAuthorize");
                    }
                }
                string clientname = forms["LastName"].ToString() + "," + forms["FirstName"].ToString() + (!string.IsNullOrEmpty(forms["MiddleName"].ToString()) ? " " + forms["MiddleName"].ToString() + "." : "");
                forms["ClientName"] = forms["ClientName"].ToString() != clientname ? clientname : forms["ClientName"].ToString();
                //创建xml文档
                XmlDocument xmldoc = HandleXML.CreatXML();
                //加入根节点
                XmlElement root = xmldoc.CreateElement("", "root", "");
                xmldoc.AppendChild(root);
                XmlElement xmlelem = null;
                XmlText xmltext = null;
                foreach (var key in forms.AllKeys)
                {
                    var value = forms[key];
                    switch (key)
                    {
                        case "FirstName": break;
                        case "MiddleName": break;
                        case "LastName": break;
                        default:
                            {
                                xmlelem = xmldoc.CreateElement(key);
                                xmltext = xmldoc.CreateTextNode(value);
                                xmlelem.AppendChild(xmltext);
                                root.AppendChild(xmlelem);
                            }
                            break;
                    }
                }

                patient.UserID = targetPatient.UserID;
                patient.SiteID = targetPatient.SiteID;
                patient.Gender = forms["Sex"].ToString();
                patient.LastModified = DateTime.Now;
                patient.LastModifiedBy = UserID;
                patient.IsValid = true;
                patient.SymptomsInfo = xmldoc.InnerXml;
                //xmldoc.Save("D:/ClientEditdata.xml");

                if (bll.UpdatePatient(patient))
                {
                    return RedirectToAction("Info", new { id = patient.PatientID });
                }
                else
                {
                    ModelState.AddModelError("ErrorMsg", "Edit failure.");
                }
            }
            catch (Exception ex)
            {
                LogHelper.ErrorToDb("Client", "Edit", ex);
                ModelState.AddModelError("ErrorMsg", ex.Message);
            }
            return View(patient);
        }

        /// <summary>
        /// 显式客户信息的Action
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public ActionResult Info(int id)
        {
            try
            {
                PatientBll bll = new PatientBll();
                Patient user = bll.GetPatientByID(id);
                int userID = Converter.ChangeType<int>(Session["UserID"], 0);                
                if (user == null) return PartialView("Error");
                bool canRead = false;
                bool canWrite = false;
                bool isOwner = false;
                if (user.UserID != userID)
                {
                    PermissionBll permissionBll = new PermissionBll();
                    UserPatientPermission permission = permissionBll.GetPatientPermission(userID, user.PatientID);
                    if (permission == null || !permission.can_read)
                    {
                        return PartialView("NoAuthorize");
                    }
                    canRead = permission.can_read;
                    canWrite = permission.can_write;
                }
                else {
                    canRead = true;
                    canWrite = true;
                    isOwner = true;
                }
                ViewData["CanRead"] = canRead;
                ViewData["CanWrite"] = canWrite;
                ViewData["IsOwner"] = isOwner;
                Session["ClientID"] = id;
                Session["ClientName"] = user.LastName + "," + user.FirstName + (!string.IsNullOrEmpty(user.MiddleName) ? " " + user.MiddleName + "." : "");
                Session["PatientName"] = user.LastName + "," + user.FirstName + (!string.IsNullOrEmpty(user.MiddleName) ? " " + user.MiddleName + "." : "");
                return View(user);
            }
            catch (Exception ex)
            {
                LogHelper.ErrorToDb("Client", "Info", ex);
                return PartialView("Error");
            }

        }

        /// <summary>
        /// 获取年龄
        /// </summary>
        /// <param name="forms"></param>
        /// <returns></returns>
        public ActionResult GetAge(FormCollection forms)
        {
            try
            {
                DateTime birthDay = Convert.ToDateTime(forms["date"]);
                DateTime now = DateTime.Now;
                int age = now.Year - birthDay.Year;
                if (now.Month == birthDay.Month)
                {
                    if (now.Day < birthDay.Day)
                    {
                        return Json(new { Success = true, Age = age - 1 });
                    }
                    else
                    {
                        return Json(new { Success = true, Age = age });
                    }
                }
                else
                {
                    if (now.Month > birthDay.Month)
                    {
                        return Json(new { Success = true, Age = age });
                    }
                    else
                    {
                        return Json(new { Success = true, Age = age - 1 });
                    }
                }
            }
            catch (Exception ex)
            {
                LogHelper.ErrorToDb("Client", "GetAge", ex);
                return Json(new { Success = true, ErrorMsg = ex.Message });
            }
            
        }

        public ActionResult PrintClientInfo(int id)
        {
            try
            {
                PatientBll bll = new PatientBll();
                Patient patient = bll.GetPatientByID(id);
                HandlePDF handlePDF = new HandlePDF();
                handlePDF.BaseDir = System.Web.HttpContext.Current.Server.MapPath("/");
                handlePDF.PdfDir = "Views\\Client\\Pdf";
                handlePDF.TplName = "PSYCHOSOCIAL-DRAFT";

                // 读取XML文档
                XmlDocument xmlDoc = new XmlDocument();
                xmlDoc.LoadXml(patient.SymptomsInfo);
                XmlNodeList nodeList = xmlDoc.SelectSingleNode("root").ChildNodes;
                foreach (XmlNode ul in nodeList)
                {
                    XmlElement el = (XmlElement)ul;
                    handlePDF.AddField(el.Name, el.InnerText);
                }
                string folder = AppDomain.CurrentDomain.BaseDirectory + "ClientFiles\\" + id + "\\Physcosocial";
                if (!Directory.Exists(folder))
                {
                    Directory.CreateDirectory(folder);
                }
                string path = folder + patient.GRID + ".pdf";
                if (handlePDF.makePdfPage(id, path))
                {
                    HttpContext.Response.AddHeader("content-disposition", "inline; filename=" + patient.GRID + ".pdf");
                    return File(new FileStream(path, FileMode.Open), "appliction/pdf");
                }
                return File(Encoding.UTF8.GetBytes("Sorry, the processing of your request error."), "text/plain");
            }
            catch (Exception ex)
            {
                LogHelper.ErrorToDb("Client", "PrintClientInfo", ex);
                throw new Exception(ex.Message);
            }
        }
        #endregion


        #region Files
        public ActionResult Files(int? id)
        {
            try
            {
                int patientID = Converter.ToInt(Request.QueryString["patientID"], 0);
                if (patientID == 0) return PartialView("Error");
                bool read, download, write,isOwner;
                Permission.PatientPermission(UserID, patientID, out read, out download, out write,out isOwner);
                if (!read)
                    return PartialView("NoAuthorize");
                ViewData["Write"] = write;
                ViewData["download"] = download;
                ViewData["IsOwner"] = isOwner;
                ViewData["PatientID"] = patientID;
                FilesBll fileBll = new FilesBll();
                Expression<Func<Insourcia.Psychotherapy.Model.File, bool>> filter = PredicateBuilder.True<Insourcia.Psychotherapy.Model.File>();
                filter = f => f.PatientID == patientID;
                IPagedList<Insourcia.Psychotherapy.Model.File> list = fileBll.GetPagedFileList(id ?? 1, 12, filter);
                return View(list);
            }
            catch (Exception ex)
            {
               LogHelper.ErrorToDb("Client", "Files", ex);
               return PartialView("Error");
            }
            
        }

        [HttpPost]
        public ActionResult FilesPagedList(int? id)
        {
            int patientID = Converter.ToInt(Request.QueryString["patientID"], 0);
            if (patientID == 0) return PartialView("Error");
            string strKeyword = HttpRequestUtils.GetString("keyword", string.Empty);
            try
            {
                FilesBll filesBll = new FilesBll();
                Expression<Func<Insourcia.Psychotherapy.Model.File, bool>> filter = PredicateBuilder.True<Insourcia.Psychotherapy.Model.File>();
                filter = f => f.PatientID == patientID;
                if (!string.IsNullOrWhiteSpace(strKeyword))
                {
                    filter = filter.And(f => f.FileName.Contains(strKeyword));
                }
                IPagedList<Insourcia.Psychotherapy.Model.File> list = filesBll.GetPagedFileList(id ?? 1, 12, filter);
                return PartialView("UcFiles", list);
            }
            catch (Exception ex)
            {
                LogHelper.ErrorToDb("Client", "FilesPagedList", ex);
                return PartialView("Error");
            }
        }

        #endregion

        #region Chart

        /// <summary>
        /// 
        /// </summary>
        /// <returns></returns>
        public ActionResult Chart(int id, int patientID)
        {
            try
            {
                var path = AppDomain.CurrentDomain.BaseDirectory + "ClientFiles\\" + patientID;

                PatientBll patientBll = new PatientBll();
                Patient patient = patientBll.GetPatientByID(patientID);

                FormDataBll formBll = new FormDataBll();
                IList<FormData> form = formBll.GetFormDataListByPatientID(patientID);
                ViewData["formlist"] = form;

                TreatmentPlanBll teatmentplanBll = new TreatmentPlanBll();
                IList<TreatmentPlan> treatmentplan = teatmentplanBll.GetTeatmenPlanListByPatientID(patientID);
                ViewData["treatmentplanlist"] = treatmentplan;

                FilesBll fileBll = new FilesBll();
                IList<Insourcia.Psychotherapy.Model.File> file = fileBll.GetFileListByPatientID(patientID);
                ViewData["scannedfrom"] = file;

                ViewData["path"] = path;
                return View(patient);
            }
            catch (Exception)
            {
                
                throw;
            }
            
        }

        
        
        #endregion

        #region Share
        public ActionResult SharePatient(int? id)
        {
            try
            {
                int patientID = HttpRequestUtils.FormInt("PatientID", 0);
                if (patientID == 0)
                    return Content("No patient checked!");
                PatientBll patientBll = new PatientBll();
                Patient patient = patientBll.GetPatientByID(patientID);
                if (patient == null)
                    throw new Exception("patient is not eixst!");
                
                if (patient.UserID!=UserID)
                    return Content("Sorry,You may not have permission to perform this operation.");
                
                PermissionBll permissionBll = new PermissionBll();
                IList<UserPatientPermission> permissionList = permissionBll.GetPatientPermissionList(patientID, id ?? 1, 20);
                UserBll userBll = new UserBll();
                IList<User> userList = userBll.GetAllUsers();
                ViewData["slUser"] = userList.Where(u => u.UserID != patient.UserID).ToSelectList<User>(u => u.FirstName + " " + u.LastName, u => u.UserID.ToString());
                ViewData["PatientID"] = patientID;
                return View(permissionList);
            }
            catch (Exception ex)
            {
                LogHelper.ErrorToDb("Client", "SharePatient", ex);
                return PartialView("Error");
            }
        }

        public ActionResult GetPatientPermissionList(int? id)
        {
            try
            {
                int patientID = HttpRequestUtils.FormInt("PatientID", 0);
                if (patientID == 0)
                    return Content("No patient checked!");
                PatientBll patientBll = new PatientBll();
                Patient patient = patientBll.GetPatientByID(patientID);
                if (patient == null)
                    throw new Exception("patient is not eixst!");
                #region Authorize               
               if (patient.UserID!=UserID)
                    return Content("Sorry,You may not have permission to perform this operation."); 
                #endregion

                PermissionBll permissionBll = new PermissionBll();
                IList<UserPatientPermission> permissionList = permissionBll.GetPatientPermissionList(patientID, id ?? 1, 20);

                return PartialView("UcPatientPermissionList", permissionList);
            }
            catch (Exception ex)
            {
                LogHelper.ErrorToDb("Client", "SharePatient", ex);
                return PartialView("Error");
            }
        }

        [HttpPost]
        public ActionResult AddPatientPermission(FormCollection forms)
        {

            try
            {
                //get current user
                int patientID = HttpRequestUtils.FormInt("hdPatientID", 0);
                int[] userIDs = HttpRequestUtils.FormIntArray("hdUserID");
                bool[] reads = HttpRequestUtils.FormBoolArray("canRead");
                bool[] writes = HttpRequestUtils.FormBoolArray("canWrite");
                bool[] downloads = HttpRequestUtils.FormBoolArray("canDownload");
                bool[] form = HttpRequestUtils.FormBoolArray("isAppliedForm");
                bool[] treatmentPlan = HttpRequestUtils.FormBoolArray("isAppliedTreatmentPlan");
                bool[] scannedForm = HttpRequestUtils.FormBoolArray("isAppliedScannedForm");
                bool[] chart = HttpRequestUtils.FormBoolArray("isAppliedChart");

                //bool isApplyToSub =HttpRequestUtils.FormBool("chkbIsApplyToSub", false);

                if (patientID == 0 || userIDs.Length == 0)
                {
                    return JsonModel.CreateJsonResult(false, "parameter is invalid");
                }
                PatientBll patientBll=new PatientBll();
                Patient patient = patientBll.GetPatientByID(patientID);
                if (patient == null)
                    return JsonModel.CreateJsonResult(false,"The client information  is not exist.");
                #region Check Rights
               
                if (patient.UserID!=UserID)
                    return JsonModel.CreateJsonResult(false,"Sorry,You may not have permission to perform this operation."); 
                #endregion

                List<UserPatientPermission> uopList = new List<UserPatientPermission>();
                // 获取参数的值
                for (int i = 0; i < userIDs.Length; i++)
                {
                    // 获取提交过来的值
                    int uid = userIDs[i];
                   
                    bool write = writes[i];
                    bool download =downloads[i]|| write;//能写就能下载=
                    bool read =reads[i]|| download;
                    bool tForm = form[i];
                    bool tTreatmentPlan = treatmentPlan[i];
                    bool tScannedForm = scannedForm[i];
                    bool tChart = chart[i];
                    if (uid ==0) continue;
                    UserPatientPermission userPatientPermission = new UserPatientPermission();
                    userPatientPermission.UserID = uid;
                    userPatientPermission.PatientID = patientID;
                    userPatientPermission.can_read = read;
                    userPatientPermission.can_write = write;
                    userPatientPermission.can_download = download;
                    userPatientPermission.FormData=(tForm==true?"ALL,ALL":"0,0");
                    userPatientPermission.TreatmentPlanData= (tTreatmentPlan == true ? "ALL,ALL" : "0,0");
                    userPatientPermission.ScannedFormData = (tScannedForm == true ? "ALL,ALL" : "0,0");
                    userPatientPermission.ChartData = (tChart == true ? "ALL,ALL" : "0,0");
                    uopList.Add(userPatientPermission);
                }

                PermissionBll permissionBll = new PermissionBll();
                if (permissionBll.SetPatientPermission(uopList))
                {
                    return JsonModel.CreateJsonResult(true, "");
                }
                else
                {
                    return JsonModel.CreateJsonResult(false, "Shared failed.");
                }

            }
            catch (Exception ex)
            {
                LogHelper.ErrorToDb("Client", "AddPatientPermission", ex);
                return JsonModel.CreateJsonResult(false,ex.Message);
            }
            
        }

        #endregion
    }
}
