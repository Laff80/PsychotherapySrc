using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Insourcia.Common;
using Psychotherapy.Utility;
using Insourcia.Common.Web;
using Insourcia.Psychotherapy.Bll;
using LinqKit;
using Insourcia.Psychotherapy.Model;
using System.Linq.Expressions;
using System.Text;
using Insourcia.Psychotherapy.Utility.Log;
using Insourcia.WebControls.MvcPaging;

namespace Psychotherapy.Controllers
{
    [SessionTimeOutFilterAttribute]
    public class LongTermGoalManageController : SysBaseController
    {
        public ActionResult LongTermGoals(int? id)
        {
            try
            {
                Expression<Func<LongTermGoal, bool>> filter = PredicateBuilder.True<LongTermGoal>();
                IPagedList<LongTermGoal> list = LongTermGoalBll.Instance.GetPagedLongTermGoalList(id ?? 1, 12, filter);
                return View(list);
            }
            catch (Exception ex)
            {
                LogHelper.ErrorToDb("LongTermGoalManage", "LongTermGoals", ex);
                return PartialView("Error");
            }
        }

        [HttpPost]
        public ActionResult GetLongTermGoals(int? id)
        {
            string strKeyword = HttpRequestUtils.GetString("keyword", string.Empty);
            Expression<Func<LongTermGoal, bool>> filter = PredicateBuilder.True<LongTermGoal>();
            try
            {
                if (!string.IsNullOrWhiteSpace(strKeyword))
                {
                    filter = filter.And(p => p.Title.Contains(strKeyword));
                }
                IPagedList<LongTermGoal> list = LongTermGoalBll.Instance.GetPagedLongTermGoalList(id ?? 1, 12, filter);
                return PartialView("UcLongTermGoals", list);
            }
            catch (Exception ex)
            {
                LogHelper.ErrorToDb("LongTermGoalManage", "LongTermGoals", ex);
                return PartialView("Error");
            }
        }
    }
}
