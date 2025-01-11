using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Insourcia.Psychotherapy.Bll;
using System.Linq.Expressions;
using LinqKit;
using Insourcia.WebControls.MvcPaging;
using Insourcia.Psychotherapy.Model;
using Psychotherapy.Utility;
using Insourcia.Common;
using Psychotherapy.Models;
using Insourcia.Common.Web;
using Insourcia.Psychotherapy.Models;
using System.IO;
using iTextSharp.text;
using System.Net;
using System.Text;
using System.Collections;
using System.Text.RegularExpressions;
using System.Data;
using Insourcia.Psychotherapy.Utility.Security;
using Insourcia.Psychotherapy.Utility.Log;
using Insourcia.Psychotherapy.Utility;

namespace Psychotherapy.Controllers
{
    [SessionTimeOutFilterAttribute]
    public class TreatmentPlanController : BaseController
    {
        private const string strSymptom = "Problem/Symptom{0} ";
        private const string strLongTermGoal = "Long Term Goal{0} ";
        private const string strObjective = "Objective{0} ";
        private const string strStrategy = "Therapeutic Strategies{0} ";
        private const string WorkedOn = "Worked On? {0}";
        private const string Complete = "Complete? {0}";
        private string Title = string.Empty;


        #region TreatmentPlan
        //
        // GET: /TreatmentPlan/
        /// <summary>
        /// 
        /// </summary>
        /// <param name="id">当前页数</param>
        /// <returns></returns>
        public ActionResult TreatmentPlanList(int? id)
        {
            int patientID = Converter.ToInt(Request.QueryString["patientID"], 0);
            if (patientID == 0) return PartialView("Error");
           
            try
            {
                bool read, download, write,isOwner;
                Permission.PatientPermission(UserID, patientID, out read, out download, out write,out isOwner);
                if (!read)
                    return PartialView("NoAuthorize");
                PatientBll patientBll = new PatientBll();
                Patient patient = patientBll.GetPatientByID(patientID);
                if (patient == null)
                    throw new Exception("Patient is not exist.");
                int patientUserID = patient.UserID;
               
                
                ViewData["patientID"] = patientID;
                ViewData["Write"] = write;
                IPagedList<TreatmentPlan> list = new PagedList<TreatmentPlan>(null, 1, 12);
                TreatmentPlanBll bll = new TreatmentPlanBll();
                if (UserID == patientUserID)
                {
                    Expression<Func<TreatmentPlan, bool>> filter = PredicateBuilder.True<TreatmentPlan>();
                    filter = p => p.PatientID == patientID;// && p.UserId == UserID;
                   list= bll.GetPagedTreatmentPlanList(id ?? 1, 10, filter);
                }
                else {
                    list = bll.GetSharedTreatmentPlans(UserID, patientID, id ?? 1, 12, null);
                }
                return View(list);
            }
            catch (Exception ex)
            {
                LogHelper.ErrorToDb("TreatmentPlan", "TreatmentPlanList", ex);
                return PartialView("Error");
            }
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="id">当前页数</param>
        /// <param name="patientID"></param>
        /// <returns></returns>
        public ActionResult TreatmentPlanPagedList(int? id, FormCollection forms)
        {
            int patientID = Converter.ToInt(Request.QueryString["patientID"], 0);
            if (patientID == 0) return PartialView("Error");
            string strKeyword = HttpRequestUtils.GetString("keyword", string.Empty);
            try
            {
                bool read, download, write,isOwner;
                Permission.PatientPermission(UserID, patientID, out read, out download, out write,out isOwner);
                if (!read)
                    return PartialView("NoAuthorize");
                PatientBll patientBll = new PatientBll();
                Patient patient = patientBll.GetPatientByID(patientID);
                if (patient == null)
                    throw new Exception("Patient is not exist.");
                int patientUserID = patient.UserID;
                ViewData["patientId"] = patientID;
                TreatmentPlanBll bll = new TreatmentPlanBll();
                Expression<Func<TreatmentPlan, bool>> filter = PredicateBuilder.True<TreatmentPlan>();
                filter = p => p.PatientID == patientID ;//&& p.UserId == UserID;
                if (!string.IsNullOrWhiteSpace(strKeyword))
                {
                    DateTime stime = Converter.ToDateTime(strKeyword, DateTime.MinValue);
                    filter = filter.And(p => p.Patient.Site.SiteName.Contains(strKeyword) || p.Status.Contains(strKeyword) || (p.LastModifiedTime.Value.CompareTo(stime) == 0));
                }
                IPagedList<TreatmentPlan> list = new PagedList<TreatmentPlan>(null, 1, 12);
                if (UserID == patientUserID)
                {
                    list = bll.GetPagedTreatmentPlanList(id ?? 1, 10, filter);
                }
                else {
                    list = bll.GetSharedTreatmentPlans(UserID, patientID, id ?? 1, 12, filter);
                }

                return PartialView("UcTreatmentPlansList", list);
            }
            catch (Exception ex)
            {
                LogHelper.ErrorToDb("TreatmentPlan", "TreatmentPlanPagedList", ex);
                return PartialView("Error");
            }
        }
        /// <summary>
        /// 业务规则：treatmentPlan new 以前的全部变成Archived
        /// </summary>
        /// <param name="forms"></param>
        /// <returns></returns>
        public ActionResult Create(FormCollection forms)
        {
            TreatmentPlan treatmentPlan = new TreatmentPlan();
            int patientID = Int32.Parse(forms["patientID"]);
            int ClusterID = Int32.Parse(forms["ClusterID"]);
            treatmentPlan.PatientID = patientID;
            treatmentPlan.Status = "In development";
            treatmentPlan.CreateTime = DateTime.Now;
            treatmentPlan.UserId = UserID;
            treatmentPlan.LastModifiedTime = DateTime.Now;
            treatmentPlan.ClusterID = ClusterID;
            treatmentPlan.IsValid = true;
            
            try
            {
                TreatmentPlanBll bll = new TreatmentPlanBll();
                List<TreatmentPlan> treatmentPlanStatusList = (List<TreatmentPlan>)bll.Find(t => t.PatientID == patientID);
                //Expression<Func<TreatmentPlan, bool>> filter = PredicateBuilder.True<TreatmentPlan>();
                foreach (TreatmentPlan treatmentPlan2 in treatmentPlanStatusList)
                {
                    treatmentPlan2.Status = "Archived";
                }
                if (bll.Add(treatmentPlan, treatmentPlanStatusList) > 0)
                {
                    return RedirectToAction("UpdateItem", "TreatmentPlan", new { id = treatmentPlan.TreatmentPlanID, PatientID = patientID });
                }
                else
                {
                    ModelState.AddModelError("ErrorMsg", "Create failure.");
                }

                //return PartialView("UcTreatmentPlansList", list);
            }
            catch (Exception ex)
            {
                String message = ex.InnerException.Message;
                //return PartialView("Error");
            }
            return View(treatmentPlan);
        }


        /// <summary>
        /// 显示cluster或processGuide的标题
        /// </summary>
        /// <returns></returns>
        public ActionResult DisplayTitle()
        {
            try
            {
                string strIDs = Request.QueryString["currentID"];
                ClusterBll clusterBll = new ClusterBll();
                ProcessGuideBll processGuideBll = new ProcessGuideBll();
                Cluster cluster = new Cluster();
                ProcessGuide processGuide = new ProcessGuide();
                string[] ids = strIDs.Split(new Char[] { '_' });
                string type = ids[0];
                int id = Converter.ToInt(ids[1], 0);
                string title = string.Empty;
                if (type == "cluster")
                {
                    cluster = clusterBll.GetClusterByID(id);
                    title = cluster.Title;
                }
                if (type == "processGuide")
                {
                    processGuide = processGuideBll.GetProcessGuideByID(id);
                    title = processGuide.Title;
                }

                ViewData["title"] = title;
                return PartialView("DisplayTitle");
            }
            catch (Exception ex)
            {
                LogHelper.ErrorToDb("TreatmentPlan", "DisplayTitle", ex);
                throw new Exception(ex.Message);
            }
        }

        /// <summary>
        /// 显示PDF连接列表
        /// </summary>
        /// <returns></returns>
        public ActionResult DisplayClusterDocsLinks()
        {
            try
            {
                string strIDs = Request.QueryString["currentID"];
                ClusterBll clusterBll = new ClusterBll();
                string[] ids = strIDs.Split(new Char[] { '_' });
                int id = Converter.ToInt(ids[1], 0);
                Cluster cluster = clusterBll.GetClusterByID(id);
                if (cluster == null) cluster = new Cluster();
                return PartialView("DisplayClusterDocsLinks", cluster);
            }
            catch (Exception ex)
            {
                LogHelper.ErrorToDb("TreatmentPlan", "DisplayClusterDocsLinks", ex);
                throw new Exception(ex.Message);
            }
        }


        /// <summary>
        /// 打开PDF的Action
        /// </summary>
        /// <returns></returns>
        public ActionResult DisplayClusterDocs()
        {
            string docName = Request.QueryString["docName"];
            //string docDir = Request.QueryString["docDir"];
            try
            {
                if (!string.IsNullOrEmpty(docName))
                {
                    //string doc = AppDomain.CurrentDomain.BaseDirectory + "Views\\TreatmentPlan\\ClusterDocs\\" + docDir + "\\" + docName + ".pdf";
                    string doc = AppDomain.CurrentDomain.BaseDirectory + "Views\\TreatmentPlan\\ClusterDocs\\" + docName;
                    if (System.IO.File.Exists(doc))
                    {
                        HttpContext.Response.AddHeader("content-disposition", "inline; filename=" + docName + ".pdf");
                        return File(new FileStream(doc, FileMode.Open), "appliction/pdf");
                    }
                    throw new Exception("This file does not exist");
                }                
                throw new Exception("Parameters is invalid");
            }
            catch (Exception ex)
            {
                LogHelper.ErrorToDb("TreatmentPlan", "DisplayClusterDocs", ex);
                return Content(ex.Message);
            }
        }
        /// <summary>
        /// 
        /// </summary>
        /// <param name="id">病患ID:patientId</param>
        /// <returns></returns>
        public ActionResult TreatmentPlanInfo(int id, int patientID)
        {           
            try
            {
                PatientBll patientBll=new PatientBll();
                Patient patient = patientBll.GetPatientByID(patientID);
                bool read, download, write,isOwner;
                Permission.TreatmentPlanPermission(UserID, id, out read, out download, out write,out isOwner);
                if (!read)
                    return PartialView("NoAuthorize");
                
                ViewData["Write"] = write;
                ViewData["IsOwner"] = isOwner;
                ViewData["UserTypeID"] = UserTypeID;
                ViewData["ClientFirstName"] = patient.FirstName;
                TreatmentPlanBll treatmentPlanBll = new TreatmentPlanBll();
                TreatmentPlan treatmentPlan = treatmentPlanBll.GetModelByKey(id, "TreatmentPlanID");
                return View(treatmentPlan);
            }
            catch (Exception ex)
            {
                LogHelper.ErrorToDb("TreatmentPlan", "TreatmentPlanInfo", ex);
                return PartialView("Error");
            }
        }

        public String UpdateStatus(int id, int patientID, int treatmentPlanID)
        {
            bool read, download, write,isOwner;
            Permission.TreatmentPlanPermission(UserID, treatmentPlanID, out read, out download, out write,out isOwner);
            if (!write)
                return "Sorry,You may not have permission to perform this operation.";

            String message = "";
            TreatmentPlanBll treatmentPlanBll = new TreatmentPlanBll();
            TreatmentPlan treatmentPlan = treatmentPlanBll.GetModelByKey(treatmentPlanID, "TreatmentPlanID");

            switch (id)
            {
                case 1: if (!treatmentPlan.Status.Equals("Archived")) treatmentPlan.Status = "Send for approval"; break;
                case 2: if (!treatmentPlan.Status.Equals("Archived")) treatmentPlan.Status = "Active"; break;
                case 3: if (!treatmentPlan.Status.Equals("Archived")) treatmentPlan.Status = "Archived"; break;
                default:
                    break;
            }
            if (treatmentPlanBll.Update(treatmentPlan))
            {
                message = "TreatmentPlan Status Update Successfully";
            }
            else
            {
                message = "TreatmentPlan Status Update Failure";
            }
            return message;
        }
        public String ObjectiveAnswerContent(int id)
        {
            TreatmentPlanBll treatmentPlanBll = new TreatmentPlanBll();
            TreatmentPlan treatmentPlan = treatmentPlanBll.GetModelByKey(id, "TreatmentPlanID");
            return treatmentPlan.ObjectiveAnswer;
        }


        private Dictionary<string, string> ObjectiveAnswerList = new Dictionary<string, string>();
        public ActionResult PrintTreatmentPlant()
        {
            try
            {
                int patientID = Convert.ToInt32(Request.QueryString["patientID"]);
                int TreatmentPlanID = Convert.ToInt32(Request.QueryString["tpid"]);
                PatientBll patientBll = new PatientBll();
                Patient patient = patientBll.GetPatientByID(patientID);
                TreatmentPlanItemModel model = new TreatmentPlanItemModel();
                TreatmentPlan treatmentplan = model.GetTreatmentPlan(TreatmentPlanID);


                string ClientName = patient.FirstName;//Session["ClientName"] != null ? Session["ClientName"].ToString() : string.Empty;
                string folder = AppDomain.CurrentDomain.BaseDirectory + "ClientFiles\\" + patientID + "\\Treatment Plan\\";
                string filename = patient.GRID + "-" + TreatmentPlanID.ToString() + "-" + treatmentplan.CreateTime.Value.ToString("yyyy_MM_dd");
                if (!Directory.Exists(folder)) {
                    Directory.CreateDirectory(folder);
                }

                string strPath = folder + filename;

                CreatePdf Pdf = new CreatePdf(strPath, false);
                Pdf.Document.Open();

                Paragraph Ttile1 = new Paragraph("Date Created:" + treatmentplan.CreateTime.Value.ToString("MM/dd/yyyy"), Pdf.BaseFontAndSize(0, 8, "000000", Font.BOLD));
                Ttile1.Alignment = 2;
                Pdf.Document.Add(Ttile1);
                Paragraph Ttile2 = new Paragraph("Treatment Plan", Pdf.BaseFontAndSize(0, 14, "000000", Font.BOLD));
                Ttile2.Alignment = 1;
                Pdf.Document.Add(Ttile2);

                string[] subObjectiveAnswer = treatmentplan.ObjectiveAnswer.Substring(0, treatmentplan.ObjectiveAnswer.Length - 4).Split(',');
                foreach (string subString in subObjectiveAnswer)
                {
                    string[] strSplit = subString.Split(':');
                    if (strSplit.Length > 1)
                    {
                        ObjectiveAnswerList.Add(strSplit[0], strSplit[1]);
                    }
                }
                int symptomCount = 1;
                IList<Symptom> SymptomItem = model.GetSymptomList(TreatmentPlanID);
                foreach (var symptom in SymptomItem)
                {
                    if (symptom == null) continue;

                    Paragraph symptomNum = new Paragraph(string.Format(strSymptom, symptomCount++), Pdf.BaseFontAndSize(0, 12, "000000", Font.BOLD));
                    Paragraph symptomTitle = new Paragraph(model.replaceClientName(symptom.Title, ClientName), Pdf.BaseFontAndSize(0, 8, "000000", Font.NORMAL));
                    symptomTitle.IndentationLeft = 15;
                    Pdf.Document.Add(symptomNum);
                    Pdf.Document.Add(symptomTitle);
                    int LongTermGoalCount = 1;
                    IList<LongTermGoal> LongTermGoalListItem = model.GetLongTermGoalList(TreatmentPlanID, symptom.SymptomID);
                    foreach (var longTermGol in LongTermGoalListItem)
                    {
                        if (longTermGol == null) continue;
                        Paragraph longTermGolNum = new Paragraph(string.Format(strLongTermGoal, symptomCount - 1 + "." + LongTermGoalCount++), Pdf.BaseFontAndSize(0, 12, "000000", Font.BOLD));
                        Paragraph longTermGolTitle = new Paragraph(model.replaceClientName(longTermGol.Title, ClientName), Pdf.BaseFontAndSize(0, 8, "000000", Font.NORMAL));
                        longTermGolNum.IndentationLeft = 30;
                        longTermGolTitle.IndentationLeft = 45;
                        Pdf.Document.Add(longTermGolNum);
                        Pdf.Document.Add(longTermGolTitle);
                        int objectiveCount = 1;
                        IList<ObjectiveModel> ObjectiveItem = model.GetObjectiveList(TreatmentPlanID, symptom.SymptomID, longTermGol.LongTermGoalID);
                        foreach (var Item in ObjectiveItem)
                        {
                            Objective objective = model.GetObjective(Item.ObjectiveID);
                            if (objective == null) continue;
                            string strIdName = "insourcia" + symptom.SymptomID + longTermGol.LongTermGoalID + objective.ObjectiveID;
                            Paragraph objectiveNum = new Paragraph(string.Format(strObjective, (symptomCount - 1) + "." + (LongTermGoalCount - 1) + "." + objectiveCount++), Pdf.BaseFontAndSize(0, 12, "000000", Font.BOLD));
                            Paragraph objectiveTitle = new Paragraph(MatchValue(strIdName, model.replaceClientName(objective.Title, ClientName)), Pdf.BaseFontAndSize(0, 8, "000000", Font.NORMAL));
                            objectiveNum.IndentationLeft = 60;
                            objectiveTitle.IndentationLeft = 75;
                            Pdf.Document.Add(objectiveNum);
                            Pdf.Document.Add(objectiveTitle);
                            int StrategyCount = 1;
                            IList<Strategy> StrategyItem = model.GetStrategyList(TreatmentPlanID, symptom.SymptomID, longTermGol.LongTermGoalID, Item);
                            foreach (var strategy in StrategyItem)
                            {
                                if (strategy == null) continue;
                                Paragraph strategyNum = new Paragraph(string.Format(strStrategy, (symptomCount - 1) + "." + (LongTermGoalCount - 1) + "." + (objectiveCount - 1) + "." + StrategyCount++), Pdf.BaseFontAndSize(0, 12, "000000", Font.BOLD));
                                Paragraph strategyTitle = new Paragraph( model.replaceClientName(strategy.Title, ClientName), Pdf.BaseFontAndSize(0, 8, "000000", Font.NORMAL));
                                strategyNum.IndentationLeft = 90;
                                strategyTitle.IndentationLeft = 106;
                                Pdf.Document.Add(strategyNum);
                                Pdf.Document.Add(strategyTitle);
                            }
                        }
                    }
                }

                Paragraph Ttile3 = new Paragraph("----------------------------------------------------------------------------------------------Signatures--------------------------------------------------------------------------------------------", Pdf.BaseFontAndSize(0, 8, "000000", Font.BOLD));
                Ttile3.Alignment = 1;
                Ttile3.Leading = 50;
                Pdf.Document.Add(Ttile3);

                Table dTable = new Table(2);
                dTable.Width = 90;
                dTable.DefaultCellBorder = 0;
                dTable.Border = 0;
                
                dTable.AddCell(new Phrase("_____________________________", Pdf.BaseFontAndSize(0, 8, "000000", Font.BOLD)));
                dTable.AddCell(new Phrase("_____________________________", Pdf.BaseFontAndSize(0, 8, "000000", Font.BOLD)));
                dTable.AddCell(new Phrase("Therapist with Printed Name", Pdf.BaseFontAndSize(0, 8, "000000", Font.BOLD)));
                dTable.AddCell(new Phrase("Client with Printed Name", Pdf.BaseFontAndSize(0, 8, "000000", Font.BOLD)));
                dTable.AddCell(new Phrase("_____________________________", Pdf.BaseFontAndSize(0, 8, "000000", Font.BOLD)));
                dTable.AddCell(new Phrase("   "));
                dTable.AddCell(new Phrase("Required Approver", Pdf.BaseFontAndSize(0, 8, "000000", Font.BOLD)));
               
                Pdf.Document.Add(dTable);

                Pdf.Document.Close();


                HttpContext.Response.AddHeader("content-disposition", "inline; filename=" + filename + ".pdf");
                return File(new FileStream(strPath + ".pdf", FileMode.Open), "appliction/pdf");//生成图片之后再插进去
            }
            catch (Exception ex)
            {
                LogHelper.ErrorToDb("TreatmentPlan", "PrintTreatmentPlant", ex);
                return PartialView("Error");
            }
            
        }

        private static string GetPageData(string url)
        {
            if (url == null || url.Trim() == "")
                return null;
            WebClient wc = new WebClient();
            wc.Credentials = CredentialCache.DefaultCredentials;
            Byte[] pageData = wc.DownloadData(url);
            return Encoding.Default.GetString(pageData);//.ASCII.GetString
        }

        public string GetDuration(string strID, Objective objective)
        {
            string result = string.Empty;
            if ((string.IsNullOrEmpty(objective.EndValue) && string.IsNullOrEmpty(objective.StartValue) && string.IsNullOrEmpty(objective.Measure))) { return result; }
            decimal value = (Decimal)((Decimal.Parse(objective.EndValue) - Decimal.Parse(objective.StartValue)) / objective.Space);
            result = "Duration:" + value + objective.Measure;
            return result;
        }
        #endregion

        private string MatchValue(string strIdName,string OriginalValue)
        {
             //正则表达式
            string tmpStr = string.Empty;
            //获取Html标签Name值;
            tmpStr = "<(select|input|span)[^<>]+name\\s*=\\s*(\"|')(?<name>\\w*)(\"|')\\s*[^<>]*>(.|\\s)*?<\\s*/\\s*\\1\\s*>";
            Regex r1 = new Regex(tmpStr, RegexOptions.IgnoreCase | RegexOptions.Multiline);
          string newValue= r1.Replace(OriginalValue, delegate(Match titleMatch) { 
                //取出匹配项的值
                string tmpStrTitle =strIdName+ titleMatch.Groups["name"].Value;
                if (ObjectiveAnswerList.ContainsKey(tmpStrTitle))
                {
                    return ObjectiveAnswerList[tmpStrTitle];
                }
                return " "; 
            });


          return newValue;
        }

        #region TreatmentPlanItem
        public ActionResult UpdateItem(int id, int patientID)
        {
            try
            {
                bool read, download, write,isOwner;
                Permission.TreatmentPlanPermission(UserID, id, out read, out download, out write,out isOwner);
                if (!write)
                    return PartialView("NoAuthorize");
                TreatmentPlanBll treatmentPlanBll = new TreatmentPlanBll();
                TreatmentPlan treatmentPlan = treatmentPlanBll.GetModelByKey(id, "TreatmentPlanID");
                PatientBll patientBll=new PatientBll();
                Patient patient = patientBll.GetPatientByID(patientID);
                ViewData["action"] = "Update";
                ViewData["ClientFirstName"] = patient.FirstName;
                return View(treatmentPlan);
            }
            catch (Exception ex)
            {
                LogHelper.ErrorToDb("TreatmentPlan", "UpdateItem", ex);
                return PartialView("Error");
            }
        }

        [HttpPost]
        public ActionResult UpdateItem(FormCollection forms)
        {
            try
            {
                int patientID = HttpRequestUtils.FormInt("patientID",0);
                int TreatmentPlanID =HttpRequestUtils.FormInt("TreatmentPlanID",0);
                bool read, download, write,isOwner;
                Permission.TreatmentPlanPermission(UserID, TreatmentPlanID, out read, out download, out write,out isOwner);
                if (!write)
                    return PartialView("NoAuthorize");
                TreatmentPlanItemBll treatmentPlanItemBll = new TreatmentPlanItemBll();
                TreatmentPlanBll treatmentPlanBll = new TreatmentPlanBll();
                String insourciaObjectiveString = "[";

                
                TreatmentPlan treatmentPlan = treatmentPlanBll.GetModelByKey(TreatmentPlanID, "TreatmentPlanID");
                List<TreatmentPlanItem> planItemAddList = new List<TreatmentPlanItem>();
                List<TreatmentPlanItem> planItemDelList = (List<TreatmentPlanItem>)treatmentPlanItemBll.Find(c => c.TreatmentPlanID == TreatmentPlanID);
                TreatmentPlanItem treatmentPlanItem = null;
                foreach (var item in forms.AllKeys)
                {
                    if (item.StartsWith("Item_"))
                    {
                        treatmentPlanItem = new TreatmentPlanItem();
                        treatmentPlanItem.TreatmentPlanID = TreatmentPlanID;
                        treatmentPlanItem.LastModifiedTime = DateTime.Now;
                        treatmentPlanItem.CreateTime = DateTime.Now;
                        treatmentPlanItem.SymptomID = -1;
                        treatmentPlanItem.LongTermGoalID = -1;
                        treatmentPlanItem.ObjectiveID = -1;
                        treatmentPlanItem.StrategyID = -1;
                        string value = forms[item].ToString();
                        string[] strValue = value.Split(',');
                        int length = strValue.Length;
                        if (length >= 1)
                        {
                            treatmentPlanItem.SymptomID = Int32.Parse(strValue[0]);
                        }
                        else
                        {
                            continue;
                        }
                        if (length >= 2)
                        {
                            treatmentPlanItem.LongTermGoalID = Int32.Parse(strValue[1]);
                        }
                        if (length >= 3)
                        {
                            string ObjectiveId = "insourcia" + strValue[0] + strValue[1] + strValue[2];
                            IEnumerable<string> ObjectiveList = forms.AllKeys.Where(s => s.StartsWith(ObjectiveId));
                            if (ObjectiveList.Count() > 0)
                            {
                                for (int i = 0; i < ObjectiveList.Count(); i++)
                                {
                                    string ObjectiveName = ObjectiveList.ElementAt(i);
                                    if (!string.IsNullOrEmpty(ObjectiveName) && ObjectiveName.Length > ObjectiveId.Length)
                                    {
                                        treatmentPlanItem.Count = forms[ObjectiveName];
                                    }
                                    else if (!string.IsNullOrEmpty(ObjectiveName) && ObjectiveName.Length == ObjectiveId.Length)
                                    {
                                        treatmentPlanItem.Measure = forms[ObjectiveName];
                                    }
                                }
                                
                            }
                            treatmentPlanItem.ObjectiveID = Int32.Parse(strValue[2]);
                        }
                        if (length >= 4)
                        {
                            treatmentPlanItem.StrategyID = Int32.Parse(strValue[3]);
                        }
                        planItemAddList.Add(treatmentPlanItem);
                    }
                    else if (item.StartsWith("insourcia"))
                    {
                        insourciaObjectiveString += item + ":" + forms[item] + ",";
                    }
                }
                if (insourciaObjectiveString != "[")
                {
                    treatmentPlan.ObjectiveAnswer = insourciaObjectiveString + "];";
                }
                else
                {
                    treatmentPlan.ObjectiveAnswer = null;
                }
                if (treatmentPlanItemBll.UpdateMutil(planItemAddList, planItemDelList, treatmentPlan) > 0)
                {

                    return JsonModel.CreateJsonResult(true,"The treatment plan has been sucessfully saved.");
                }
                else
                {
                    return JsonModel.CreateJsonResult(false, "The Treatment Plan was not saved sucessfully!");
                }
            }
            catch (Exception ex)
            {
                LogHelper.ErrorToDb("TreatmentPlan", "UpdateItem", ex);
                return JsonModel.CreateJsonResult(false, ex.Message);
            }
        }
        #endregion

        private const string symptom = "";

        #region ClientcalService

        /// <summary>
        /// 临床服务列表的Action
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public ActionResult ClintcalService(int? id)
        {
            try
            {
                int patientID = HttpRequestUtils.QueryInt("patientID", 0);
                int tpid = Converter.ToInt(Request.QueryString["tpid"], 0);
                if (tpid == 0) return PartialView("Error");
                bool read, download, write,isOwner;
                Permission.TreatmentPlanPermission(UserID, tpid, out read, out download, out write,out isOwner);
                if (!read)
                    return PartialView("NoAuthorize");
                ViewData["Write"] = write;

                ClintcalServiceBll clinicalserviceBll = new ClintcalServiceBll();
                Expression<Func<ClinicalService, bool>> filter = PredicateBuilder.True<Insourcia.Psychotherapy.Model.ClinicalService>();
                filter = c => c.TreatmentPlanID == tpid;
                IPagedList<Insourcia.Psychotherapy.Model.ClinicalService> list = clinicalserviceBll.GetPagedFileList(id ?? 1, 12, filter);
                return View(list);
            }
            catch (Exception ex)
            {
                LogHelper.ErrorToDb("TreatmentPlan", "ClintcalService", ex);
                return PartialView("Error:"+ex.Message); 
            }

        }

        /// <summary>
        /// 临床服务列表分页和搜索请求的Action
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public ActionResult ClintcalServicePagedList(int? id)
        {
            int tpid = Converter.ToInt(Request.QueryString["tpid"], 0);
            if (tpid == 0) return PartialView("Error");
            string strKeyword = HttpRequestUtils.GetString("keyword", string.Empty);
            try
            {
                if (tpid == 0) return PartialView("Error");
                bool read, download, write, isOwner;
                Permission.TreatmentPlanPermission(UserID, tpid, out read, out download, out write, out isOwner);
                if (!read)
                    return PartialView("NoAuthorize");
                ClintcalServiceBll clinicalserviceBll = new ClintcalServiceBll();
                Expression<Func<ClinicalService, bool>> filter = PredicateBuilder.True<Insourcia.Psychotherapy.Model.ClinicalService>();
                filter = c => c.TreatmentPlanID == tpid;
                if (!string.IsNullOrWhiteSpace(strKeyword))
                {
                    //filter = filter.And(c => c..Contains(strKeyword));
                }
                IPagedList<Insourcia.Psychotherapy.Model.ClinicalService> list = clinicalserviceBll.GetPagedFileList(id ?? 1, 12, filter);
                return PartialView("UcFiles", list);
            }
            catch (Exception ex)
            {
                LogHelper.ErrorToDb("TreatmentPlan", "ClintcalServicePagedList", ex);
                return PartialView("Error"); 
            }
        }

        public ActionResult NewClintcalService()
        {
            try
            {
                int patientID = Convert.ToInt32(Request.QueryString["patientID"]);
                int treatmentPlanID = HttpRequestUtils.QueryInt("tpid");
                #region Permission
                bool read, download, write,isOwner;
                Permission.TreatmentPlanPermission(UserID, treatmentPlanID, out read, out download, out write,out isOwner);
                if (!write)
                    return PartialView("NoAuthorize");
                #endregion
                PatientBll bll = new PatientBll();
                Patient patient = bll.GetPatientByID(patientID);
                if (patient == null) return PartialView("Error");
                ViewData["GRID"] = patient.GRID;
                ViewData["ClientFirstName"] = patient.FirstName;
                return View();
            }
            catch (Exception ex)
            {
                LogHelper.ErrorToDb("TreatmentPlan", "NewClintcalService", ex);
                throw new Exception(ex.Message);
            }
        }

        [HttpPost]
        public ActionResult NewClintcalService(FormCollection forms, ClinicalService clinicalservice)
        {

            try
            {
                if (!clinicalservice.TreatmentPlanID.HasValue)
                    return JsonModel.CreateJsonResult(false, "Error occured when collecting parameter");
                #region Permission
                bool read, download, write,isOwner;
                Permission.TreatmentPlanPermission(UserID, clinicalservice.TreatmentPlanID??0, out read, out download, out write,out isOwner);
                if (!write)
                    return PartialView("NoAuthorize");
                #endregion
                ClintcalServiceBll bll = new ClintcalServiceBll();
                clinicalservice.IsValid = true;
                clinicalservice.LastModifiedTime = DateTime.Now;

                if (bll.Add(clinicalservice))
                {
                    ClinicalServiceDiagnosisBll CSDBll = new ClinicalServiceDiagnosisBll();
                    foreach (var key in forms.AllKeys)
                    {
                        if (key.Contains("ObjectiveIsWorkedOn") || key.Contains("StrategyIsWorkdeOn"))
                        {
                            ClinicalServiceDiagnosi clinicalservicediagnosi = new ClinicalServiceDiagnosi();

                            clinicalservicediagnosi.ClinicalServiceID = clinicalservice.ClinicalServiceID;
                            clinicalservicediagnosi.TreatmentPlanID = clinicalservice.TreatmentPlanID;
                            clinicalservicediagnosi.IsValid = true;
                            clinicalservicediagnosi.CreateTime = DateTime.Now;
                            clinicalservicediagnosi.LastModifiedTime = DateTime.Now;

                            string pANDa_Value = forms[key];
                            string pANDa_Name = key.Split('_')[0];
                            string pANDa_IDs = key.Split('_')[1];

                            clinicalservicediagnosi.SymptomID = Convert.ToInt32(pANDa_IDs.Split(',')[0]);
                            clinicalservicediagnosi.LongTermGoalID = Convert.ToInt32(pANDa_IDs.Split(',')[1]);
                            clinicalservicediagnosi.ObjectiveID = Convert.ToInt32(pANDa_IDs.Split(',')[2]);


                            if (pANDa_Name == "ObjectiveIsWorkedOn")
                            {
                                clinicalservicediagnosi.ObjectiveIsWorkedOn = forms["ObjectiveIsWorkedOn_" + pANDa_IDs] == "Yes" ? true : false;
                                clinicalservicediagnosi.ObjectiveIsComplete = forms["ObjectiveIsComplete_" + pANDa_IDs] == "Yes" ? true : false;
                            }
                            if (pANDa_Name == "StrategyIsWorkdeOn")
                            {
                                clinicalservicediagnosi.StrategyID = Convert.ToInt32(pANDa_IDs.Split(',')[3]);
                                clinicalservicediagnosi.StrategyIsWorkdeOn = pANDa_Value == "Yes" ? true : false;
                            }

                            CSDBll.Add(clinicalservicediagnosi);

                        }
                    }

                    return JsonModel.CreateJsonResult(true, "Create success");
                }
                else
                {
                    return JsonModel.CreateJsonResult(false, "Save failed");
                }
            }
            catch (Exception ex)
            {
                LogHelper.ErrorToDb("TreatmentPlan", "NewClintcalService", ex);
                return JsonModel.CreateJsonResult(false, ex.Message);
            }
        }


        /// <summary>
        /// 显示临床服务的信息的Action
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public ActionResult ClintcalServiceInfo(int id)
        {
            try
            {
                int treatmentPlanID = HttpRequestUtils.QueryInt("tpid", 0);
                int patientID = Convert.ToInt32(Request.QueryString["patientID"]);

                #region Permission
                bool read, download, write,isOwner;
                Permission.TreatmentPlanPermission(UserID, treatmentPlanID, out read, out download, out write,out isOwner);
                if (!read)
                    return PartialView("NoAuthorize");
                #endregion

                ClintcalServiceBll bll = new ClintcalServiceBll();
                Insourcia.Psychotherapy.Model.ClinicalService model = bll.GetModelByKey(id, "ClinicalServiceID");
                ViewData["ClinicalService"] = model;

                ClinicalServiceDiagnosisBll CSDbll = new ClinicalServiceDiagnosisBll();
                IList<ClinicalServiceDiagnosi> CSDlist = CSDbll.GetListByClinicalServiceID(model.ClinicalServiceID);
                string strJSON1 = DataIsSet.ObjectToJson<ClinicalServiceDiagnosi>("CSDJson", CSDlist);
                ViewData["ClinicalServiceDiagnosisItem"] = strJSON1;

                ClinicalServiceNoteRateBll CSNRbll = new ClinicalServiceNoteRateBll();
                IList<ClinicalServiceNoteRate> CSNRlist = CSNRbll.GetListByClinicalServiceID(model.ClinicalServiceID);
                string strJSON2 = DataIsSet.ObjectToJson<ClinicalServiceNoteRate>("CSNRJson", CSNRlist);
                ViewData["ClinicalServiceNoteRateCount"] = CSNRlist.Count();
                ViewData["ClinicalServiceNoteRateItem"] = strJSON2;

                PatientBll patientBll = new PatientBll();
                Patient patient = patientBll.GetPatientByID(patientID);
                ViewData["ClientFirstName"] = patient.FirstName;

                return View();
            }
            catch (Exception ex)
            {
                LogHelper.ErrorToDb("TreatmentPlan", "NewClintcalService", ex);
                return PartialView("Error");
            }

        }

        [HttpPost]
        public ActionResult NewRating(FormCollection forms)
        {
            try
            {
                int treatmentplanID = Convert.ToInt32(Request.QueryString["treatmentplanID"]);
                int ClinicalServiceID = Convert.ToInt32(Request.QueryString["clinicalserviceID"]);

                #region Permission
                bool read, download, write,isOwner;
                Permission.TreatmentPlanPermission(UserID, treatmentplanID, out read, out download, out write,out isOwner);
                if (!write)
                    return PartialView("NoAuthorize"); 
                #endregion

                string[] IDs = forms["symptomIDs"].Split(',');
                ClinicalServiceNoteRateBll CSNRbll = new ClinicalServiceNoteRateBll();

                for (int i = 0; i < IDs.Length - 1; i++)
                {
                    ClinicalServiceNoteRate CSNR = new ClinicalServiceNoteRate();
                    CSNR.TreatmentPlanID = treatmentplanID;
                    CSNR.ClinicalServiceID = ClinicalServiceID;
                    CSNR.symptomId = Convert.ToInt32(IDs[i]);
                    CSNR.clientRate = forms["Client_" + IDs[i]];
                    CSNR.therapistRate = forms["Therapist_" + IDs[i]];
                    CSNR.isValid = true;
                    CSNR.createTime = DateTime.Now;
                    CSNRbll.Add(CSNR);
                }
                return JsonModel.CreateJsonResult(true, "Submit success!");
            }
            catch (Exception ex)
            {
                LogHelper.ErrorToDb("TreatmentPlan", "NewRating", ex);
                return JsonModel.CreateJsonResult(false, "Submit failure:" + ex.Message);
            }
        }


        public ActionResult PrintClintcalService(int id)
        {
            try
            {
                ClintcalServiceBll csBll = new ClintcalServiceBll();
                Insourcia.Psychotherapy.Model.ClinicalService clintcalservice = csBll.GetModelByKey(id, "ClinicalServiceID");

                ClinicalServiceDiagnosisBll CSDbll = new ClinicalServiceDiagnosisBll();
                IList<ClinicalServiceDiagnosi> CSDlist = CSDbll.GetListByClinicalServiceID(clintcalservice.ClinicalServiceID);

                int patientID = Convert.ToInt32(Request.QueryString["patientID"]);
                PatientBll patientBll = new PatientBll();
                Patient patient = patientBll.GetPatientByID(patientID);
                string ClientName = patient.FirstName;
                int TreatmentPlanID = Convert.ToInt32(Request.QueryString["tpid"]);
                string folder = AppDomain.CurrentDomain.BaseDirectory + "ClientFiles\\" + patientID + "\\Clinical Service\\";
                string filename = patient.GRID + "-" + TreatmentPlanID + "-" + id + "-" + clintcalservice.CreateTime.Value.ToString("yyyy_MM_dd");
                
                if (!Directory.Exists(folder))
                {
                    Directory.CreateDirectory(folder);
                }

                string Path = folder + filename;

                #region 生成Pdf
                CreatePdf Pdf = new CreatePdf(Path, false);

                Pdf.Document.Open();

                //添加一个页面
                Pdf.Document.NewPage();

                Paragraph Ttile1 = new Paragraph("RiverValley Behavioral Health", Pdf.BaseFontAndSize(0, 12, "000000", Font.BOLD));
                Ttile1.Alignment = 1;
                Pdf.Document.Add(Ttile1);
                Paragraph Ttile2 = new Paragraph("Clinical Service Note", Pdf.BaseFontAndSize(0, 12, "000000", Font.BOLD));
                Ttile2.Alignment = 1;
                Pdf.Document.Add(Ttile2);


                Table aTable = new Table(2, 4);
                aTable.Width = 100;
                aTable.AutoFillEmptyCells = true;
                aTable.BorderColor = new Color(255, 255, 255);
                aTable.Padding = 3;
                aTable.Border = 0;

                aTable.AddCell(new Phrase("GRID#:" + clintcalservice.GRID, Pdf.BaseFontAndSize(0, 8, "000000", Font.BOLD)));
                aTable.AddCell(new Phrase("Client Name:" + clintcalservice.ClientName, Pdf.BaseFontAndSize(0, 8, "000000", Font.BOLD)));
                aTable.AddCell(new Phrase("Prof#:" + clintcalservice.Prof, Pdf.BaseFontAndSize(0, 8, "000000", Font.BOLD)));
                aTable.AddCell(new Phrase("Prof Name:" + clintcalservice.ProfName, Pdf.BaseFontAndSize(0, 8, "000000", Font.BOLD)));
                aTable.AddCell(new Phrase("Date and Time of Service:" + (clintcalservice.CreateTime.HasValue ? clintcalservice.CreateTime.Value.ToShortDateString() : string.Empty), Pdf.BaseFontAndSize(0, 8, "000000", Font.BOLD)));
                aTable.AddCell(new Phrase("Cost Center:" + clintcalservice.CostCenter, Pdf.BaseFontAndSize(0, 8, "000000", Font.BOLD)));
                aTable.AddCell(new Phrase("Scheduled Service:" + clintcalservice.ScheduledService, Pdf.BaseFontAndSize(0, 8, "000000", Font.BOLD)));
                Pdf.Document.Add(aTable);

                #region 添加Item
                TreatmentPlanItemModel model = new TreatmentPlanItemModel();
                TreatmentPlan treatmentplan = model.GetTreatmentPlan(TreatmentPlanID);
                string[] subObjectiveAnswer = treatmentplan.ObjectiveAnswer.Substring(1, treatmentplan.ObjectiveAnswer.Length - 4).Split(',');
                foreach (string subString in subObjectiveAnswer)
                {
                    string[] strSplit = subString.Split(':');
                    if (strSplit.Length > 1)
                    {
                        ObjectiveAnswerList.Add(strSplit[0], strSplit[1]);
                    }
                }
                Table table = new Table(3);
                table.Width = 100;
                table.Border = 0;
                table.SetWidths(new int[] { 70, 15, 15 });
                //table.DefaultCellBorder = 0;
                table.Cellpadding = 3;
                table.AutoFillEmptyCells = true;
                Cell cell;
                
                int symptomCount = 1;
                IList<Symptom> SymptomItem = model.GetSymptomList(TreatmentPlanID);
                foreach (var symptom in SymptomItem)
                {
                    if (symptom == null) continue;

                    Title = string.Format(strSymptom, symptomCount++) + model.replaceClientName(symptom.Title, ClientName);
                    Paragraph st = new Paragraph(Title, Pdf.BaseFontAndSize(0, 8, "000000", Font.NORMAL));
                    cell= new Cell();
                    cell.Add(st);
                    table.AddCell(cell);
                    cell = new Cell();
                    table.AddCell(cell);
                    cell = new Cell();
                    table.AddCell(cell);
                    int LongTermGoalCount = 1;
                    IList<LongTermGoal> LongTermGoalListItem = model.GetLongTermGoalList(TreatmentPlanID, symptom.SymptomID);
                    foreach (var longTermGol in LongTermGoalListItem)
                    {
                        if (longTermGol == null) continue;
                        Title = string.Format(strLongTermGoal, symptomCount - 1 + "." + LongTermGoalCount++) + model.replaceClientName(longTermGol.Title, ClientName);
                        Paragraph ltg = new Paragraph(Title, Pdf.BaseFontAndSize(0, 8, "000000", Font.NORMAL));
                        ltg.IndentationLeft = 30;
                        
                        table.AddCell(ltg);
                        table.AddCell(cell);
                        table.AddCell(cell);
                        int objectiveCount = 1;
                        IList<ObjectiveModel> ObjectiveItem = model.GetObjectiveList(TreatmentPlanID, symptom.SymptomID, longTermGol.LongTermGoalID);
                        foreach (var Item in ObjectiveItem)
                        {
                            Objective objective = model.GetObjective(Item.ObjectiveID);
                            if (objective == null) continue;
                            string strIdName = "insourcia" + symptom.SymptomID + longTermGol.LongTermGoalID + objective.ObjectiveID;
                            Title = string.Format(strObjective, (symptomCount - 1) + "." + (LongTermGoalCount - 1) + "." + objectiveCount++) + MatchValue(strIdName, model.replaceClientName(objective.Title, ClientName)); 
                            Paragraph obt = new Paragraph(Title, Pdf.BaseFontAndSize(0, 8, "000000", Font.NORMAL));
                            obt.IndentationLeft = 60;
                            table.AddCell(obt);
                            ClinicalServiceDiagnosi CSD = ObjectiveIsOn(CSDlist, symptom.SymptomID, longTermGol.LongTermGoalID, objective.ObjectiveID);
                            string YesOrNo1 = CSD.ObjectiveIsWorkedOn.Value ? "Yes" : "No";
                            string YesOrNo2 = CSD.ObjectiveIsComplete.Value ? "Yes" : "No";
                            table.AddCell(new Phrase(string.Format(WorkedOn, YesOrNo1), Pdf.BaseFontAndSize(0, 8, "000000", Font.NORMAL)));
                            table.AddCell(new Phrase(string.Format(Complete, YesOrNo2), Pdf.BaseFontAndSize(0, 8, "000000", Font.NORMAL)));
                            int StrategyCount = 1;
                            IList<Strategy> StrategyItem = model.GetStrategyList(TreatmentPlanID, symptom.SymptomID, longTermGol.LongTermGoalID, Item);
                            foreach (var strategy in StrategyItem)
                            {
                                if (strategy == null) continue;
                                Title = string.Format(strStrategy, (symptomCount - 1) + "." + (LongTermGoalCount - 1) + "." + (objectiveCount - 1) + "." + StrategyCount++) + model.replaceClientName(strategy.Title, ClientName);
                                Paragraph sty = new Paragraph(Title, Pdf.BaseFontAndSize(0, 8, "000000", Font.NORMAL));
                                sty.IndentationLeft = 90;
                                table.AddCell(sty);
                                bool strategyIsWorkdeOn = StrategyIsWorkdeOn(CSDlist, symptom.SymptomID, longTermGol.LongTermGoalID, objective.ObjectiveID, strategy.StrategyID);
                                string YesOrNo3 = strategyIsWorkdeOn ? "Yes" : "No";
                                table.AddCell(new Phrase(string.Format(WorkedOn, YesOrNo3), Pdf.BaseFontAndSize(0, 8, "000000", Font.NORMAL)));
                                table.AddCell(cell);
                            }
                        }
                    }
                }
                Pdf.Document.Add(table);

                #endregion

                Table bTable = new Table(2, 4);
                bTable.Width = 100;
                bTable.AutoFillEmptyCells = true;
                bTable.DefaultCellBorder = 0;
                bTable.Border = 0;
                bTable.AddCell(new Phrase("Mood:" + clintcalservice.Mood, Pdf.BaseFontAndSize(0, 8, "000000", Font.BOLD)));
                bTable.AddCell(new Phrase("Affect:" + clintcalservice.Affect, Pdf.BaseFontAndSize(0, 8, "000000", Font.BOLD)));
                bTable.AddCell(new Phrase("Perceptions:" + clintcalservice.Perceptions, Pdf.BaseFontAndSize(0, 8, "000000", Font.BOLD)));
                bTable.AddCell(new Phrase("Speech:" + clintcalservice.Speech, Pdf.BaseFontAndSize(0, 8, "000000", Font.BOLD)));
                bTable.AddCell(new Phrase("Thought Processes:" + clintcalservice.ThoughtProcesses, Pdf.BaseFontAndSize(0, 8, "000000", Font.BOLD)));
                bTable.AddCell(new Phrase("Participat:" + clintcalservice.Participat, Pdf.BaseFontAndSize(0, 8, "000000", Font.BOLD)));
                bTable.AddCell(new Phrase("Sleep:" + clintcalservice.Sleep, Pdf.BaseFontAndSize(0, 8, "000000", Font.BOLD)));
                Pdf.Document.Add(bTable);

                Paragraph Comments = new Paragraph("Comments:" + clintcalservice.Comments, Pdf.BaseFontAndSize(0, 8, "000000", Font.BOLD));
                Pdf.Document.Add(Comments);
                System.Drawing.Image image = GetStatisticalGraphic(id);
                if (image!=null)
                {
                    Image png = Image.GetInstance(image,Color.WHITE);
                    png.ScaleToFit(Pdf.wWidth, 180);
                    Table iTable = new Table(1);
                    iTable.DefaultCellBorder = 0;
                    iTable.BorderColor = Color.WHITE;
                    Cell celldd = new Cell(png);
                    iTable.AddCell(celldd);
                    Pdf.Document.Add(iTable);
                }

                Table cTable = new Table(2, 4);
                cTable.Width = 100;
                cTable.DefaultCellBorder = 0; 
                cTable.BorderColor = Color.WHITE;
                cTable.Padding = 3;
                cTable.Border = 0;
                cTable.AddCell(new Phrase("Continue Current Treatment Plan:", Pdf.BaseFontAndSize(0, 8, "000000", Font.BOLD)));
                cTable.AddCell(new Phrase("Change Treatment Plan:", Pdf.BaseFontAndSize(0, 8, "000000", Font.BOLD)));
                cTable.AddCell(new Phrase("Follow up:                   (next appt):", Pdf.BaseFontAndSize(0, 8, "000000", Font.BOLD)));
                cTable.AddCell(new Phrase("Follow up: _____________________", Pdf.BaseFontAndSize(0, 8, "000000", Font.BOLD)));
                Pdf.Document.Add(cTable);

                Table dTable = new Table(3, 2);
                dTable.Width = 100;
                dTable.DefaultCellBorder = 0;
                dTable.Border = 0;
                dTable.AddCell(new Phrase("_____________________________", Pdf.BaseFontAndSize(0, 8, "000000", Font.BOLD)));
                dTable.AddCell(new Phrase("_____________________________", Pdf.BaseFontAndSize(0, 8, "000000", Font.BOLD)));
                dTable.AddCell(new Phrase("_____________________________", Pdf.BaseFontAndSize(0, 8, "000000", Font.BOLD)));
                dTable.AddCell(new Phrase("Signature", Pdf.BaseFontAndSize(0, 8, "000000", Font.BOLD)));
                dTable.AddCell(new Phrase("Title", Pdf.BaseFontAndSize(0, 8, "000000", Font.BOLD)));
                dTable.AddCell(new Phrase("Date", Pdf.BaseFontAndSize(0, 8, "000000", Font.BOLD)));
                dTable.AddCell(new Phrase("_____________________________", Pdf.BaseFontAndSize(0, 8, "000000", Font.BOLD)));
                dTable.AddCell(new Phrase("_____________________________", Pdf.BaseFontAndSize(0, 8, "000000", Font.BOLD)));
                dTable.AddCell(new Phrase("_____________________________", Pdf.BaseFontAndSize(0, 8, "000000", Font.BOLD)));
                dTable.AddCell(new Phrase("Supervisor Signature" , Pdf.BaseFontAndSize(0, 8, "000000", Font.BOLD)));
                dTable.AddCell(new Phrase("Title", Pdf.BaseFontAndSize(0, 8, "000000", Font.BOLD)));
                dTable.AddCell(new Phrase("Date" , Pdf.BaseFontAndSize(0, 8, "000000", Font.BOLD)));
                Pdf.Document.Add(dTable);
                Pdf.Document.Close();
                #endregion

                HttpContext.Response.AddHeader("content-disposition", "inline; filename=" + filename + ".pdf");
                return File(new FileStream(Path + ".pdf", FileMode.Open), "appliction/pdf");//生成图片之后再插进去
            }
            catch (Exception ex)
            {
                LogHelper.ErrorToDb("TreatmentPlan", "PrintClintcalService", ex);
                return Content(ex.Message);
            }
        }

        public ClinicalServiceDiagnosi ObjectiveIsOn(IList<ClinicalServiceDiagnosi> CSDItem, int SymptomID, int LongTermGoalID, int ObjectiveID)
        {
            ClinicalServiceDiagnosi CSD = new ClinicalServiceDiagnosi();
            CSD.ObjectiveIsComplete = false;
            CSD.ObjectiveIsWorkedOn = false;
            foreach (var item in CSDItem)
            {
                if (item.SymptomID == SymptomID && item.LongTermGoalID == LongTermGoalID && item.ObjectiveID == ObjectiveID)
                {
                    if (item.ObjectiveIsComplete.HasValue || item.ObjectiveIsWorkedOn.HasValue)
                    {
                        CSD = item;
                        if (!item.ObjectiveIsComplete.HasValue) CSD.ObjectiveIsComplete = false;
                        if (!item.ObjectiveIsWorkedOn.HasValue) CSD.ObjectiveIsWorkedOn = false;
                    }
                }
            }
            return CSD;
        }

        public bool StrategyIsWorkdeOn(IList<ClinicalServiceDiagnosi> CSDItem, int SymptomID, int LongTermGoalID, int ObjectiveID, int StrategyID)
        {
            bool result = false;
            foreach (var item in CSDItem)
            {
                if (item.SymptomID == SymptomID && item.LongTermGoalID == LongTermGoalID && item.ObjectiveID == ObjectiveID && item.StrategyID == StrategyID)
                {
                    if(item.StrategyIsWorkdeOn.HasValue)
                    {
                        result = item.StrategyIsWorkdeOn.Value;
                    }
                }
            }
            return result;
        }

        /// <summary>
        /// 统计图
        /// </summary>
        /// <param name="id">TreatmentPlanID</param>
        /// <returns></returns>
        public System.Drawing.Image GetStatisticalGraphic(int id)
        {
            DataTable dt = new DataTable();
            ClinicalServiceNoteRateBll CSNRBll = new ClinicalServiceNoteRateBll();
            IList<ClinicalServiceNoteRate> CSNRItem = CSNRBll.GetListByTreatmentPlanID(id);
            if (CSNRItem.Count() <= 0) return null;

            List<RatingDatas> ratingDataList = new List<RatingDatas>();
            
            int clincalserviceID = 0;
            int forCount = 0;
            foreach (var item in CSNRItem)
            {
                if (clincalserviceID == item.ClinicalServiceID) continue;
                if (forCount == 3) break;
                RatingDatas ratingDatas = new RatingDatas();
                List<SymptomRatingData> ratingData = new List<SymptomRatingData>();
                if (item.ClinicalServiceID.HasValue)
                {
                    IList<ClinicalServiceNoteRate> list = CSNRBll.GetListByClinicalServiceID(item.ClinicalServiceID.Value);
                    foreach (var item2 in list)
                    {
                        ratingData.Add(new SymptomRatingData() { Client = Convert.ToInt32(item2.clientRate), Therapist = Convert.ToInt32(item2.therapistRate), Data = item2.createTime.Value });
                    }
                    clincalserviceID = item.ClinicalServiceID.Value;
                    forCount++;
                }
                ratingDatas.RatingData = ratingData;
                ratingDataList.Add(ratingDatas);
            }

            GraphDrawing graph = new GraphDrawing();
            System.Drawing.Image image = graph.BarGraph("Rating", 800, 300, ratingDataList);
            
            return image;
        }

        #endregion

        #region Share
        public ActionResult ShareTreatmentPlan(int? id)
        {
            try
            {
                int patientID = HttpRequestUtils.FormInt("PatientID", 0);
                int treatmentPlanID = HttpRequestUtils.FormInt("TreatmentPlanID", 0);
                if (patientID == 0)
                    return Content("No patient checked!");
                if (treatmentPlanID == 0)
                    return Content("The treatmentPlan is not exsis.");
                PatientBll patientBll = new PatientBll();
                Patient patient = patientBll.GetPatientByID(patientID);
                if (patient == null)
                    throw new Exception("patient is not eixst!");
                #region Authorize
                bool read, write, download,isOwner;
                Permission.TreatmentPlanPermission(UserID, patientID, out read, out download, out write,out isOwner);
                if (!isOwner)
                    return Content("Sorry,You may not have permission to perform this operation.");
                #endregion
                PermissionBll permissionBll = new PermissionBll();
                IList<UserTreatmentPlanPermission> permissionList = permissionBll.GetTreatmentPlanPermissionList(treatmentPlanID, id ?? 1, 20);
                UserBll userBll = new UserBll();
                IList<User> userList = userBll.GetAllUsers();
                ViewData["slUser"] = userList.Where(u => u.UserID != patient.UserID).ToSelectList<User>(u => u.FirstName + " " + u.LastName, u => u.UserID.ToString());
                ViewData["PatientID"] = patientID;
                ViewData["TreatmentPlanID"] = treatmentPlanID;
                return View(permissionList);
            }
            catch (Exception ex)
            {
                LogHelper.ErrorToDb("TreatmentPlan", "ShareTreatmentPlan", ex);
                return PartialView("Error");
            }
        }

        public ActionResult GetTreatmentPlanPermissions(int? id)
        {
            try
            {
                int patientID = HttpRequestUtils.FormInt("PatientID", 0);
                int treatmentPlanID = HttpRequestUtils.FormInt("TreatmentPlanID", 0);
                if (patientID == 0)
                    return Content("No patient checked!");
                if (treatmentPlanID == 0)
                    return Content("The treatmentPlan is not exsis.");
                PatientBll patientBll = new PatientBll();
                Patient patient = patientBll.GetPatientByID(patientID);
                if (patient == null)
                    throw new Exception("patient is not eixst!");
                #region Authorize
                bool read, write, download,isOwner;
                Permission.TreatmentPlanPermission(UserID, patientID, out read, out download, out write,out isOwner);
                if (!isOwner)
                    return Content("Sorry,You may not have permission to perform this operation.");
                #endregion
                PermissionBll permissionBll = new PermissionBll();
                IList<UserTreatmentPlanPermission> permissionList = permissionBll.GetTreatmentPlanPermissionList(treatmentPlanID, id ?? 1, 20);
               
                return View(permissionList);
            }
            catch (Exception ex)
            {
                LogHelper.ErrorToDb("TreatmentPlan", "ShareTreatmentPlan", ex);
                return PartialView("Error");
            }
        }

        public ActionResult AddTreatmentPlanPermission(FormCollection forms)
        {
            try
            {
                //get current user
                int patientID = HttpRequestUtils.FormInt("hdPatientID", 0);
                int treatmentPlanID = HttpRequestUtils.FormInt("hdTreatmentPlanID", 0);
                int[] userIDs = HttpRequestUtils.FormIntArray("hdUserID");
                bool[] reads = HttpRequestUtils.FormBoolArray("canRead");
                bool[] writes = HttpRequestUtils.FormBoolArray("canWrite");
                bool isApplyToSub = HttpRequestUtils.FormBool("chkbIsApplyToSub", false);

                if (patientID == 0 || userIDs.Length == 0)
                {
                    return JsonModel.CreateJsonResult(false, "parameter is invalid");
                }

                #region Authorize
                bool pRead, pWrite, pDownload,isOwner;
                Permission.TreatmentPlanPermission(UserID, treatmentPlanID, out pRead, out pDownload, out pWrite,out isOwner);
                if (!isOwner)
                    return JsonModel.CreateJsonResult(false, "Sorry,You may not have permission to perform this operation.");
                #endregion

                List<UserTreatmentPlanPermission> uopList = new List<UserTreatmentPlanPermission>();
                // 获取参数的值
                for (int i = 0; i < userIDs.Length; i++)
                {
                    // 获取提交过来的值
                    int uid = userIDs[i];

                    bool write = writes[i];
                    bool read = reads[i] || write;
                    if (uid == 0) continue;
                    UserTreatmentPlanPermission tmpPermission = new UserTreatmentPlanPermission();
                    tmpPermission.UserID = uid;                    
                    tmpPermission.TreatmentPlanID = treatmentPlanID;                    
                    tmpPermission.can_read = read;
                    tmpPermission.can_write = write;
                    tmpPermission.last_modified = DateTime.Now;
                    tmpPermission.last_modified_by = UserID;
                    uopList.Add(tmpPermission);
                }

                PermissionBll permissionBll = new PermissionBll();
                if (permissionBll.SetTreatmentPlanPermission(uopList))
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
                LogHelper.ErrorToDb("TreatmentPlan", "AddTreatmentPlanPermission", ex);
                return JsonModel.CreateJsonResult(false, ex.Message);
            }
        }
        #endregion
    }

}
