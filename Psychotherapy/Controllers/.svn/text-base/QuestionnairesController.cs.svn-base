using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Psychotherapy.Utility;
using System.Text;
using Insourcia.Psychotherapy.Bll;
using Insourcia.Psychotherapy.Model;
using Insourcia.Common.Web;
using Insourcia.Psychotherapy.Utility.Log;
using System.Linq.Expressions;
using LinqKit;
using System.Collections;

namespace Insourcia.Psychotherapy.Controllers
{
    /// <summary>
    /// 问答
    /// </summary>
    public class QuestionnairesController : BaseController
    {
        #region Symptom
        public ActionResult Symptom()
        {
            try
            {
                int clusterID = Convert.ToInt32(Request.QueryString["clusterId"]);
                int patientID = Convert.ToInt32(Request.QueryString["patientID"]);
                PatientBll patientBll = new PatientBll();
                Patient patient = patientBll.GetPatientByID(patientID);

                SymptomBll symptomBll = new SymptomBll();
                Expression<Func<Symptom, bool>> symptomFilter = PredicateBuilder.True<Symptom>();
                symptomFilter = C => C.Clusters.Any(ct => ct.ClusterID == clusterID);
                IList<Symptom> symptomList = symptomBll.GetSymptomList(symptomFilter);
                foreach (Symptom symptom in symptomList)
                {
                    symptom.Title = symptom.Title.Replace("(client's)", patient.FirstName + "'s").Replace("(client)", patient.FirstName);
                }
                return PartialView("UcSymptomItem", symptomList);

            }
            catch (Exception ex)
            {
                LogHelper.ErrorToDb("Questionnaires", "Symptom", ex);
                return Content(ex.Message);
            }

        }
        #endregion

        #region LongTermGoal
        public ActionResult LongTermGoal()
        {

            try
            {
                int symptomID = Convert.ToInt32(Request.QueryString["symptomId"]);
                int patientID = Convert.ToInt32(Request.QueryString["patientID"]);
                SymptomBll symptomBll = new SymptomBll();
                Symptom symptom = symptomBll.GetModelByKey(symptomID, "SymptomID");
                PatientBll patientBll = new PatientBll();
                Patient patient = patientBll.GetPatientByID(patientID);
                LongTermGoalBll longTermGoalBll = new LongTermGoalBll();
                Expression<Func<LongTermGoal, bool>> longTermGoalFilter = PredicateBuilder.True<LongTermGoal>();
                longTermGoalFilter = C => C.Symptoms.Any(ct => ct.SymptomID == symptomID);
                IList<LongTermGoal> longTermGoalList = longTermGoalBll.GetLongTermGoalList(longTermGoalFilter);
                foreach (LongTermGoal longTermGoal in longTermGoalList)
                {
                    longTermGoal.Title = longTermGoal.Title.Replace("(client's)", patient.FirstName + "'s").Replace("(client)", patient.FirstName);
                }

                ViewData["SymptomId"] = symptomID;
                ViewData["Title"] = symptom.Title.Replace("(client's)", patient.FirstName + "'s").Replace("(client)", patient.FirstName);
                return PartialView("UcLongTermGoalItem", longTermGoalList);
            }
            catch (Exception ex)
            {
                LogHelper.ErrorToDb("Questionnaires", "LongTearmGoal", ex);
                return PartialView("Error");
            }
        }
        
        #endregion

        #region Objective
        public ActionResult Objective()
        {
            try
            {
                int symptomId = Convert.ToInt32(Request.QueryString["symptomId"]);
                int longTermGoalId = Convert.ToInt32(Request.QueryString["longTermGoalId"]);
                int patientID = Convert.ToInt32(Request.QueryString["patientID"]);
                LongTermGoalBll longTermGoalBll = new LongTermGoalBll();
                LongTermGoal LongTermGoal = longTermGoalBll.GetModelByKey(longTermGoalId, "LongTermGoalID");
                PatientBll patientBll = new PatientBll();
                Patient patient = patientBll.GetPatientByID(patientID);
                ObjectiveBll objectiveBll = new ObjectiveBll();
                Expression<Func<Objective, bool>> objectiveFilter = PredicateBuilder.True<Objective>();
                objectiveFilter = C => C.LongTermGoals.Any(ct => ct.LongTermGoalID == longTermGoalId);
                IList<Objective> objectiveList = objectiveBll.GetObjectiveList(objectiveFilter);
                foreach (Objective objective in objectiveList)
                {
                    string objectiveIDs = symptomId.ToString() + longTermGoalId.ToString() + objective.ObjectiveID.ToString();
                    objective.Title = objective.Title.Replace("(client's)", patient.FirstName + "'s").Replace("(client)", patient.FirstName).Replace("name=\"", "name=\"insourcia" + objectiveIDs);
                }
                ViewData["symptomId"] = symptomId;
                ViewData["longTermGoalId"] = longTermGoalId;
                ViewData["Title"] = LongTermGoal.Title.Replace("(client's)", patient.FirstName + "'s").Replace("(client)", patient.FirstName);
                return PartialView("UcObjectiveItem", objectiveList);
            }
            catch (Exception ex)
            {
                LogHelper.ErrorToDb("Questionnaires", "Objective", ex);
                return PartialView("Error");
            }
        }
        #endregion

        #region Strategy
        public ActionResult Strategy()
        {
            try
            {
                int symptomId = Convert.ToInt32(Request.QueryString["symptomId"]);
                int longTermGoalId = Convert.ToInt32(Request.QueryString["longTermGoalId"]);
                int objectiveId = Convert.ToInt32(Request.QueryString["objectiveId"]);
                int patientID = Convert.ToInt32(Request.QueryString["patientID"]);
                ObjectiveBll objectiveBll = new ObjectiveBll();
                Objective objective = objectiveBll.GetModelByKey(objectiveId, "ObjectiveID");
                PatientBll patientBll = new PatientBll();
                Patient patient = patientBll.GetPatientByID(patientID);
                StrategyBll strategyBll = new StrategyBll();
                Expression<Func<Strategy, bool>> strategyFilter = PredicateBuilder.True<Strategy>();
                strategyFilter = C => C.Objectives.Any(ct => ct.ObjectiveID == objectiveId);
                IList<Strategy> strategyList = strategyBll.GetStrategyList(strategyFilter);
                foreach (Strategy strategy in strategyList)
                {
                    strategy.Title = strategy.Title.Replace("(client's)", patient.FirstName + "'s").Replace("(client)", patient.FirstName);
                }

                ViewData["symptomId"] = symptomId;
                ViewData["longTermGoalId"] = longTermGoalId;
                ViewData["objectiveID"] = objectiveId;
                ViewData["Title"] = objective.Title.Replace("(client's)", patient.FirstName + "'s").Replace("(client)", patient.FirstName);
                return PartialView("UcStrategyItem", strategyList);
            }
            catch (Exception ex)
            {
                LogHelper.ErrorToDb("Questionnaires", "Strategy", ex);
                throw new Exception(ex.Message);
            }
        }
        #endregion
    }
}
