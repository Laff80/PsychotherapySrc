using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Insourcia.Psychotherapy.Bll;
using Insourcia.Psychotherapy.Model;

namespace Insourcia.Psychotherapy.Controllers
{
    public class InitController : Controller
    {
        //
        // GET: /Init/

        public ActionResult Index()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Index(FormCollection forms)
        {
            try
            {
                if (InitDataBLL.Init()) 
                {
                    ViewData["Msg"] = "Init Successed!";
                }
                else
                {
                    ViewData["Msg"] = "Init Fialed.";
                }
            }
            catch (Exception ex)
            {
                ViewData["Msg"] = ex.InnerException == null ? ex.Message : ex.InnerException.Message;
            }

            return View();
        }
    }
}
