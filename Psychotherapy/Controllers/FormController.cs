using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Insourcia.Psychotherapy.Bll;
using Insourcia.Psychotherapy.Model;
using System.Linq.Expressions;
using LinqKit;
using Insourcia.WebControls.MvcPaging;
using System.Xml;
using Insourcia.Common;
using Psychotherapy.Utility;
using Psychotherapy.Models;
using Insourcia.Common.Web;
using System.IO;
using Insourcia.Psychotherapy.Utility.Log;
using Insourcia.Psychotherapy.Utility.Security;
using Insourcia.Psychotherapy.Utility;
using System.Text;
namespace Psychotherapy.Controllers
{
    /// <summary>
    /// 前台Forms Controller
    /// </summary>
    [SessionTimeOutFilterAttribute]
    public class FormController : BaseController
    {
        /// <summary>
        /// 显示FormList的Action
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public ActionResult List(int? id)
        {
            try
            {
                int patientID = Converter.ToInt(Request.QueryString["cid"], 0);
                if (patientID == 0) return PartialView("Error");
                PatientBll patientBll = new PatientBll();
                Patient patient = patientBll.GetPatientByID(patientID);
                int userID = Converter.ChangeType<int>(Session["UserID"], 0);
                bool canShare = false;
                bool canRead = false;
                bool canWrite = false;
                UserPatientPermission permission=null;
                if (patient.UserID==userID)
                {
                    canShare = true;
                    canWrite = true;
                    canRead = true;
                }
                else
                {
                    PermissionBll permissionBll = new PermissionBll();
                    permission = permissionBll.GetPatientPermission(userID, patientID);
                    if (permission == null)
                    {
                        return PartialView("NoAuthorize");
                    }
                    if (permission.FormData == "ALL,ALL" || permission.FormData.Substring(3).Contains("W"))
                    {
                        canWrite = true;
                        canRead = true;
                    }
                    else if (permission.FormData.Substring(3).Contains("R"))
                    {
                        canRead = true;
                    }
                }
                //获取分类列表
                CategoryBll categorybll = new CategoryBll();
                IList<Category> categories = categorybll.GetAllCategories();
                ViewData["categories"] = categories;
                ViewData["CanShare"] = canShare;
                ViewData["CanWrite"] = canWrite;
                ViewData["CanRead"] = canRead;
                FormDataBll formDataBll = new FormDataBll();
                Expression<Func<FormData, bool>> filter = PredicateBuilder.True<FormData>();
                filter = f => f.PatientID == patientID;
                IPagedList<FormData> list = new PagedList<FormData>(null, 1, 12);
                if (permission ==null || permission.FormData.StartsWith("ALL") )
                {
                    list = formDataBll.GetPagedFormDataList(id ?? 1, 12, filter);
                }
                else
                {
                    list = formDataBll.GetSharedFormDataList(userID, patientID, id ?? 1, 12, null);
                }

                return View(list);
            }
            catch (Exception ex)
            {
                LogHelper.ErrorToDb("Form", "List", ex);
                return PartialView("Error");
            }
        }

        /// <summary>
        /// 显示分页FormList的Action
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        [HttpPost]
        public ActionResult FormList(int? id, FormCollection forms)
        {
            int patientID = Converter.ToInt(Request.QueryString["cid"], 0);
            string strKeyword = HttpRequestUtils.GetString("keyword", string.Empty);
            try
            {
                PatientBll patientBll = new PatientBll();
                Patient patient = patientBll.GetPatientByID(patientID);
                int userID = Converter.ChangeType<int>(Session["UserID"], 0);
                if (patient.UserID != userID)
                {
                    PermissionBll permissionBll = new PermissionBll();
                    UserPatientPermission permission = permissionBll.GetPatientPermission(userID, patientID);
                    if (permission == null || !permission.can_read)
                    {
                        return PartialView("NoAuthorize");
                    }
                }
                Expression<Func<FormData, bool>> filter = PredicateBuilder.True<FormData>();
                filter = f => f.PatientID == patientID;
                if (!string.IsNullOrWhiteSpace(strKeyword))
                {
                    filter = filter.And(f => f.Form.FormName.Contains(strKeyword));
                }
                FormDataBll formDataBll = new FormDataBll();
                IPagedList<FormData> list = new PagedList<FormData>(null, 1, 12);
                if (userID == UserID)
                {
                    list = formDataBll.GetPagedFormDataList(id ?? 1, 12, filter);
                }
                else
                {
                    list = formDataBll.GetSharedFormDataList(userID, patientID, id ?? 1, 12, filter);
                }
                return PartialView("UcFormList", list);
            }
            catch (Exception ex)
            {
                LogHelper.ErrorToDb("Form", "FormList", ex);
                return PartialView("Error");
            }
        }

