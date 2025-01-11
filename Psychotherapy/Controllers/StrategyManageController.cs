using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Psychotherapy.Utility;
using Insourcia.Common;
using Insourcia.Common.Web;
using System.Linq.Expressions;
using LinqKit;
using Insourcia.Psychotherapy.Bll;
using Insourcia.Psychotherapy.Model;
using System.Text;
using Insourcia.Psychotherapy.Utility.Log;
using Insourcia.WebControls.MvcPaging;

namespace Psychotherapy.Controllers
{
    [SessionTimeOutFilterAttribute]
    public class StrategyManageController : SysBaseController
    {
        public ActionResult Strategies(int? id)
        {
            try
            {
                Expression<Func<Strategy, bool>> filter = PredicateBuilder.True<Strategy>();
                IPagedList<Strategy> list = StrategyBll.Instance.GetPagedStrategyList(id ?? 1, 12, filter);
                return View(list);
            }
            catch (Exception ex)
            {
                LogHelper.ErrorToDb("StrategyManage", "Strategys", ex);
                return PartialView("Error");
            }
        }

        [HttpPost]
        public ActionResult GetStrategies(int? id)
        {
            string strKeyword = HttpRequestUtils.GetString("keyword", string.Empty);
            Expression<Func<Strategy, bool>> filter = PredicateBuilder.True<Strategy>();
            try
            {
                if (!string.IsNullOrWhiteSpace(strKeyword))
                {
                    filter = filter.And(p => p.Title.Contains(strKeyword));
                }
                IPagedList<Strategy> list = StrategyBll.Instance.GetPagedStrategyList(id ?? 1, 12, filter);
                return PartialView("UcStrategies", list);
            }
            catch (Exception ex)
            {
                LogHelper.ErrorToDb("StrategyManage", "GetStrategies", ex);
                return PartialView("Error");
            }
        }
    }
}
