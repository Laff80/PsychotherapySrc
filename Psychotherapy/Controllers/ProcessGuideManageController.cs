using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Psychotherapy.Utility;
using System.Xml;
using Insourcia.Psychotherapy.Bll;
using Insourcia.Psychotherapy.Model;
using Insourcia.Common;
using Insourcia.Psychotherapy.Utility.Log;
using System.Linq.Expressions;
using LinqKit;
using Insourcia.WebControls.MvcPaging;
using Insourcia.Common.Web;
using Psychotherapy.Models;

namespace Psychotherapy.Controllers
{
    [SessionTimeOutFilterAttribute]
    public class ProcessGuideManageController : SysBaseController
    {
        #region Process Element Manage
        public ActionResult ProcessElement(int? id)
        {
            try
            {
                ProcessGuideBll processBll = new ProcessGuideBll();
                Expression<Func<ProcessGuide, bool>> filter = PredicateBuilder.True<ProcessGuide>();
                IPagedList<ProcessGuide> Process = processBll.GetPagedProcess(id ?? 1, 12, filter);
                return View(Process);
            }
            catch (Exception ex)
            {
                LogHelper.ErrorToDb("ProcessGuide", "ProcessElement", ex);
                return PartialView("Error");
            }
        }

        [HttpPost]
        public ActionResult GetProcessElement(int? id)
        {
            string strKeyword = HttpRequestUtils.GetString("keyword", string.Empty);
            try
            {
                ProcessGuideBll processBll = new ProcessGuideBll();
                Expression<Func<ProcessGuide, bool>> filter = PredicateBuilder.True<ProcessGuide>();
                if (!string.IsNullOrWhiteSpace(strKeyword))
                {
                    filter = filter.And(p => p.Title.Contains(strKeyword));
                }
                IPagedList<ProcessGuide> categories = processBll.GetPagedProcess(id ?? 1, 12, filter);
                return PartialView("UcProcessElement", categories);
            }
            catch (Exception ex)
            {
                LogHelper.ErrorToDb("ProcessGuide", "GetProcessElement", ex);
                return PartialView("Error");
            }
        }

        public ActionResult NewProcessElement()
        {
            return View();
        }

        [HttpPost]
        public ActionResult NewProcessElement(ProcessGuide process)
        {
            try
            {
                return View();
            }
            catch (Exception)
            {
                
                throw;
            }
        }

        public ActionResult EditProcessElement(int id)
        {
            ProcessGuideBll processBll = new ProcessGuideBll();
            ProcessGuide process = processBll.GetProcessGuideByID(id);
            return View(process);
        }

        public ActionResult GetQuestions(int id)
        {
            try
            {
                ProcessGuideBll processBll = new ProcessGuideBll();
                ProcessGuide process = processBll.GetProcessGuideByID(id);
                ClusterBll clusterBll = new ClusterBll();


                ViewData["Clusters"] = clusterBll.GetAllClusters();
                ViewData["ProcessGuides"] = processBll.GetAllProcessGuide();

                return PartialView("UcSettingQuestions", process);
            }
            catch (Exception ex)
            {
                
                throw;
            }
            
        }

        [HttpPost]
        public ActionResult SetQuestions(int id, FormCollection forms)
        {
            
            string yesID = string.Empty;
            string noID = string.Empty;
            foreach (var key in forms.AllKeys)
            {
                if (forms[key] == "Yes")
                {
                    yesID = key.ToString();
                }
                else if (forms[key] == "No")
                {
                    noID = key.ToString();
                }
            }
            try
            {
                ProcessGuideBll processBll = new ProcessGuideBll();
                ProcessGuide process = processBll.GetProcessGuideByID(id);
                process.YesID = yesID;
                process.NoID = noID;
                if (processBll.Update(process))
                    return JsonModel.CreateJsonResult(true, "Saved successfully!");
                return JsonModel.CreateJsonResult(false, "Save failed!");
            }
            catch (Exception ex)
            {
                return JsonModel.CreateJsonResult(false, "Error:" + ex.Message);
            }
            
        }
        #endregion
    }
}
