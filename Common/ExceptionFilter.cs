using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Mvc.Ajax;

namespace Insourcia.Common
{
     public class ExceptionFilter : FilterAttribute,IExceptionFilter
    {
        void IExceptionFilter.OnException(ExceptionContext filterContext)
        {
            filterContext.Controller.ViewData["ErrorMessage"] = filterContext.Exception.Message;
            filterContext.Result = new ViewResult()
            {
                ViewName = "Error",
               ViewData = filterContext.Controller.ViewData,
            };
            filterContext.ExceptionHandled = true;
        }
    }
}
