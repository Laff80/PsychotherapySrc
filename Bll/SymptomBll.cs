using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Insourcia.Psychotherapy.Model;
using Insourcia.Repository;
using Insourcia.WebControls.MvcPaging;
using LinqKit;
using System.Linq.Expressions;

namespace Insourcia.Psychotherapy.Bll
{
   public class SymptomBll: TreatmentPlanBaseBll<Symptom>
    {
        private IRepository<Symptom> symptomContext;
        private PsychotherapyEntities entities;

        public SymptomBll()
        {
            entities = new PsychotherapyEntities();
            symptomContext = new Repository<Symptom>(entities);
            Context = symptomContext;//给父类的Context赋值，这是必须的。
        }

       /// <summary>
       /// 构造业务逻辑对象的实例
       /// </summary>
        public static SymptomBll Instance
        {
            get { return new SymptomBll(); }
        }

        /// <summary>
        /// 获取分页列表
        /// </summary>
        /// <param name="pageIndex">页索引</param>
        /// <param name="pageSize">页大小</param>
        /// <param name="filter">筛选条件</param>
        /// <returns></returns>
        public IPagedList<Symptom> GetPagedSymptomList(int pageIndex, int pageSize, Expression<Func<Symptom, bool>> filter)
        {
            if (filter == null) filter = PredicateBuilder.True<Symptom>();
            int index = pageIndex;
            int totalCount;
            IList<Symptom> list = symptomContext.FindOrderBy<DateTime>(filter, r => r.CreateTime.Value, ref index, pageSize, out totalCount);
            return list.ToPagedList<Symptom>(index, pageSize, totalCount);

        }

        public Symptom GetSymptomByID(int id)
        {
            return symptomContext.FindByKey(id, "SymptomID");
        }

        public IList<Symptom> GetSymptomList(System.Linq.Expressions.Expression<Func<Symptom, bool>> symptomFilter)
        {
            IList<Symptom> symptomList = symptomContext.Find(symptomFilter);
            return symptomList;
        }
    }
    
}
