using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Xml;
using Psychotherapy.Utility;
using Insourcia.Psychotherapy.Bll;
using System.Linq.Expressions;
using LinqKit;
using Insourcia.Psychotherapy.Model;
using Insourcia.Psychotherapy.Utility.Log;

namespace Insourcia.Psychotherapy.Controllers
{
    /// <summary>
    /// 流程图
    /// </summary>
    public class FlowChartController : BaseController
    {

        #region ProcessGuide
        /// <summary>
        /// 返回ProcessGuide YESID and NOID 节点xml信息
        /// /FlowChart/ProcessGuide
        /// </summary>
        /// <returns></returns>
        public ActionResult ProcessGuide()
        {
            String xmlString = "<?xml version=\"1.0\" encoding=\"UTF-8\"?><content>";
            ProcessGuideBll processGuideBll = new ProcessGuideBll();
            ClusterBll clusterBll = new ClusterBll();
            String processGuideId = Request.Form["divId"];
            xmlString += "<currentId>" + processGuideId + "</currentId>";
            Char[] separator = new Char[] { '_' };
            String[] TypeId = processGuideId.Split(separator);
            int id = int.Parse(TypeId[1]);
            if ("cluster".Equals(TypeId[0]))
            {
                Cluster cluster = clusterBll.GetClusterByID(id);

                if (cluster.ParientID == 0)
                {
                    xmlString += "<level>father</level>";
                }
                else
                {
                    xmlString += "<level>son</level>";
                    xmlString += "<parentId>" + cluster.ParientID + "</parentId>";

                }

                xmlString += "<type>cluster</type>";
                xmlString += "<guideLineAction>" + cluster.GuideLineAction + "</guideLineAction>";
                xmlString += "<glanceSummaryAction>" + cluster.GlanceSummaryAction + "</glanceSummaryAction>";
                xmlString += "<continueAction>" + cluster.ContinueAction + "</continueAction>";
            }
            else if ("processGuide".Equals(TypeId[0]))
            {
                ProcessGuide processGuide = processGuideBll.GetProcessGuideByID(id);
                String yesid = processGuide.YesID;
                String noid = processGuide.NoID;
                xmlString += "<type>processGuide</type>";
                xmlString += "<yesId>" + yesid + "</yesId>";
                xmlString += "<noId>" + noid + "</noId>";
                xmlString += "<jumpAction>" + processGuide.JumpAction + "</jumpAction>";



            }
            xmlString += "</content>";
            // System.Console.WriteLine(xmlString);
            XmlResult xmlResult = null;
            try
            {

                XmlDocument xmlDoc = new XmlDocument();
                xmlDoc.LoadXml(xmlString);

                xmlResult = new XmlResult(xmlDoc);
            }
            catch (Exception ex)
            {
                LogHelper.ErrorToDb("FlowChart", "ProcessGuide", ex);
                throw new Exception(ex.Message);
            }


            return xmlResult;
        }
        #endregion

        #region Cluster
        public ActionResult Cluster(int? id, int patientID)
        {
            try
            {
                ClusterBll clusterBll = new ClusterBll();
                ProcessGuideBll processGuideBll = new ProcessGuideBll();
                Expression<Func<Cluster, bool>> clusterFilter = PredicateBuilder.True<Cluster>();
                Expression<Func<ProcessGuide, bool>> processGuideFilter = PredicateBuilder.True<ProcessGuide>();
                clusterFilter = C => C.ParientID == 0;
                processGuideFilter = P => P.Level == "cluster index";
                IList<Cluster> clusterList = clusterBll.GetClusterList(clusterFilter);
                ViewData["processGuideList"] = processGuideBll.GetProcessGuideByLevelList(processGuideFilter);
                ViewData["clusterList"] = clusterBll.GetClusterList(clusterFilter);
                ViewData["patientID"] = patientID;
                ViewData["userID"] = UserID;
                return View(clusterList);
            }
            catch (Exception ex)
            {
                LogHelper.ErrorToDb("FlowChart", "Cluster", ex);
                return PartialView("Error");
            }
        }
        #endregion

        #region Sud
        public ActionResult Sud(int? id)
        {
            try
            {
                //int patientID = Int32.Parse(forms["patientID"]);
                ClusterBll clusterBll = new ClusterBll();
                ProcessGuideBll processGuideBll = new ProcessGuideBll();
                Expression<Func<Cluster, bool>> clusterFilter = PredicateBuilder.True<Cluster>();
                Expression<Func<ProcessGuide, bool>> processGuideFilter = PredicateBuilder.True<ProcessGuide>();
                clusterFilter = C => C.ParientID == 1;
                processGuideFilter = P => P.Level == "SUD";
                IList<Cluster> clusterList = clusterBll.GetClusterList(clusterFilter);
                ViewData["processGuideList"] = processGuideBll.GetProcessGuideByLevelList(processGuideFilter);
                ViewData["clusterList"] = clusterBll.GetClusterList(clusterFilter);
                ViewData["patientID"] = id;
                ViewData["ClusterID"] = 1;
                return View(clusterList);
            }
            catch (Exception ex)
            {
                LogHelper.ErrorToDb("FlowChart", "Sud", LogMessageType.Error, ex);
                return PartialView("Error");
            }
        }
        #endregion