        /// <summary>
        /// 显示新增Form的Action
        /// </summary>
        /// <returns></returns>
        public ActionResult NewForm()
        {
            int id = Converter.ToInt(Request.QueryString["cid"], 0);
            if (id == 0) return RedirectToAction("List", "Client");
            PatientBll bll = new PatientBll();
            ViewData["Patient"] = bll.GetPatientByID(id);
            return View();
        }

        /// <summary>
        /// 添加Form的Action
        /// </summary>
        /// <returns></returns>
        [HttpPost]
        public ActionResult NewForm(FormCollection forms, FormData formDataPar)
        {
            try
            {

                FormDataBll formDataBll = new FormDataBll();
                FormData formData = new FormData();

                //创建xml文档
                XmlDocument xmldoc = HandleXML.CreatXML();
                //加入根节点
                XmlElement root = xmldoc.CreateElement("", "root", "");
                xmldoc.AppendChild(root);
                XmlElement xmlelem = null;
                XmlText xmltext = null;
                foreach (var key in forms.AllKeys)
                {
                    if (key == "FormID" || key == "PatientID" || key == "Template") continue;
                    var value = forms[key];
                    xmlelem = xmldoc.CreateElement(key);
                    xmltext = xmldoc.CreateTextNode(value);
                    xmlelem.AppendChild(xmltext);
                    root.AppendChild(xmlelem);
                }
                formData.FormID = formDataPar.FormID;
                formData.PatientID = formDataPar.PatientID;
                formData.PrintFormName = "";
                formData.UserID = UserID;
                formData.Content = xmldoc.InnerXml;
                formData.TimeCreated = DateTime.Now;
                formData.LastModified = DateTime.Now;
                formData.LastModifiedBy = UserID;
                formData.IsValid = true;

                //xmldoc.Save("D:/FormAddData.xml");

                if (formDataBll.AddFormData(formData))
                {
                    return Json(new { Success = true, Message = "Saved successfully.", id = formData.FormDataID, Template = forms["Template"], cid = formDataPar.PatientID });
                }
                else
                {
                    return Json(new { Success = false, Message = "Save failed." });
                }
            }
            catch (Exception ex)
            {
                LogHelper.ErrorToDb("Form", "NewForm", ex);
                return Json(new { Success = false, Message = ex.Message });
            }
        }

        /// <summary>
        /// 显示Form的详细信息
        /// </summary>
        /// <returns></returns>
        public ActionResult FormInfo(int id)
        {
            try
            {
                int patientID = Converter.ToInt(Request.QueryString["cid"], 0);
                if (patientID == 0) return PartialView("Error");

                FormDataBll formDataBll = new FormDataBll();
                FormData formData = formDataBll.GetFormDataByID(id);
                bool read = false, write = false, download = false;
                Permission.FormDataPermission(UserID, id, out read, out download, out write);
                if (!read)
                    return PartialView("NoAuthorize");
                if (formData == null) return PartialView("Error");
                ViewData["IsOwner"] = formData.UserID == UserID;
                string json = XMLBean.Xml2JSON(formData.Content);
                ViewData.Add("content", json);
                ViewData["Write"] = write;
                PatientBll bll = new PatientBll();
                ViewData["Patient"] = bll.GetPatientByID(patientID);

                return View(formData);
            }
            catch (Exception ex)
            {
                LogHelper.ErrorToDb("Form", "FormInfo", ex);
                return PartialView("Error");
            }

        }

