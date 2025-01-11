using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.IO;
using Insourcia.Psychotherapy.Bll;
using Insourcia.Psychotherapy.Model;
using Insourcia.Psychotherapy.Utility.Log;

namespace Psychotherapy.Utility
{
    
    /// <summary>
    ///基础Controller
    /// </summary>
    [LogException]
    public class BaseController : Controller
    {
        protected override void OnActionExecuting(ActionExecutingContext filterContext)
        {
            base.OnActionExecuting(filterContext);
            if (!HasLogin)
            {
                PartialViewResult view = new PartialViewResult { ViewName = "RedirectToLogin" };
                view.ViewData["type"] = "user";
                filterContext.Result = view;
            }
        }

        /// <summary>
        /// 是否已经登录
        /// </summary>
        public virtual bool HasLogin
        {
            get
            {
                return Session["UserID"] != null;
            }
        }

        /// <summary>
        /// 已经登陆的用户ID
        /// </summary>
        public virtual int UserID
        {
            get
            {
                if (Session["UserID"] == null)
                {
                    RedirectToLogin();
                }
                return (int)Session["UserID"];
            }
        }

        public virtual int UserTypeID
        {
            get {
                if (Session["UserTypeID"] == null)
                {
                    RedirectToLogin();
                }
                return (int)Session["UserTypeID"];
            }
        }

        public virtual string UserName
        {
            get
            {
                if (Session["UserName"] == null)
                {
                    RedirectToLogin();
                }
                return Session["UserName"] as String;
            }
        }

        public virtual int SiteID
        {
            get {
                if (Session["SiteID"] == null)
                {
                    RedirectToLogin();
                }
                return (int)Session["SiteID"];
            }
        }

        /// <summary>
        /// 当前客户ID
        /// </summary>
        public virtual int ClientID
        {
            get {
                if (Session["ClientID"] == null)
                {
                    RedirectToClientListOrLogin();
                }
                return (int)Session["ClientID"];
            }
        }

        /// <summary>
        /// 当前客户名
        /// </summary>
        public virtual string ClientName
        {
            get {
                if (Session["ClientName"] == null)
                {
                    RedirectToClientListOrLogin();
                }
                return Session["ClientName"] as String;
            }
        }

        /// <summary>
        /// 当前客户全名
        /// </summary>
        public virtual string ClientFullName
        {
            get {
                if (Session["ClientFullName"] == null)
                {
                    RedirectToClientListOrLogin();
                }
                return Session["ClientFullName"] as String;
            }
            
        }
        /// <summary>
        /// 跳转到登陆页面
        /// </summary>
        public virtual void RedirectToLogin()
        {
            Response.Redirect("/signin/login", true);
        }

        /// <summary>
        /// 跳转到客户列表或登陆页面
        /// </summary>
        public virtual void RedirectToClientListOrLogin()
        {
            if (!HasLogin)
            {
                RedirectToLogin();
            }
            Response.Redirect("/Client/List", true);
        }

        /// <summary>
        /// 获取所有站点
        /// </summary>
        /// <returns></returns>
        [HttpPost]
        public IEnumerable<SelectListItem> GetSiteItem()
        {
            SiteBll bll = new SiteBll();
            List<SelectListItem> seleteItem = new List<SelectListItem>();
            seleteItem.Add(new SelectListItem { Text = "Please choose the site", Value = "0" });
            IList<Site> siteItems = bll.GetAllSite();
            if (siteItems == null) return seleteItem;
            foreach (var item in siteItems)
            {
                seleteItem.Add(new SelectListItem { Text = item.SiteName, Value = item.SiteID.ToString() });
            }
            return seleteItem;
        }

        #region RenderPartialViewToString
        /// <summary>
        /// PartailView转换成String
        /// </summary>
        /// <returns></returns>
        protected string RenderPartialViewToString()
        {
            return RenderPartialViewToString(null, null);
        }

        /// <summary>
        /// PartailView转换成String
        /// </summary>
        /// <param name="viewName">视图名</param>
        /// <returns></returns>
        protected string RenderPartialViewToString(string viewName)
        {
            return RenderPartialViewToString(viewName, null);
        }

        /// <summary>
        /// PartailView转换成String
        /// </summary>
        /// <param name="model">与视图数据相关的模型</param>
        /// <returns></returns>
        protected string RenderPartialViewToString(object model)
        {
            return RenderPartialViewToString(null, model);
        }

        /// <summary>
        /// PartailView转换成String
        /// </summary>
        /// <param name="viewName">视图名</param>
        /// <param name="model">与视图数据相关的模型</param>
        /// <returns></returns>
        protected string RenderPartialViewToString(string viewName, object model)
        {
            if (string.IsNullOrEmpty(viewName))
                viewName = ControllerContext.RouteData.GetRequiredString("action");

            ViewData.Model = model;

            using (StringWriter sw = new StringWriter())
            {
                ViewEngineResult viewResult = ViewEngines.Engines.FindPartialView(ControllerContext, viewName);
                ViewContext viewContext = new ViewContext(ControllerContext, viewResult.View, ViewData, TempData, sw);
                viewResult.View.Render(viewContext, sw);

                return sw.GetStringBuilder().ToString();
            }
        }

        #endregion
    }
}