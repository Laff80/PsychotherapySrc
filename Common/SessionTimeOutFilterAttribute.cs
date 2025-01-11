using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web.Mvc;
using System.Web;

namespace Insourcia.Common
{
    public class SessionTimeOutFilterAttribute:ActionFilterAttribute
    {
        public override void OnActionExecuting(ActionExecutingContext filterContext)
        {

            HttpContextBase ctx = filterContext.HttpContext;
           
            if (ctx.Session != null)
            {

                if (ctx.Session.IsNewSession)
                {
                  
                    string sessionCookie = ctx.Request.Headers["Cookie"];

                    if ((null != sessionCookie) && (sessionCookie.IndexOf("ASP.NET_SessionId") >= 0))
                    {

                        ctx.Response.Redirect("~/Client/List");
                    }

                }
            }
            base.OnActionExecuting(filterContext);
        }
    }
}