        /// <summary>
        /// 显示编辑Form的Action
        /// </summary>
        /// <returns></returns>
        public ActionResult EditForm(int id)
        {
            try
            {
                int patientID = Converter.ToInt(Request.QueryString["cid"], 0);
                if (patientID == 0) return PartialView("Error");
                bool read = false, download = false, write = false;
                Permission.FormDataPermission(UserID, id, out read, out download, out write);
                if (!write)
                    return PartialView("NoAuthorize");
                FormDataBll formDataBll = new FormDataBll();
                FormData formData = formDataBll.GetFormDataByID(id);
                if (formData == null) return PartialView("Error");
                //XMLBean.setValue(formData.Content);
                string json = XMLBean.Xml2JSON(formData.Content);
                PatientBll bll = new PatientBll();
                ViewData["Patient"] = bll.GetPatientByID(patientID);
                ViewData.Add("content", json);
                return View(formData);
            }
            catch (Exception ex)
            {
                LogHelper.ErrorToDb("Form", "EditForm", ex);
                return PartialView("Error");
            }
        }

        /// <summary>
        /// 编辑Form的Action
        /// </summary>
        /// <param name="forms"></param>
        /// <param name="formDataPar"></param>
        /// <returns></returns>
        [HttpPost]
        public ActionResult EditForm(FormCollection forms, FormData formDataPar)
        {
            try
            {
                FormDataBll formDataBll = new FormDataBll();
                FormData formData = formDataBll.GetFormDataByID(formDataPar.FormDataID);
                bool read = false, download = false, write = false;
                int patientID = HttpRequestUtils.FormInt("PatientID", 0);
                Permission.FormDataPermission(UserID, formDataPar.FormDataID, out read, out download, out write);
                if (!write)
                    return PartialView("NoAuthorize");
                //创建xml文档
                XmlDocument xmldoc = HandleXML.CreatXML();
                //加入根节点
                XmlElement root = xmldoc.CreateElement("", "root", "");
                xmldoc.AppendChild(root);
                XmlElement xmlelem = null;
                XmlText xmltext = null;
                foreach (var key in forms.AllKeys)
                {
                    if (key == "FormDataID") continue;
                    var value = forms[key];
                    xmlelem = xmldoc.CreateElement(key);
                    xmltext = xmldoc.CreateTextNode(value);
                    xmlelem.AppendChild(xmltext);
                    root.AppendChild(xmlelem);
                }


                formData.PrintFormName = "";

                formData.Content = xmldoc.InnerXml;

                formData.LastModified = DateTime.Now;
                formData.LastModifiedBy = UserID;

                xmldoc.Save("D:/FormEditData.xml");

                if (formDataBll.UpDateFormData(formData))
                {
                    return Json(new { Success = true, Message = "Saved successfully.", id = formData.FormDataID, Template = formData.Form.TemplatePath, cid = formData.PatientID });
                }
                else
                {
                    return Json(new { Success = false, Message = "Save failed." });
                }
            }
            catch (Exception ex)
            {
                LogHelper.ErrorToDb("Form", "EditForm", ex);
                return Json(new { Success = false, Message = ex.Message });
            }
        }

        /// <summary>
        /// 打印Form生成PDF文件
        /// </summary>
        /// <param name="forms"></param>
        /// <param name="formDataPar"></param>
        /// <returns></returns>
        public ActionResult PrintForm(int id)
        {
            string tempFormName = Request.QueryString["formName"];
            int patientID = Converter.ToInt(Request.QueryString["cid"], 0);
            //string outputfile = AppDomain.CurrentDomain.BaseDirectory + "Views\\Form\\Pdf\\" + tempFormName.Replace(" ", "");
            //if (!System.IO.File.Exists(outputfile)) return File(Encoding.UTF8.GetBytes("Sorry, the processing of your request error."), "text/plain"); 
            try
            {
                FormDataBll formDataBll = new FormDataBll();
                FormData formData = formDataBll.GetFormDataByID(id);
                PatientBll patientBll = new PatientBll();
                Patient patient = patientBll.GetPatientByID(patientID);
                HandlePDF handlePDF = new HandlePDF();
                handlePDF.BaseDir = System.Web.HttpContext.Current.Server.MapPath("/");
                handlePDF.PdfDir = "Views\\Form\\Pdf";
                handlePDF.TplName = tempFormName.Replace(" ", "");


                // 读取XML文档
                XmlDocument xmlDoc = new XmlDocument();
                xmlDoc.LoadXml(formData.Content);
                XmlNodeList nodeList = xmlDoc.SelectSingleNode("root").ChildNodes;
                foreach (XmlNode ul in nodeList)
                {
                    XmlElement el = (XmlElement)ul;
                    handlePDF.AddField(el.Name, el.InnerText);
                }
              string folder = AppDomain.CurrentDomain.BaseDirectory + "ClientFiles\\" + patientID + "\\Form\\";
              if (!Directory.Exists(folder))
              {
                  Directory.CreateDirectory(folder);
              }
              string path = folder + formData.TimeCreated.ToString("MM-dd-yyyy") + ".pdf";
              if(handlePDF.makePdfPage(id, path))
              {
                  HttpContext.Response.AddHeader("content-disposition", "inline; filename=" + handlePDF.TplName + ".pdf");
                  return File(new FileStream(path, FileMode.Open), "appliction/pdf");
              }
              return File(Encoding.UTF8.GetBytes("Sorry, print failure, please contact with administrator."), "text/plain");
            }
            catch (Exception ex)
            {
                LogHelper.ErrorToDb("Form", "PrintForm", ex);
                throw new Exception(ex.Message);
            }
        }

