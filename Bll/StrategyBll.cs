using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Insourcia.Psychotherapy.Model;
using Insourcia.Repository;
using LinqKit;
using Insourcia.WebControls.MvcPaging;
using System.Linq.Expressions;

namespace Insourcia.Psychotherapy.Bll
{
    public class StrategyBll : TreatmentPlanBaseBll<Strategy>
    {
        private IRepository<Strategy> strategyContext;
        private PsychotherapyEntities entities;
        public StrategyBll()
        {
            entities = new PsychotherapyEntities();
            strategyContext = new Repository<Strategy>(entities);
            Context = strategyContext;//给父类的Context赋值，这是必须的。
        }

        /// <summary>
        /// 构造业务逻辑对象的实例
        /// </summary>
        public static StrategyBll Instance
        {
            get { return new StrategyBll(); }
        }

        /// <summary>
        /// 获取分页列表
        /// </summary>
        /// <param name="pageIndex">页索引</param>
        /// <param name="pageSize">页大小</param>
        /// <param name="filter">筛选条件</param>
        /// <returns></returns>
        public IPagedList<Strategy> GetPagedStrategyList(int pageIndex, int pageSize, Expression<Func<Strategy, bool>> filter)
        {
            if (filter == null) filter = PredicateBuilder.True<Strategy>();
            int index = pageIndex;
            int totalCount;
            IList<Strategy> list = strategyContext.FindOrderBy<DateTime>(filter, r => r.CreateTime.Value, ref index, pageSize, out totalCount);
            return list.ToPagedList<Strategy>(index, pageSize, totalCount);
        }

        public Strategy GetStrategyByID(int id)
        {
            return strategyContext.FindByKey(id, "StrategyID");
        }

        public IList<Strategy> GetStrategyList(System.Linq.Expressions.Expression<Func<Strategy, bool>> strategyFilter)
        {
            IList<Strategy> strategyList = strategyContext.Find(strategyFilter);
            return strategyList;
        }
    }
}
