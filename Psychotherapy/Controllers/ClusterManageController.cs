using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Insourcia.Psychotherapy.Bll;
using System.Linq.Expressions;
using Insourcia.Psychotherapy.Model;
using LinqKit;
using Psychotherapy.Utility;
using Insourcia.Common;
using Insourcia.Psychotherapy.Utility.Log;
using Insourcia.WebControls.MvcPaging;
using Insourcia.Common.Web;

namespace Psychotherapy.Controllers
{
    [SessionTimeOutFilterAttribute]
    public class ClusterManageController : SysBaseController
    {

        #region Cluster Manage
        public ActionResult Clusters(int? id)
        {
            try
            {
                ClusterBll clusterBll = new ClusterBll();
                Expression<Func<Cluster, bool>> filter = PredicateBuilder.True<Cluster>();
                IPagedList<Cluster> Clusters = clusterBll.GetPagedClusters(id ?? 1, 12, filter);
                return View(Clusters);
            }
            catch (Exception ex)
            {
                LogHelper.ErrorToDb("ClusterManage", "Clusters", ex);
                return PartialView("Error");
            }
        }

        [HttpPost]
        public ActionResult GetClusters(int? id)
        {
            string strKeyword = HttpRequestUtils.GetString("keyword", string.Empty);
            try
            {
                ClusterBll clusterBll = new ClusterBll();
                Expression<Func<Cluster, bool>> filter = PredicateBuilder.True<Cluster>();
                if (!string.IsNullOrWhiteSpace(strKeyword))
                {
                    filter = filter.And(p => p.Title.Contains(strKeyword));
                }
                IPagedList<Cluster> clusters = clusterBll.GetPagedClusters(id ?? 1, 12, filter);
                return PartialView("UcClusters", clusters);
            }
            catch (Exception ex)
            {
                LogHelper.ErrorToDb("ClusterManage", "GetClusters", ex);
                return PartialView("Error");
            }
        }

        public ActionResult NewCluster()
        {
            ViewData["slCluster"] = ClusterBO.Instance.GetClusterDropDownListByID(0);
            return View();
        }

        [HttpPost]
        public ActionResult NewCluster(Cluster cluster)
        {

            ClusterBll clusterBll = new ClusterBll();
            if (clusterBll.Add(cluster)) return RedirectToAction("Clusters");

            ModelState.AddModelError("ErrorMsg", "");
            ViewData["slCluster"] = ClusterBO.Instance.GetClusterDropDownListByID(0);
            return View();
        }

        public ActionResult EditCluster(int id)
        {
            ClusterBll clusterBll = new ClusterBll();
            Cluster cluster = clusterBll.GetClusterByID(id);
            ViewData["slCluster"] = ClusterBO.Instance.GetClusterDropDownListByID(0);
            return View(cluster);
        }

        [HttpPost]
        public ActionResult EditCluster(Cluster formCluster)
        {
            ClusterBll clusterBll = new ClusterBll();
            Cluster cluster = clusterBll.GetClusterByID(formCluster.ClusterID);

            if (clusterBll.Update(cluster)) return RedirectToAction("Clusters");

            ModelState.AddModelError("ErrorMsg", "");
            ViewData["slCluster"] = ClusterBO.Instance.GetClusterDropDownListByID(0);
            return View();
        }
        #endregion

    }
}
