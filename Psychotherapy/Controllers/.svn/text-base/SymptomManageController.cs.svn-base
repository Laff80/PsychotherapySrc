using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Insourcia.Psychotherapy.Bll;
using System.Linq.Expressions;
using Insourcia.Psychotherapy.Model;
using LinqKit;
using System.Collections;
using System.Text;
using Insourcia.Common.Web;
using Psychotherapy.Utility;
using Insourcia.Common;
using Insourcia.Psychotherapy.Utility.Log;
using Insourcia.WebControls.MvcPaging;

namespace Psychotherapy.Controllers
{
    [SessionTimeOutFilterAttribute]
    public class SymptomManageController : SysBaseController
    {
        public ActionResult Symptoms(int? id)
        {
            try
            {
                Expression<Func<Symptom, bool>> filter = PredicateBuilder.True<Symptom>();
                IPagedList<Symptom> list = SymptomBll.Instance.GetPagedSymptomList(id ?? 1, 12, filter);
                return View(list);
            }
            catch (Exception ex)
            {
                LogHelper.ErrorToDb("SymptomManage", "Symptoms", ex);
                return PartialView("Error");
            }
        }

        [HttpPost]
        public ActionResult GetSymptoms(int? id)
        {
            string strKeyword = HttpRequestUtils.GetString("keyword", string.Empty);
            Expression<Func<Symptom, bool>> filter = PredicateBuilder.True<Symptom>();
            try
            {
                if (!string.IsNullOrWhiteSpace(strKeyword))
                {
                    filter = filter.And(p => p.Title.Contains(strKeyword));
                }
                IPagedList<Symptom> list = SymptomBll.Instance.GetPagedSymptomList(id ?? 1, 12, filter);
                return PartialView("UcSymptoms", list);
            }
            catch (Exception ex)
            {
                LogHelper.ErrorToDb("SymptomManage", "GetSymptoms", ex);
                return PartialView("Error");
            }
        }




    }
}
