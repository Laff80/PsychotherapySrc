using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Insourcia.Psychotherapy.Model;
using Insourcia.Repository;
using Insourcia.WebControls.MvcPaging;
using System.Linq.Expressions;
using LinqKit;

namespace Insourcia.Psychotherapy.Bll
{
    public class LongTermGoalBll : TreatmentPlanBaseBll<LongTermGoal>
    {
        private IRepository<LongTermGoal> longTermGoalContext;
        private PsychotherapyEntities entities;
        public LongTermGoalBll()
        {
            entities = new PsychotherapyEntities();
            longTermGoalContext = new Repository<LongTermGoal>(entities);
            Context = longTermGoalContext;//给父类的Context赋值，这是必须的。
        }

        /// <summary>
        /// 构造业务逻辑对象的实例
        /// </summary>
        public static LongTermGoalBll Instance
        {
            get { return new LongTermGoalBll(); }
        }

        /// <summary>
        /// 获取分页列表
        /// </summary>
        /// <param name="pageIndex">页索引</param>
        /// <param name="pageSize">页大小</param>
        /// <param name="filter">筛选条件</param>
        /// <returns></returns>
        public IPagedList<LongTermGoal> GetPagedLongTermGoalList(int pageIndex, int pageSize, Expression<Func<LongTermGoal, bool>> filter)
        {
            if (filter == null) filter = PredicateBuilder.True<LongTermGoal>();
            int index = pageIndex;
            int totalCount;
            IList<LongTermGoal> list = longTermGoalContext.FindOrderBy<DateTime>(filter, r => r.CreateTime.Value, ref index, pageSize, out totalCount);
            return list.ToPagedList<LongTermGoal>(index, pageSize, totalCount);
        }

        public LongTermGoal GetLongTermGoalByID(int id)
        {
            return longTermGoalContext.FindByKey(id, "LongTermGoalID");
        }

        public IList<LongTermGoal> GetLongTermGoalList(System.Linq.Expressions.Expression<Func<LongTermGoal, bool>> longTermGoalFilter)
        {
            IList<LongTermGoal> longTermGoalList = longTermGoalContext.Find(longTermGoalFilter) ;
            return longTermGoalList;
        }
    }
}
