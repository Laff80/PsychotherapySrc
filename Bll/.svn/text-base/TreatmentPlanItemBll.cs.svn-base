using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Insourcia.Psychotherapy.Model;
using Insourcia.Repository;
using System.Linq.Expressions;

namespace Insourcia.Psychotherapy.Bll
{
    public class TreatmentPlanItemBll : TreatmentPlanBaseBll<TreatmentPlanItem>
    {
        private IRepository<TreatmentPlanItem> treatPlanItemContext;
        
         private PsychotherapyEntities entities;
         private IRepository<TreatmentPlan> treatPlanContext; 

         public TreatmentPlanItemBll()
         {
             entities = new PsychotherapyEntities();
             treatPlanItemContext = new Repository<TreatmentPlanItem>(entities);
             treatPlanContext = new Repository<TreatmentPlan>(entities);
             Context = treatPlanItemContext;//给父类的Context赋值，这是必须的。
         }

        /// <summary>
        /// 批量添加,并更新TreatmentPlan
        /// </summary>
        /// <param name="list"></param>
        /// <returns></returns>
         public int  AddMutil(IList<TreatmentPlanItem> list,TreatmentPlan treatmentPlan)
         {
             if (list!=null&&list.Count > 0)
             {
                 foreach (var item in list)
                 {
                     treatPlanItemContext.Add(item);
                 }
                 treatPlanContext.Update(treatmentPlan);
             }
             return entities.SaveChanges();
         }
         /// <summary>
         /// 批量Update
         /// 先删除再插入
         /// </summary>
         /// <param name="planItemAddList">插入list</param>
         /// <param name="planItemDelList">删除list</param>
         /// <param name="treatmentPlan"></param>
         /// <returns></returns>
         public int UpdateMutil(IList<TreatmentPlanItem> planItemAddList, IList<TreatmentPlanItem> planItemDelList, TreatmentPlan treatmentPlan)
         {
             if (planItemDelList != null && planItemDelList.Count > 0)
             {
                 foreach (var item in planItemDelList)
                 {
                     treatPlanItemContext.Delete(item);
                 }
                 //treatPlanContext.Update(treatmentPlan);
             }
             if (planItemAddList != null && planItemAddList.Count > 0)
             {
                 foreach (var item in planItemAddList)
                 {
                     treatPlanItemContext.Add(item);
                 }
                 
             }
             treatPlanContext.Update(treatmentPlan);
             return entities.SaveChanges();
         }

        /// <summary>
        /// 执行保存
        /// </summary>
        /// <returns></returns>
         public int Save()
         {
            return  treatPlanItemContext.Save();
         }

        // public IList<TreatmentPlanItem> FindGroupBySymtom<TKey>(Expression<Func<TreatmentPlanItem, bool>> where, Expression<Func<TreatmentPlanItem, int>> group)
        //{
        //    treatPlanItemContext.Query(where).GroupBy(o => o.ItemID, o => o.ItemID,(key, t) => new { Key = key }).ToList();
        //    return null;
        //}

        //select symptomId from treatmentplan where 
         // o => o.ItemID, o => o.ItemID, (key, t) => new { Key = key }
         public IList<TreatmentPlanItem> FindGroupBySymtom<TKey>(Expression<Func<TreatmentPlanItem, bool>> where, Expression<Func<TreatmentPlanItem, int>> group)
         {
             treatPlanItemContext.Query(where).GroupBy(group).ToList();
             return null;
         }

         public IList<TResult> FindOrderByDescendingResult<SKey, TResult>(Expression<Func<TreatmentPlanItem, bool>> where,
            Expression<Func<TreatmentPlanItem, SKey>> sortExpr,
            Expression<Func<TreatmentPlanItem, TResult>> selector)
         {
             return treatPlanItemContext.FindOrderByDescendingResult<SKey, TResult>(where, sortExpr, selector);
         }
         public IList<TreatmentPlanItem> Find(Expression<Func<TreatmentPlanItem, bool>> where)
         {
             return treatPlanItemContext.Find(where);
         }

         //public void FindOrderByDescendingResult<T1, T2>(Expression<Func<TreatmentPlanItem, bool>> where, Expression<Func<TreatmentPlanItem, int>> sortExpr, Expression<Func<TreatmentPlanItem, int>> selector)
         //{
         //    throw new NotImplementedException();
         //}
    }
}