        #region Share

        public ActionResult ShareForm(int? id)
        {
            try
            {
                int patientID = HttpRequestUtils.FormInt("PatientID", 0);
                
                if (patientID == 0)
                    return Content("No patient checked!");
              
                  int formDataID = HttpRequestUtils.FormInt("FormDataID", 0);
                    if (formDataID == 0)
                        return Content("The form is not exsis.");
           
               
                PatientBll patientBll = new PatientBll();
                Patient patient = patientBll.GetPatientByID(patientID);
                if (patient == null)
                    throw new Exception("patient is not eixst!");

                #region Authorize
                if (patient.UserID != UserID)
                    return Content("Sorry,You may not have permission to perform this operation.");
                #endregion

                PermissionBll permissionBll = new PermissionBll();
                IList<UserFormDataPermission>    permissionList = permissionBll.GetFormPermissionList(formDataID, id ?? 1, 20);
                
                UserBll userBll = new UserBll();
                IList<User> userList = userBll.GetUsers(u => u.UserID != patient.UserID);
                ViewData["slUser"] = userList.ToSelectList<User>(u => u.LastName + "," + u.FirstName+(!string.IsNullOrEmpty(u.MiddleName)?" "+u.MiddleName+".":""), u => u.UserID.ToString());
                ViewData["PatientID"] = patientID;
                ViewData["FormDataID"] = formDataID;
                return View(permissionList);
            }
            catch (Exception ex)
            {
                LogHelper.ErrorToDb("Form", "ShareForm", ex);
                return PartialView("Error");
            }
        }
        public ActionResult ShareForms(int? id)
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
                if (patient.UserID != UserID)
                    return Content("Sorry,You may not have permission to perform this operation.");
                #endregion

                PermissionBll permissionBll = new PermissionBll();
                IList<SubItemPermissionModel> permissionList = permissionBll.GetFormsPermissionList(UserID,patientID,SubItemType.Form, id ?? 1, 20);