        #region ThoughtDisorder
        public ActionResult ThoughtDisorder(int? id)
        {
            try
            {
                ClusterBll clusterBll = new ClusterBll();
                ProcessGuideBll processGuideBll = new ProcessGuideBll();
                Expression<Func<Cluster, bool>> clusterFilter = PredicateBuilder.True<Cluster>();
                Expression<Func<ProcessGuide, bool>> processGuideFilter = PredicateBuilder.True<ProcessGuide>();
                clusterFilter = C => C.ParientID == 2;
                processGuideFilter = P => P.Level == "Thought";
                IList<Cluster> clusterList = clusterBll.GetClusterList(clusterFilter);
                ViewData["processGuideList"] = processGuideBll.GetProcessGuideByLevelList(processGuideFilter);
                ViewData["clusterList"] = clusterBll.GetClusterList(clusterFilter);
                ViewData["patientID"] = id;
                ViewData["ClusterID"] = 2;
                return View(clusterList);
            }
            catch (Exception ex)
            {
                LogHelper.ErrorToDb("FlowChart", "ThoughtDisorder", ex);
                return PartialView("Error");
            }
        }
        #endregion

        #region AnxietyDisorder
        public ActionResult AnxietyDisorder(int? id)
        {
            try
            {
                ClusterBll clusterBll = new ClusterBll();
                ProcessGuideBll processGuideBll = new ProcessGuideBll();
                Expression<Func<Cluster, bool>> clusterFilter = PredicateBuilder.True<Cluster>();
                Expression<Func<ProcessGuide, bool>> processGuideFilter = PredicateBuilder.True<ProcessGuide>();
                clusterFilter = C => C.ParientID == 3;
                processGuideFilter = P => P.Level == "ATD";
                IList<Cluster> clusterList = clusterBll.GetClusterList(clusterFilter);
                ViewData["processGuideList"] = processGuideBll.GetProcessGuideByLevelList(processGuideFilter);
                ViewData["clusterList"] = clusterBll.GetClusterList(clusterFilter);
                ViewData["patientID"] = id;
                ViewData["ClusterID"] = 3;
                return View(clusterList);
            }
            catch (Exception ex)
            {
                LogHelper.ErrorToDb("FlowChart", "AnxietyDisorder", ex);
                return PartialView("Error");
            }
        }
        #endregion

        #region Mood
        public ActionResult Mood(int? id)
        {
            try
            {
                ClusterBll clusterBll = new ClusterBll();
                ProcessGuideBll processGuideBll = new ProcessGuideBll();
                Expression<Func<Cluster, bool>> clusterFilter = PredicateBuilder.True<Cluster>();
                Expression<Func<ProcessGuide, bool>> processGuideFilter = PredicateBuilder.True<ProcessGuide>();
                clusterFilter = C => C.ParientID == 4;
                processGuideFilter = P => P.Level == "Mood";
                IList<Cluster> clusterList = clusterBll.GetClusterList(clusterFilter);
                ViewData["processGuideList"] = processGuideBll.GetProcessGuideByLevelList(processGuideFilter);
                ViewData["clusterList"] = clusterBll.GetClusterList(clusterFilter);
                ViewData["patientID"] = id;
                ViewData["ClusterID"] = 4;
                return View(clusterList);
            }
            catch (Exception ex)
            {
                LogHelper.ErrorToDb("AnxietyDisorder", "Mood", ex);
                return PartialView("Error");
            }
        }
        #endregion

        #region Impulse
        public ActionResult Impulse(int? id)
        {
            try
            {
                ClusterBll clusterBll = new ClusterBll();
                ProcessGuideBll processGuideBll = new ProcessGuideBll();
                Expression<Func<Cluster, bool>> clusterFilter = PredicateBuilder.True<Cluster>();
                Expression<Func<ProcessGuide, bool>> processGuideFilter = PredicateBuilder.True<ProcessGuide>();
                clusterFilter = C => C.ParientID == 5;
                processGuideFilter = P => P.Level == "IDBD";
                IList<Cluster> clusterList = clusterBll.GetClusterList(clusterFilter);
                ViewData["processGuideList"] = processGuideBll.GetProcessGuideByLevelList(processGuideFilter);
                ViewData["clusterList"] = clusterBll.GetClusterList(clusterFilter);
                ViewData["patientID"] = id;
                ViewData["ClusterID"] = 5;
                return View(clusterList);
            }
            catch (Exception ex)
            {
                LogHelper.ErrorToDb("Mood", "Impulse", ex);
                return PartialView("Error");
            }
        }
        #endregion

    }
}
