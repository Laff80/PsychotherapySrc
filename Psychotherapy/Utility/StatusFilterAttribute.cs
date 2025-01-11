using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Psychotherapy.Utility
{
    public class StatusFilterAttribute : ActionFilterAttribute
    {
        public override void OnActionExecuting(ActionExecutingContext filterContext)
        {
            //filterContext.HttpContext.Request. += ""; 
            
            //((ViewResult)filterContext.Result).ViewData["objectId"] = filterContext.HttpContext.Request.QueryString["objectId"];
           // filterContext.Http = filterContext.HttpContext.Request.QueryString["objectId"];
            //((ViewResult)filterContext.Result).ViewData["ownerId"] = filterContext.HttpContext.Request.Form["ownerId"];
            //((ViewResult)filterContext.Result).ViewData["objectName"] = filterContext.HttpContext.RequestName"];
            //((ViewResult)filterContext.Result).ViewData["patient_object_name"] = filterContext.HttpContext.Request.Form["patient_objectt.Form["objec_name"];
            if (filterContext.ActionParameters != null)
            {
                foreach (KeyValuePair<string, object> parameter in filterContext.ActionParameters)
                {
                    //string parameterInfo = string.Format("Parameter name: {0} – Parameter value: {1}", parameter.Key, parameter.Value == null ? "null" : parameter.Value);
                    switch (parameter.Key)
                    {
                        case "objectId":
                            ((ViewResult)filterContext.Result).ViewData["objectId"] = parameter.Value.ToString();
                            break;
                        case "ownerId":
                            ((ViewResult)filterContext.Result).ViewData["ownerId"] = parameter.Value.ToString();
                            break;
                        case "objectName":
                            ((ViewResult)filterContext.Result).ViewData["objectName"] = parameter.Value.ToString();
                            break;
                        case "patient_object_name":
                            ((ViewResult)filterContext.Result).ViewData["patient_object_name"] = parameter.Value.ToString();
                            break;
                    }
                }
            }

        }

    }
}