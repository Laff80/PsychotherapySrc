using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Insourcia.Psychotherapy.Model;
using Insourcia.Psychotherapy.Bll;
using Insourcia.WebControls.MvcPaging;
using System.Linq.Expressions;
using LinqKit;
using Insourcia.Common;
using Psychotherapy.Utility;
using Insourcia.Common.Web;
using Insourcia.Psychotherapy.Utility.Log;

namespace Insourcia.Psychotherapy.Controllers
{
    public class SiteManageController : SysBaseController
    {
        public ActionResult Sites(int? id)
        {
            try
            {
                SiteBll bll = new SiteBll();
                Expression<Func<Site, bool>> filter = PredicateBuilder.True<Site>();
                IPagedList<Site> list = bll.GetPageSizeList(id ?? 1, 12, filter);
                return View(list);
            }
            catch (Exception e)
            {
                LogHelper.ErrorToDb("SiteManage", "Sites", LogMessageType.Error, e);
                return PartialView("error");
            }
        }

        [HttpPost]
        public ActionResult GetSites(int? id, FormCollection forms)
        {
            string strKeyword = HttpRequestUtils.GetString("keyword", string.Empty);
            try
            {
                SiteBll bll = new SiteBll();
                Expression<Func<Site, bool>> filter = PredicateBuilder.True<Site>();
                if (!String.IsNullOrWhiteSpace(strKeyword))
                {
                    DateTime time = Converter.ToDateTime(strKeyword, DateTime.MinValue);
                    filter = p => (p.SiteName.Contains(strKeyword) || p.Description.Contains(strKeyword) || (p.TimeCreated.Value.CompareTo(time) == 0));
                }
                IPagedList<Site> list = bll.GetPageSizeList(id ?? 1, 12, filter);
                return View("UcSites", list);

            }
            catch (Exception e)
            {
                LogHelper.ErrorToDb("SiteManage", "GetSites", LogMessageType.Error, e);
                return PartialView("error");
            }
        }

        public ActionResult NewSite()
        {
            try
            {
                DepartmentManageController department = new DepartmentManageController();
                ViewData["UserNames"] = department.GetUserNames();
                return View();
            }
            catch (Exception)
            {
                throw;
            }

        }

        [HttpPost]
        public ActionResult NewSite(Site site)
        {
            try
            {
                SiteBll bll = new SiteBll();
                site.TimeCreated = DateTime.Now;
                site.LastModified = DateTime.Now;
                if (bll.AddSite(site))
                {
                    return RedirectToAction("Create"); ;
                }
                else
                {
                    ModelState.AddModelError("ErrorMsg", "add site is error");
                }

            }
            catch (Exception e)
            {
                LogHelper.ErrorToDb("Site", "Create", LogMessageType.Error, e);
                ModelState.AddModelError("ErrorMsg", e.Message);
            }
            return View(site);
        }

        public ActionResult EditSite(int id)
        {
            try
            {
                SiteBll bll = new SiteBll();
                Site site = bll.GetSiteByID(id);
                if (site == null)
                {
                    return PartialView("error");
                }
                return View(site);
            }
            catch (Exception e)
            {
                LogHelper.ErrorToDb("Site", "Edit", LogMessageType.Error, e);
                return View("error");
            }
        }

        /// <summary>
        /// 客户提交编辑后的站点的Action
        /// </summary>
        /// <param name="form"></param>
        /// <param name="id"></param>
        /// <returns></returns>
        [HttpPost]
        public ActionResult EditSite(Site s)
        {
            try
            {
                SiteBll bll = new SiteBll();
                Site site = bll.GetSiteByID(s.SiteID);
                if (site == null)
                {
                    ModelState.AddModelError("ErrorMsg", "Edit failure,The client does not exist");
                }
                s.LastModified = DateTime.Now;
                if (bll.UpdateSite(s))
                {
                    return RedirectToAction("List");
                }
                else
                {
                    ModelState.AddModelError("ErrorMsg", "Edit failure");
                }
            }
            catch (Exception e)
            {
                LogHelper.ErrorToDb("Site", "Edit", LogMessageType.Error, e);
                ModelState.AddModelError("ErrorMsg", e.Message);
            }
            return View(s);
        }
    }
}
