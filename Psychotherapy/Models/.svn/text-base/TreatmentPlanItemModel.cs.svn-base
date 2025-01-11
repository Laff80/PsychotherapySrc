using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Insourcia.Psychotherapy.Bll;
using Insourcia.Psychotherapy.Model;
using System.Linq.Expressions;
using LinqKit;
using Psychotherapy.Models;
using Psychotherapy.Utility;
using System.Text;
using System.Text.RegularExpressions;

namespace Insourcia.Psychotherapy.Models
{
    public class TreatmentPlanItemModel
    {
        
        /// <summary>
        /// 
        /// </summary>
        /// <param name="id">TreatmentPlanID</param>
        /// <returns></returns>
        public IList<Symptom> GetSymptomList(int id)
        {
            TreatmentPlanItemBll treatmentPlanItemBll = new TreatmentPlanItemBll();
            
          
            Expression<Func<TreatmentPlanItem, bool>> where = PredicateBuilder.True<TreatmentPlanItem>();
            where = t => t.TreatmentPlanID == id;
            Expression<Func<TreatmentPlanItem, int>> sortExpr = t => t.SymptomID.Value;
            Expression<Func<TreatmentPlanItem, int>> selector = t => t.SymptomID.Value;
            IList<int> symptomIdList = treatmentPlanItemBll.FindOrderByDescendingResult<int, int>(where, sortExpr, selector).Distinct().ToList();
            List<Symptom> symptomList=new List<Symptom>();
             SymptomBll symptomBll = new SymptomBll();
            foreach(int symptomId in symptomIdList){
                Symptom symptom = symptomBll.GetModelByKey(symptomId, "SymptomID");
                symptomList.Add(symptom);
            }
           
          
            return symptomList;
        }
        /// <summary>
        /// 
        /// </summary>
        /// <param name="id">TreatmentPlanID</param>
        /// <param name="symptomId">SymptomID</param>
        /// <returns></returns>
        public IList<LongTermGoal> GetLongTermGoalList(int id,int symptomId)
        {
            TreatmentPlanItemBll treatmentPlanItemBll = new TreatmentPlanItemBll();
            LongTermGoalBll longTermGoalBll = new LongTermGoalBll();
            Expression<Func<TreatmentPlanItem, bool>> longTermGoalWhere = PredicateBuilder.True<TreatmentPlanItem>();
            longTermGoalWhere = t => t.TreatmentPlanID == id && t.SymptomID == symptomId;

            Expression<Func<TreatmentPlanItem, int>> longTermGoalSortExpr = t => t.LongTermGoalID.Value;
            Expression<Func<TreatmentPlanItem, int>> longTermGoalSelector = t => t.LongTermGoalID.Value;
            IList<int> longTermGoalIdList = treatmentPlanItemBll.FindOrderByDescendingResult<int, int>(longTermGoalWhere, longTermGoalSortExpr, longTermGoalSelector).Distinct().ToList();//group by LongTermGoal

            List<LongTermGoal> longTermGoalList = new List<LongTermGoal>();
            SymptomBll symptomBll = new SymptomBll();
            foreach (int longTermGoalId in longTermGoalIdList)
            {
                LongTermGoal longTermGoal = longTermGoalBll.GetModelByKey(longTermGoalId, "LongTermGoalID");
                longTermGoalList.Add(longTermGoal);
            }


            return longTermGoalList;
        }


        public IList<ObjectiveModel> GetObjectiveList(int id, int symptomId, int longTermGoalId)
        {
            TreatmentPlanItemBll treatmentPlanItemBll = new TreatmentPlanItemBll();
            ObjectiveBll objectiveBll = new ObjectiveBll();
            Expression<Func<TreatmentPlanItem, bool>> objectiveWhere = PredicateBuilder.True<TreatmentPlanItem>();
            objectiveWhere = objectiveWhere.And(t => t.TreatmentPlanID == id && t.SymptomID == symptomId && t.LongTermGoalID == longTermGoalId);
            Expression<Func<TreatmentPlanItem, int>> objectiveSortExpr = t => t.ObjectiveID.Value;
            Expression<Func<TreatmentPlanItem, ObjectiveModel>> objectiveSelector = t => new ObjectiveModel { ObjectiveID = t.ObjectiveID.Value, Count = t.Count, Measure = t.Measure };
            IList<ObjectiveModel> list = treatmentPlanItemBll.FindOrderByDescendingResult<int, ObjectiveModel>(objectiveWhere, objectiveSortExpr, objectiveSelector);
            IList<ObjectiveModel> objectiveModeList = list.Distinct(new CustomComparer<ObjectiveModel>((o1, o2) => o1.ObjectiveID == o2.ObjectiveID && o1.Measure == o2.Measure && o1.Count == o2.Count)).ToList();

            return objectiveModeList;
        }

        public IList<Strategy> GetStrategyList(int id,int symptomId,int longTermGoalId,ObjectiveModel objectiveModel)
        {
            TreatmentPlanItemBll treatmentPlanItemBll = new TreatmentPlanItemBll();
            StrategyBll strategyBll = new StrategyBll();
            Expression<Func<TreatmentPlanItem, bool>> strategyWhere = PredicateBuilder.True<TreatmentPlanItem>();
            strategyWhere = t => t.TreatmentPlanID == id && t.SymptomID == symptomId && t.LongTermGoalID == longTermGoalId && t.ObjectiveID == objectiveModel.ObjectiveID;
            Expression<Func<TreatmentPlanItem, int>> strategySortExpr = t => t.StrategyID.Value;
            Expression<Func<TreatmentPlanItem, int>> strategySelector = t => t.StrategyID.Value;
            IList<int> strategyIdList = treatmentPlanItemBll.FindOrderByDescendingResult<int, int>(strategyWhere, strategySortExpr, strategySelector).Distinct().ToList();
            List<Strategy> StrategyList = new List<Strategy>();

            foreach (int strategyId in strategyIdList)
            {
                Strategy strategy = strategyBll.GetModelByKey(strategyId, "StrategyID");
                StrategyList.Add(strategy);
            }
            return StrategyList;
        }

        public TreatmentPlan GetTreatmentPlan(int id)
        {
            TreatmentPlanBll bll=new TreatmentPlanBll();
            return bll.GetModelByKey(id,"TreatmentPlanID");
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="id">ObjectiveID</param>
        /// <returns></returns>
        public Objective GetObjective(int id)
        {
            ObjectiveBll bll = new ObjectiveBll();
            return bll.GetModelByKey(id, "ObjectiveID");
        }

        public string ItemTitele(string title,string client, string id)
        {
            string strtitle = title.Replace("(client's)", client + "'s").Replace("(client)", client).Replace("name=\"", "name=\"insourcia" + id);
            return strtitle.ToString();
        }

        public string replaceClientName(string title,string name)
        {
            string strtitle = title.Replace("(client's)", name + "'s").Replace("(client)", name);
            return strtitle.ToString();
        }

    }
}