                UserBll userBll = new UserBll();
                IList<User> userList = userBll.GetUsers(u => u.UserID != patient.UserID);
                ViewData["slUser"] = userList.ToSelectList<User>(u => u.LastName + "," + u.FirstName + (!string.IsNullOrEmpty(u.MiddleName) ? " " + u.MiddleName + "." : ""), u => u.UserID.ToString());
                ViewData["PatientID"] = patientID;
                return View(permissionList);
            }
            catch (Exception ex)
            {
                LogHelper.ErrorToDb("Form", "ShareForms", ex);
                return PartialView("Error");
            }
        }
        public ActionResult GetFormPermissionList(int? id)
        {
            try
            {
                int patientID = HttpRequestUtils.FormInt("PatientID", 0);
                int formDataID = HttpRequestUtils.FormInt("FormDataID", 0);
                if (patientID == 0)
                    return Content("No patient checked!");
                if (formDataID == 0)
                    return Content("The form is not exsis.");
                PatientBll patientBll = new PatientBll();
                Patient patient = patientBll.GetPatientByID(patientID);
                if (patient == null)
                    throw new Exception("patient is not eixst!");

                #region Authorize
                if (UserID != patient.UserID)
                    return Content("Sorry,You may not have permission to perform this operation.");
                #endregion

                PermissionBll permissionBll = new PermissionBll();
                IList<UserFormDataPermission> permissionList = permissionBll.GetFormPermissionList(formDataID, id ?? 1, 20);

                return PartialView("UcFormPermissionList", permissionList);
            }
            catch (Exception ex)
            {
                LogHelper.ErrorToDb("Form", "GetFormPermissionList", ex);
                return PartialView("Error");
            }
        }

        [HttpPost]
        public ActionResult AddFormPermission(FormCollection forms)
        {
            try
            {
                //get current user
                int patientID = HttpRequestUtils.FormInt("hdPatientID", 0);
                int formDataID = HttpRequestUtils.FormInt("hdFormDataID", 0);
                int[] userIDs = HttpRequestUtils.FormIntArray("hdUserID");
                bool[] reads = HttpRequestUtils.FormBoolArray("canRead");
                bool[] writes = HttpRequestUtils.FormBoolArray("canWrite");
                bool isApplyToSub = HttpRequestUtils.FormBool("chkbIsApplyToSub", false);

                if (patientID == 0 || userIDs.Length == 0)
                {
                    return JsonModel.CreateJsonResult(false, "parameter is invalid");
                }
                PatientBll patientBll = new PatientBll();
                Patient patient = patientBll.GetPatientByID(patientID);
                #region Authorize
                if (patient.UserID != UserID)
                    return JsonModel.CreateJsonResult(false, "Sorry,You may not have permission to perform this operation.");
                #endregion

                List<UserFormDataPermission> uopList = new List<UserFormDataPermission>();
                // 获取参数的值
                for (int i = 0; i < userIDs.Length; i++)
                {
                    // 获取提交过来的值
                    int uid = userIDs[i];

                    bool write = writes[i];
                    bool read = reads[i] || write;
                    if (uid == 0) continue;
                    UserFormDataPermission formPermission = new UserFormDataPermission();
                    formPermission.UserID = uid;
                    formPermission.PatientID = patientID;
                    formPermission.FormDataID = formDataID;
                    formPermission.can_read = read;
                    formPermission.can_write = write;
                    formPermission.last_modified = DateTime.Now;
                    formPermission.last_modified_by = UserID;
                    uopList.Add(formPermission);
                }

                PermissionBll permissionBll = new PermissionBll();
                if (permissionBll.SetFormPermission(uopList))
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
                LogHelper.ErrorToDb("Form", "AddFormPermission", ex);
                return JsonModel.CreateJsonResult(false, ex.Message);
            }
        }
        [HttpPost]
        public ActionResult AddFormsPermission(FormCollection forms)
        {
            try
            {
                //get current user
                int patientID = HttpRequestUtils.FormInt("hdPatientID", 0);
                int[] userIDs = HttpRequestUtils.FormIntArray("hdUserID");
                bool[] reads = HttpRequestUtils.FormBoolArray("canRead");
                bool[] writes = HttpRequestUtils.FormBoolArray("canWrite");
                bool isApplyToSub = HttpRequestUtils.FormBool("chkbIsApplyToSub", false);

                if (patientID == 0 || userIDs.Length == 0)
                {
                    return JsonModel.CreateJsonResult(false, "parameter is invalid");
                }
                PatientBll patientBll = new PatientBll();
                Patient patient = patientBll.GetPatientByID(patientID);
                #region Authorize
                if (patient.UserID != UserID)
                    return JsonModel.CreateJsonResult(false, "Sorry,You may not have permission to perform this operation.");
                #endregion

                List<UserPatientPermission> uopList = new List<UserPatientPermission>();
                // 获取参数的值
                for (int i = 0; i < userIDs.Length; i++)
                {
                    // 获取提交过来的值
                    int uid = userIDs[i];

                    bool write = writes[i];
                    bool read = reads[i] || write;
                    if (uid == 0) continue;
                    UserPatientPermission userPatientPermission = new UserPatientPermission();
                    userPatientPermission.UserID = uid;
                    userPatientPermission.PatientID = patientID;
                    userPatientPermission.can_read = true;
                    userPatientPermission.FormData = "ALL,"+(read?"R":"")+(write?"W":"");
                    userPatientPermission.TreatmentPlanData =  "0,0";
                    userPatientPermission.ScannedFormData = "0,0";
                    userPatientPermission.ChartData = "0,0";
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
                LogHelper.ErrorToDb("Form", "AddFormPermission", ex);
                return JsonModel.CreateJsonResult(false, ex.Message);
            }
        }
        #endregion

    }
}
