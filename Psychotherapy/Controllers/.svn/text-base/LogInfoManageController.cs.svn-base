using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Psychotherapy.Utility;
using Insourcia.Psychotherapy.Utility.Security;
using Insourcia.Psychotherapy.Bll;
using Insourcia.WebControls.MvcPaging;
using Insourcia.Psychotherapy.Model;
using Insourcia.Psychotherapy.Utility.Log;

namespace Insourcia.Psychotherapy.Controllers
{
    public class LogInfoManageController : SysBaseController
    {
        //
        // GET: /LogInfoManager/
        [UrlAdminAuthorize]
        public ActionResult LogList(int? id)
        {
            try
            {
                LogRecordBll bll = new LogRecordBll();
                DateTime sTime = DateTime.Now.AddDays(-1).Date;
                DateTime eTime = DateTime.Now.Date.AddMinutes(1439);
                IPagedList<LogRecord> list = bll.GetLogList(14, id ?? 1, l => l.Date >= sTime && l.Date <= eTime);
                return View(list);
            }
            catch (Exception ex)
            {
                LogHelper.ErrorToDb("LogInfoManage", "LogList", ex);
                throw new Exception(ex.Message);
            }
            
        }
        [UrlAdminAuthorize(Roles = "LogInfoManager/LogList")]
        public ActionResult GetLosgList(int? id)
        {
            try
            {
                LogRecordBll bll = new LogRecordBll();
                DateTime sTime = DateTime.Now.AddDays(-1).Date;
                DateTime eTime = DateTime.Now.Date.AddMinutes(1439);
                IPagedList<LogRecord> list = bll.GetLogList(14, id ?? 1, l => l.Date >= sTime && l.Date <= eTime);
                return PartialView("UcLogList", list);
            }
            catch (Exception ex)
            {
                LogHelper.ErrorToDb("LogInfoManage", "GetLosgList", ex);
                throw new Exception(ex.Message);
            }
            
        }

    }
}
