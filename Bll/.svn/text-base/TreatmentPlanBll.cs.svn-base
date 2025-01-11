using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Insourcia.Repository;
using Insourcia.Psychotherapy.Model;
using Insourcia.WebControls.MvcPaging;
using System.Linq.Expressions;
using LinqKit;


namespace Insourcia.Psychotherapy.Bll
{
    public class TreatmentPlanBll : TreatmentPlanBaseBll<TreatmentPlan>
    {
        private IRepository<TreatmentPlan> treatPlanContext;
        private PsychotherapyEntities entities;

        public void UpdateWithOutSave(TreatmentPlan model)
        {
            treatPlanContext.Update(model);
        }

        /// <summary>
        /// 执行保存
        /// </summary>
        /// <returns></returns>
        public int Save()
        {
            return treatPlanContext.Save();
        }
        public TreatmentPlanBll()
        {
            entities = new PsychotherapyEntities();
            treatPlanContext = new Repository<TreatmentPlan>(entities);
            Context = treatPlanContext;//给父类的Context赋值，这是必须的。
        }
        public IPagedList<TreatmentPlan> GetPagedTreatmentPlanList(int pageIndex, int pageSize, Expression<Func<TreatmentPlan, bool>> filter)
        {
            if (filter == null) filter = PredicateBuilder.True<TreatmentPlan>();
            int index = pageIndex;
            int totalCount;
            IList<TreatmentPlan> list = treatPlanContext.FindOrderByDescending<DateTime>(filter, r => r.CreateTime.Value, ref index, pageSize, out totalCount);
            return list.ToPagedList<TreatmentPlan>(index, pageSize, totalCount);
        }

        /// <summary>
        /// 获取共享给指定用户的TreatmentPlan
        /// </summary>
        /// <param name="userID"></param>
        /// <param name="patientID"></param>
        /// <param name="pageIndex"></param>
        /// <param name="pageSize"></param>
        /// <param name="filter"></param>
        /// <returns></returns>
        public IPagedList<TreatmentPlan> GetSharedTreatmentPlans(int userID, int patientID, int pageIndex, int pageSize, Expression<Func<TreatmentPlan, bool>> filter)
        {
            if (filter == null) filter = PredicateBuilder.True<TreatmentPlan>();
            filter = filter.And(t => t.PatientID == patientID);
            var query=entities.UserTreatmentPlanPermissions.AsExpandable().Where(uf => uf.UserID == userID && uf.can_read).Select(uf => uf.TreatmentPlan);
            return query.Where(filter).OrderByDescending(t=>t.CreateTime).ToPagedList(pageIndex, pageSize);            
        }

        public IList<TreatmentPlan> Find(Expression<Func<TreatmentPlan, bool>> where)
        {
            return treatPlanContext.Find(where);
        }

        public IList<TreatmentPlan> GetTeatmenPlanListByPatientID(int id)
        {
            return treatPlanContext.FindOrderByDescending<DateTime>(t => t.PatientID == id, t => t.CreateTime.Value);
        }

        public int Add(TreatmentPlan treatmentPlan, List<TreatmentPlan> treatmentPlanList)
        {
            if (treatmentPlanList != null && treatmentPlanList.Count > 0)
            {
                foreach (var item in treatmentPlanList)
                {
                    treatPlanContext.Update(item);
                }
            }
            treatPlanContext.Add(treatmentPlan);
            return entities.SaveChanges();
        }

    }
}
