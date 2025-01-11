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
    public class ObjectiveBll : TreatmentPlanBaseBll<Objective>
    {
        private IRepository<Objective> objectiveContext;
        private PsychotherapyEntities entities;
        public ObjectiveBll()
        {
            entities = new PsychotherapyEntities();
            objectiveContext = new Repository<Objective>(entities);
            Context = objectiveContext;//给父类的Context赋值，这是必须的。
        }

        /// <summary>
        /// 构造业务逻辑对象的实例
        /// </summary>
        public static ObjectiveBll Instance
        {
            get { return new ObjectiveBll(); }
        }

        /// <summary>
        /// 获取分页列表
        /// </summary>
        /// <param name="pageIndex">页索引</param>
        /// <param name="pageSize">页大小</param>
        /// <param name="filter">筛选条件</param>
        /// <returns></returns>
        public IPagedList<Objective> GetPagedObjectiveList(int pageIndex, int pageSize, Expression<Func<Objective, bool>> filter)
        {
            if (filter == null) filter = PredicateBuilder.True<Objective>();
            int index = pageIndex;
            int totalCount;
            IList<Objective> list = objectiveContext.FindOrderBy<DateTime>(filter, r => r.CreateTime.Value, ref index, pageSize, out totalCount);
            return list.ToPagedList<Objective>(index, pageSize, totalCount);

        }

        public Objective GetObjectiveByID(int id)
        {
            return objectiveContext.FindByKey(id, "ObjectiveID");
        }

        public IList<Objective> GetObjectiveList(System.Linq.Expressions.Expression<Func<Objective, bool>> objectiveFilter)
        {
            IList<Objective> objectiveList = objectiveContext.Find(objectiveFilter);
            return objectiveList;
        }
    }
}
