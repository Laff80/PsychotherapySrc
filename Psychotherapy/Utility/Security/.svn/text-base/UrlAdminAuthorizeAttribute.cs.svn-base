using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Insourcia.Psychotherapy.Bll;
using Insourcia.Common;
using Insourcia.Psychotherapy.Utility.Log;
using Insourcia.Psychotherapy.Model;
using Insourcia.Psychotherapy.Models;
namespace Insourcia.Psychotherapy.Utility.Security
{
    public class UrlAdminAuthorizeAttribute : AuthorizeAttribute
    {
        private string url = string.Empty;
        protected override bool AuthorizeCore(HttpContextBase httpContext)
        {
            if (httpContext == null)
            {
                throw new ArgumentNullException("httpContext");
            }

            if (httpContext.Session["UserID"] == null)
                return false;
            int uid =Insourcia.Common.Converter.ToInt( httpContext.Session["UserID"].ToString(),0);
            if (uid == 0) return false;
            RightsManager bll = new RightsManager();
            return bll.HasPermission(uid, Roles, url);
        }

        public override void OnAuthorization(AuthorizationContext filterContext)
        {
            if (filterContext == null) throw new ArgumentNullException("filterContext");
            string controllerName = filterContext.RouteData.Values["controller"].ToString();
            string actionName = filterContext.RouteData.Values["action"].ToString();
            try
            {


                url = controllerName + "/" + actionName;

                base.OnAuthorization(filterContext);
                if (!AuthorizeCore(filterContext.HttpContext))
                {
                    //记录日志
                    LogHelper.WarnToDb(controllerName, actionName, "You may not have permission to perform this operation");
                    PartialViewResult view = new PartialViewResult();

                    int userID = Insourcia.Common.Converter.ChangeType<int>(filterContext.HttpContext.Session["UserID"], 0);
                    UserBll userbll = new UserBll();
                    User userInfo = userbll.GetUserByID(userID);
                    if (filterContext.HttpContext.Session["UserID"] == null || userInfo == null)
                    {
                        view.ViewName = "RedirectToLogin";
                        view.ViewData["type"] = "manager";
                        filterContext.Result = view;
                        return;
                    }
                    else if (!userInfo.UserTypeID.HasValue||userInfo.UserTypeID.Value >= (int)UserTypeEnums.User)
                    {
                        view.ViewName = "RedirectToLogin";
                        view.ViewData["type"] = "user";
                        filterContext.Result = view;
                        return;
                    }

                    if (filterContext.HttpContext.Request.AcceptTypes.Contains("application/json"))
                    {
                        JsonResult json = new JsonResult();
                        json.Data = new { Success = false, ErrorMsg = "Sorry,You may not have permission to perform this operation" };
                        filterContext.Result = json;
                    }
                    else
                    {
                        PartialViewResult result = new PartialViewResult();
                        result.ViewName = "NoAuthorize";
                        filterContext.Result = result;
                    }
                }
            }
            catch (Exception ex)
            {
                LogHelper.ErrorToDb(controllerName, actionName, ex);
                PartialViewResult result = new PartialViewResult();
                result.ViewName = "Error";
                filterContext.Result = result;
            }
        }
    }
}