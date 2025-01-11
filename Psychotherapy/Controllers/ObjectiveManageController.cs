using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Psychotherapy.Utility;
using Insourcia.Common;
using System.Text;
using Insourcia.Psychotherapy.Bll;
using Insourcia.Psychotherapy.Model;
using Insourcia.Common.Web;
using System.Linq.Expressions;
using LinqKit;
using Insourcia.Psychotherapy.Utility.Log;
using Insourcia.WebControls.MvcPaging;

namespace Psychotherapy.Controllers
{
    [SessionTimeOutFilterAttribute]
    public class ObjectiveManageController : SysBaseController
    {
        public ActionResult Objectives(int? id)
        {
            try
            {
                Expression<Func<Objective, bool>> filter = PredicateBuilder.True<Objective>();
                IPagedList<Objective> list = ObjectiveBll.Instance.GetPagedObjectiveList(id ?? 1, 12, filter);
                return View(list);
            }
            catch (Exception ex)
            {
                LogHelper.ErrorToDb("ObjectiveManage", "Objectives", ex);
                return PartialView("Error");
            }
        }

        [HttpPost]
        public ActionResult GetObjectives(int? id)
        {
            string strKeyword = HttpRequestUtils.GetString("keyword", string.Empty);
            Expression<Func<Objective, bool>> filter = PredicateBuilder.True<Objective>();
            try
            {
                if (!string.IsNullOrWhiteSpace(strKeyword))
                {
                    filter = filter.And(p => p.Title.Contains(strKeyword));
                }
                IPagedList<Objective> list = ObjectiveBll.Instance.GetPagedObjectiveList(id ?? 1, 12, filter);
                return PartialView("UcObjectives", list);
            }
            catch (Exception ex)
            {
                LogHelper.ErrorToDb("ObjectiveManage", "Objectives", ex);
                return PartialView("Error");
            }
        }
    }
}
