using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Psychotherapy.Utility;
using System.Web.Mvc;

namespace Psychotherapy.Utility
{
    public class SysBaseController : BaseController
    {
        protected override void OnActionExecuting(ActionExecutingContext filterContext)
        {
            base.OnActionExecuting(filterContext);
            if (!HasLogin)
            {
                PartialViewResult view = new PartialViewResult { ViewName = "RedirectToLogin" };
                view.ViewData["type"] = "manager";
                filterContext.Result = view;
            }
        }
    }
}