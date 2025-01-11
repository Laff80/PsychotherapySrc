using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Insourcia.Psychotherapy.Bll;
using System.Linq.Expressions;
using LinqKit;
using Insourcia.WebControls.MvcPaging;
using Insourcia.Psychotherapy.Model;
using Psychotherapy.Utility;
using Insourcia.Common;
using Psychotherapy.Models;
using Insourcia.Common.Web;

namespace Psychotherapy.Controllers
{
    [SessionTimeOutFilterAttribute]
    public class TreatmentPlanController : BaseController
    {
        //
        // GET: /TreatmentPlan/
        /// <summary>
        /// 
        /// </summary>
        /// <param name="id">当前页数</param>
        /// <returns></returns>
        public ActionResult TreatmentPlanList(int? id,  int patientID)
        {
            try
            {
                TreatmentPlanBll bll = new TreatmentPlanBll();
                Expression<Func<TreatmentPlan, bool>> filter = PredicateBuilder.True<TreatmentPlan>();
                //filter = filter.And(T => T.PatientID == patientID);
                //filter = filter.And(T => T.UserId == UserID);
                ViewData["patientID"] = patientID;

                IPagedList<TreatmentPlan> list = bll.GetPagedTreatmentPlanList(id ?? 1, 12, filter);
                return View(list);
            }
            catch (Exception ex)
            {
                return PartialView("Error");
            }
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="id">当前页数</param>
        /// <param name="patientID"></param>
        /// <returns></returns>
        public ActionResult TreatmentPlanPagedList(int? id, int patientID, FormCollection forms)
        {
            string strKeyword = HttpRequestUtils.GetString("keyword",string.Empty);
            try
            {
                TreatmentPlanBll bll = new TreatmentPlanBll();
                Expression<Func<TreatmentPlan, bool>> filter = PredicateBuilder.True<TreatmentPlan>();  
                if (!string.IsNullOrWhiteSpace(strKeyword))
                {

                    DateTime stime = Converter.ToDateTime(strKeyword,DateTime.MinValue);
                    filter = p => p.PatientID == patientID
                        && (p.Patient.Site.SiteName.Contains(strKeyword)
                        || p.Status.Contains(strKeyword)
                        || (p.LastModifiedTime.Value.CompareTo(stime) == 0));
                }



                ViewData["patientId"] = patientID;
                IPagedList<TreatmentPlan> list = bll.GetPagedTreatmentPlanList(id ?? 1, 12, filter);

                return PartialView("UcTreatmentPlansList", list);
            }
            catch (Exception ex)
            {
                return PartialView("Error");
            }
        }
        public ActionResult Create(FormCollection forms)
        {
            TreatmentPlan treatmentPlan = new TreatmentPlan();
            int patientID = Int32.Parse(forms["patientID"]);

            treatmentPlan.PatientID = patientID;
            treatmentPlan.Status = "In development";
            treatmentPlan.CreateTime = DateTime.Now;
            treatmentPlan.UserId = ClientID;
            treatmentPlan.LastModifiedTime = DateTime.Now;

            treatmentPlan.IsValid = true;
            try
            {
                TreatmentPlanBll bll = new TreatmentPlanBll();
                //Expression<Func<TreatmentPlan, bool>> filter = PredicateBuilder.True<TreatmentPlan>();

                if (bll.Add(treatmentPlan))
                {
                    return RedirectToAction("TreatmentPlanList", new { id = 1,  patientID = patientID });
                }
                else
                {
                    ModelState.AddModelError("ErrorMsg", "Create failure.");
                }

                //return PartialView("UcTreatmentPlansList", list);
            }
            catch (Exception ex)
            {
                
                //return PartialView("Error");
            }
            return View(treatmentPlan);
        }

        public ActionResult Dialog(String id)
        {
            ClusterBll clusterBll = new ClusterBll();
            ProcessGuideBll processGuideBll = new ProcessGuideBll();
            Cluster cluster = null;
            ProcessGuide processGuide = null;
            String[] divs = id.Split(new Char[] { '_' });
            var key = Int32.Parse(divs[1]);
            String title = "";
            if ("cluster".Equals(divs[0]))
            {
                cluster = clusterBll.GetModelByKey(key, "ClusterID");
                title = cluster.Title;
            }
            else if ("processGuide".Equals(divs[0]))
            {
                processGuide = processGuideBll.GetModelByKey(key, "ProcessGuideID");
                title = processGuide.Title;
            }

            TempData["Title"] = title;
            return View();
        }
        /// <summary>
        /// 
        /// </summary>
        /// <param name="id">病患ID:patientId</param>
        /// <returns></returns>
        public ActionResult TreatmentPlanInfo(int id)
        {
            try
            {
                TreatmentPlanBll treatmentPlanBll = new TreatmentPlanBll();
                TreatmentPlan treatmentPlan = treatmentPlanBll.GetModelByKey(id, "TreatmentPlanID");
               
                ViewData["patientID"] = id;
                return View(treatmentPlan);
            }
            catch (Exception)
            {
                return PartialView("Error");
            }

        }
        public ActionResult TreatmentPlanUpdate(int patientID, int treatmentPlanID)
        {
            try
            {
                TreatmentPlanBll treatmentPlanBll = new TreatmentPlanBll();
                PatientBll patientBll = new PatientBll();
                Patient patient = new Patient();
                TreatmentPlan treatmentPlan = treatmentPlanBll.GetModelByKey(treatmentPlanID, "TreatmentPlanID");
                //ViewData["treatmentPlan"] = treatmentPlan;
                ViewData["patient"] = patient;
                return View(treatmentPlan);
            }
            catch (Exception)
            {
                return PartialView("Error");
            }

        }
        /// <summary>
        /// For TreatmentPlan Edit/Update
        /// </summary>
        /// <param name="id"></param>
        /// <param name="clientName"></param>
        /// <returns></returns>
        public String TreatmentPlanContent(int id, String clientName)
        {
            TreatmentPlanItemBll treatmentPlanItemBll = new TreatmentPlanItemBll();
            SymptomBll symptomBll = new SymptomBll();
            LongTermGoalBll longTermGoalBll = new LongTermGoalBll();
            ObjectiveBll objectiveBll = new ObjectiveBll();
            StrategyBll strategyBll = new StrategyBll();
            Expression<Func<TreatmentPlanItem, bool>> where = PredicateBuilder.True<TreatmentPlanItem>();
            where = t => t.TreatmentPlanID == id;
            Expression<Func<TreatmentPlanItem, int>> sortExpr = t => t.SymptomID.Value;
            Expression<Func<TreatmentPlanItem, int>> selector = t => t.SymptomID.Value;
            IList<int> symptomIdList = treatmentPlanItemBll.FindOrderByDescendingResult<int, int>(where, sortExpr, selector).Distinct().ToList();
            String temp = "", printString = "";
            String objectName="jay";
            Boolean hasTreatmentPlan = true;
            String printDiv = "<div class=\"printSymptoms\" id=\"printSymptoms\">";
            temp += "<div class=\"symptoms\" id=\"symptoms\">";
            int symptomNumber = 1;
            foreach (int symptomId in symptomIdList)
            {
                Symptom symptom = symptomBll.GetModelByKey(symptomId, "SymptomID");


                if (symptom != null)
                {

                    temp += "<div class=\"symptom\" id=\"symptom" + symptom.SymptomID + "\">";

                    temp += "<div class=\"symptomContent\"><div style=\"width:15px; float:left;\"></div><div class=\"leftSymptomContent\" style=\"line-height:25px;\"><strong style=\"font-size: 16px;\">Symptom/Problem " + symptomNumber + ":</strong>" + symptom.Title.Replace("(client's)", objectName + "'s").Replace("(client)", objectName) + "</div></div>";
                    temp += "<div class=\"allSymptomContent\" style=\"display:block\" id=\"allSymptomContent" + symptom.SymptomID + "\">";
                    temp += "<div class=\"longTermGoals\">";
                    printString += "<Symptom><![CDATA[" + symptom.Title.Replace("(client's)", objectName + "'s").Replace("(client)", objectName) + "]]>";
                    printDiv += "<div class=\"printSymptom\">" + toXMLString(symptom.Title.Replace("(client's)", objectName + "'s").Replace("(client)", objectName));
                    //				     printString+="<LongTermGoals>";
                    Expression<Func<TreatmentPlanItem, bool>> longTermGoalWhere = PredicateBuilder.True<TreatmentPlanItem>();
                    longTermGoalWhere = t => t.TreatmentPlanID == id;
                    longTermGoalWhere = t => t.SymptomID == symptomId;
                    Expression<Func<TreatmentPlanItem, int>> longTermGoalSortExpr = t => t.LongTermGoalID.Value;
                    Expression<Func<TreatmentPlanItem, int>> longTermGoalSelector = t => t.LongTermGoalID.Value;
                    IList<int> longTermGoalIdList = treatmentPlanItemBll.FindOrderByDescendingResult<int, int>(longTermGoalWhere, longTermGoalSortExpr, longTermGoalSelector).Distinct().ToList();//group by LongTermGoal
                    hasTreatmentPlan = false;
                    int longTermGoalNumber = 1;
                    foreach (int longTermGoalId in longTermGoalIdList)
                    {
                        LongTermGoal longTermGoal = longTermGoalBll.GetModelByKey(longTermGoalId, "LongTermGoalID");
                        if (longTermGoal != null)
                        {

                            temp += "<div class=\"longTermGoal\">";

                            temp += "<div class=\"longTermGoalContent\">";
                            temp += "<div style=\"width:15px; float:left;\"></div>";
                            temp += "<div class=\"leftLongTermGoalContent\" style=\"float:left;line-height:25px;\"><strong style=\"font-size: 14px;\">Long Term Goal " + symptomNumber + "." + longTermGoalNumber + ":</strong>";
                            //					    	  temp+="";
                            temp += longTermGoal.Title.Replace("(client's)", objectName + "'s").Replace("(client)", objectName);
                            temp += "</div>";
                            temp += "<div class=\"rightLongTermGoalContent\" style=\"float:left;\"></div>";
                            temp += "</div>";
                            temp += "<div class=\"allLongTermGoal\" style=\"display:block\" id=\"allLongTermGoalContent" + symptom.SymptomID + longTermGoal.LongTermGoalID + "\">";
                            temp += "<div class=\"objectives\">";
                            printString += "<LongTermGoal><![CDATA[" + longTermGoal.Title.Replace("(client's)", objectName + "'s").Replace("(client)", objectName) + "]]>";
                            printDiv += "<div class=\"printLongTermGoal\">" + toXMLString(longTermGoal.Title.Replace("(client's)", objectName + "'s").Replace("(client)", objectName));

                            Expression<Func<TreatmentPlanItem, bool>> objectiveWhere = PredicateBuilder.True<TreatmentPlanItem>();
                            objectiveWhere = t => t.TreatmentPlanID == id;
                            objectiveWhere = t => t.SymptomID == symptomId;
                            objectiveWhere = t => t.LongTermGoalID == longTermGoalId;
                            Expression<Func<TreatmentPlanItem, int>> objectiveSortExpr = t => t.ObjectiveID.Value;
                            Expression<Func<TreatmentPlanItem, ObjectiveModel>> objectiveSelector = t => new ObjectiveModel { ObjectiveID = t.ObjectiveID.Value, Count = t.Count, Measure = t.Measure };
                            IList<ObjectiveModel> objectiveModeList = treatmentPlanItemBll.FindOrderByDescendingResult<int, ObjectiveModel>(objectiveWhere, objectiveSortExpr, objectiveSelector).Distinct().ToList();
                            int objectiveNumber = 1;
                            foreach (ObjectiveModel objectiveModel in objectiveModeList)
                            {
                                Objective objective = objectiveBll.GetModelByKey(objectiveModel.ObjectiveID, "ObjectiveID");
                                if (objective != null)
                                {

                                    temp += "<div class=\"objective\">";

                                    temp += "<div class=\"objectiveContent\">";
                                    temp += "<div style=\"width:15px; float:left;\"></div>";
                                    temp += "<div class=\"leftObjectiveContent\" style=\"float:left;line-height:25px;\"><strong style=\"font-size: 14px;\">Objective " + symptomNumber + "." + longTermGoalNumber + "." + objectiveNumber + ":</strong>";
                                    if (!"".Equals(objective.EndValue) && !"".Equals(objective.StartValue) && !"".Equals(objective.Measure))
                                    {
                                        if (objective.EndValue != null && objective.StartValue != null && objective.Measure != null)
                                        {
                                            temp += "within " + objectiveModel.Count + " " + objectiveModel.Measure + ",";
                                        }
                                    }


                                    temp += changeNameTitle(objective.Title.Replace("(client's)", objectName + "'s").Replace("(client)", objectName), symptom.SymptomID + "" + longTermGoal.LongTermGoalID + objective.ObjectiveID);
                                    temp += "</div>";
                                    temp += "<div class=\"centerObjectiveContent\" style=\"float:left;line-height:25px;\">  ";
                                    temp += "</div>";
                                    temp += "<div class=\"rightObjectiveContent\" style=\"float:left;\">";
                                    temp += "</div>";
                                    temp += "</div>";
                                    temp += "<div class=\"allObjective\" style=\"display:block\" id=\"allObjectiveContent" + symptom.SymptomID + longTermGoal.LongTermGoalID + objective.ObjectiveID + "\">";
                                    temp += "<div class=\"strategies\">";
                                    printDiv += "<div class=\"printObjective\">" + toXMLString(changeNameTitle(objective.Title.Replace("(client's)", objectName + "'s").Replace("(client)", objectName), symptom.SymptomID + "" + longTermGoal.LongTermGoalID + objective.ObjectiveID));
                                    printString += "<Objective><![CDATA[" + changeNameTitle(objective.Title.Replace("(client's)", objectName + "'s").Replace("(client)", objectName), symptom.SymptomID + "" + longTermGoal.LongTermGoalID + objective.ObjectiveID) + "]]>";

                                    Expression<Func<TreatmentPlanItem, bool>> strategyWhere = PredicateBuilder.True<TreatmentPlanItem>();
                                    strategyWhere = t => t.TreatmentPlanID == id;
                                    strategyWhere = t => t.SymptomID == symptomId;
                                    strategyWhere = t => t.LongTermGoalID == longTermGoalId;
                                    strategyWhere = t => t.ObjectiveID == objectiveModel.ObjectiveID;
                                    Expression<Func<TreatmentPlanItem, int>> strategySortExpr = t => t.StrategyID.Value;
                                    Expression<Func<TreatmentPlanItem, int>> strategySelector = t => t.StrategyID.Value;
                                    IList<int> strategyIdList = treatmentPlanItemBll.FindOrderByDescendingResult<int, int>(strategyWhere, strategySortExpr, strategySelector).Distinct().ToList();
                                    int strategyNumber = 1;
                                    foreach (int strategyId in strategyIdList)
                                    {
                                        Strategy strategy = strategyBll.GetModelByKey(strategyId, "StrategyId");
                                        if (strategy != null)
                                        {
                                            temp += "<div class=\"strategy\">";

                                            temp += "<div class=\"strategyContent\">";
                                            temp += "<div class=\"leftStrategyContent\" style=\"float:left;line-height:25px; margin-left:15px;\"><strong style=\"font-size: 14px;\">Therapeutic Strategy " + symptomNumber + "." + longTermGoalNumber + "." + objectiveNumber + "." + strategyNumber + ":</strong>";
                                            temp += strategy.Title.Replace("(client's)", objectName + "'s").Replace("(client)", objectName);
                                            temp += "</div>";
                                            temp += "<div class=\"rightStrategyContent\" style=\"float:left;\">";
                                            temp += "</div>";
                                            temp += "</div>";
                                            temp += "</div>";
                                            printString += "<Strategy><![CDATA[" + strategy.Title.Replace("(client's)", objectName + "'s").Replace("(client)", objectName) + "]]>";
                                            printString += "</Strategy>";
                                            printDiv += "<div class=\"printStrategy\">" + toXMLString(strategy.Title.Replace("(client's)", objectName + "'s").Replace("(client)", objectName));
                                            printDiv += "</div>";
                                            strategyNumber++;
                                        }


                                    }

                                    printDiv += "</div>";
                                    printString += "</Objectivel>";
                                    temp += "</div>";
                                    temp += "</div>";
                                    temp += "</div>";
                                }
                                objectiveNumber++;
                            }

                            printDiv += "</div>";
                            printString += "</LongTermGoal>";
                            temp += "</div>";
                            temp += "</div>";
                            temp += "</div>";

                        }
                        longTermGoalNumber++;
                    }

                    printDiv += "</div>";
                    printString += "</Symptom>";
                    temp += "</div>";

                    temp += "</div>";//allSymptomContent end
                    temp += "</div>";
                }
                symptomNumber++;

            }
            printDiv += "</div>";
            temp += "</div>";
            printString += "</Symptoms>";

            temp += "<div id=\"treatmentPrintPlan\" style=\"display:none\">";
            temp += printDiv;
            temp += "</div>";
            if (!hasTreatmentPlan)
            {
                return temp;
            }
            else
            {
                return "null";
            }
        }
        /// <summary>
        /// 
        /// </summary>
        /// <param name="id">TreatmentPlanID</param>
        /// <param name="patientID">patientID</param>
        /// <returns></returns>
        public String TreatmentPlanInfoContent(int id, int patientID)
        {
            TreatmentPlanItemBll treatmentPlanItemBll = new TreatmentPlanItemBll();
            // TreatmentPlanBll treatmentPlanBll = new TreatmentPlanBll();
            SymptomBll symptomBll = new SymptomBll();
            LongTermGoalBll longTermGoalBll = new LongTermGoalBll();
            ObjectiveBll objectiveBll = new ObjectiveBll();
            StrategyBll strategyBll = new StrategyBll();
            PatientBll patientBll=new PatientBll();
            Patient patient=patientBll.GetPatientByID(patientID);
            //TreatmentPlan treatmentPlan=treatmentPlanBll.GetModelByKey(id,"TreatmentPlanID");
            String objectName=patient.LastName + " , " + patient.FirstName + " " + patient.LastName;
            Expression<Func<TreatmentPlanItem, bool>> where = PredicateBuilder.True<TreatmentPlanItem>();
            where = t => t.TreatmentPlanID == id;
            Expression<Func<TreatmentPlanItem, int>> sortExpr = t => t.SymptomID.Value;
            Expression<Func<TreatmentPlanItem, int>> selector = t => t.SymptomID.Value;
            IList<int> symptomIdList = treatmentPlanItemBll.FindOrderByDescendingResult<int, int>(where, sortExpr, selector).Distinct().ToList();
            
            String temp = "";
            String printString = "";	
            Boolean hasTreatmentPlan = true;
            String printDiv = "<div class=\"printSymptoms\" id=\"printSymptoms\">";
            temp += "<div class=\"symptoms\" id=\"symptoms\">";
            int symptomNumber = 1;
            foreach(int symptomId in symptomIdList){
                
                Symptom symptom=symptomBll.GetModelByKey(symptomId,"SymptomID");
				 if(symptom!=null){
					
					 temp+="<div class=\"symptom\" id=\"symptom"+symptom.SymptomID+"\">";
 
				     temp+="<div class=\"symptomContent\"><div style=\"width:15px; float:left;\"></div><div class=\"leftSymptomContent\" style=\"line-height:25px;\"><strong style=\"font-size: 16px;\">Symptom/Problem "+symptomNumber+":</strong>"+symptom.Title.Replace("(client's)", objectName+"'s").Replace("(client)", objectName)+"</div></div>";
				     temp+="<div class=\"allSymptomContent\" style=\"display:block\" id=\"allSymptomContent"+symptom.SymptomID+"\">";
				     temp+="<div class=\"longTermGoals\">";
				     printString+="<Symptom><![CDATA["+symptom.Title.Replace("(client's)", objectName+"'s").Replace("(client)", objectName)+"]]>";
				     printDiv+="<div class=\"printSymptom\">"+toXMLString(symptom.Title.Replace("(client's)", objectName+"'s").Replace("(client)", objectName));
//				     printString+="<LongTermGoals>";
				     Expression<Func<TreatmentPlanItem, bool>> longTermGoalWhere = PredicateBuilder.True<TreatmentPlanItem>();
                    longTermGoalWhere = t => t.TreatmentPlanID == id;
                    longTermGoalWhere = t => t.SymptomID == symptomId;
                    Expression<Func<TreatmentPlanItem, int>> longTermGoalSortExpr = t => t.LongTermGoalID.Value;
                    Expression<Func<TreatmentPlanItem, int>> longTermGoalSelector = t => t.LongTermGoalID.Value;
                    IList<int> longTermGoalIdList = treatmentPlanItemBll.FindOrderByDescendingResult<int, int>(longTermGoalWhere, longTermGoalSortExpr, longTermGoalSelector).Distinct().ToList();//group by LongTermGoal
                    
				     hasTreatmentPlan=false;
				     int longTermGoalNumber=1;
				     foreach(int longTermGoalId in longTermGoalIdList){
                         LongTermGoal longTermGoal=longTermGoalBll.GetModelByKey(longTermGoalId,"LongTermGoalID");
				    	 if(longTermGoal!=null){
				    		 
					    	  temp+="<div class=\"longTermGoal\">";

					    	  temp+="<div class=\"longTermGoalContent\">";
					    	  temp+="<div style=\"width:15px; float:left;\"></div>";
					    	  temp+="<div class=\"leftLongTermGoalContent\" style=\"float:left;line-height:25px;\"><strong style=\"font-size: 14px;\">Long Term Goal "+symptomNumber+"."+longTermGoalNumber+":</strong>";
//					    	  temp+="";
					    	  temp+=longTermGoal.Title.Replace("(client's)", objectName+"'s").Replace("(client)", objectName);
					    	  temp+="</div>";
					    	  temp+="<div class=\"rightLongTermGoalContent\" style=\"float:left;\"></div>";
					    	  temp+="</div>";
					    	  temp+="<div class=\"allLongTermGoal\" style=\"display:block\" id=\"allLongTermGoalContent"+symptom.SymptomID+longTermGoal.LongTermGoalID+"\">";
					    	  temp+="<div class=\"objectives\">";
					    	  printString+="<LongTermGoal><![CDATA["+longTermGoal.Title.Replace("(client's)", objectName+"'s").Replace("(client)", objectName)+"]]>";
					    	  printDiv+="<div class=\"printLongTermGoal\">"+toXMLString(longTermGoal.Title.Replace("(client's)", objectName+"'s").Replace("(client)", objectName));
					    	  Expression<Func<TreatmentPlanItem, bool>> objectiveWhere = PredicateBuilder.True<TreatmentPlanItem>();
                            objectiveWhere = t => t.TreatmentPlanID == id;
                            objectiveWhere = t => t.SymptomID == symptomId;
                            objectiveWhere = t => t.LongTermGoalID == longTermGoalId;
                            Expression<Func<TreatmentPlanItem, int>> objectiveSortExpr = t => t.ObjectiveID.Value;
                            Expression<Func<TreatmentPlanItem, ObjectiveModel>> objectiveSelector = t => new ObjectiveModel { ObjectiveID = t.ObjectiveID.Value, Count = t.Count, Measure = t.Measure };
                            IList<ObjectiveModel> objectiveModeList = treatmentPlanItemBll.FindOrderByDescendingResult<int, ObjectiveModel>(objectiveWhere, objectiveSortExpr, objectiveSelector).Distinct().ToList();
                            
					    	  int objectiveNumber=1;
					    	 foreach (ObjectiveModel objectiveModel in objectiveModeList)
                            {
                                Objective objective = objectiveBll.GetModelByKey(objectiveModel.ObjectiveID, "ObjectiveID");
					    		if(objective!=null){
						    		  
						    		  temp+="<div class=\"objective\">";
 
						    		  temp+="<div class=\"objectiveContent\">";
						    		  temp+="<div style=\"width:15px; float:left;\"></div>";
						    		  temp+="<div class=\"leftObjectiveContent\" style=\"float:left;line-height:25px;\"><strong style=\"font-size: 14px;\">Objective "+symptomNumber+"."+longTermGoalNumber+"."+objectiveNumber+":</strong>";
						    		  if(!"".Equals(objective.EndValue)&&!"".Equals(objective.StartValue)&&!"".Equals(objective.Space)&&!"".Equals(objective.Measure)){
					    		    	  if(objective.EndValue!=null&&objective.StartValue!=null&&objective.Space!=null&&objective.Measure!=null){
					    		    		  temp+="within "+objectiveModel.Count+" "+objectiveModel.Measure+",";
					    		    	  }
						    		  }
					    		    	
						    		  
						    		  temp+=changeNameTitle(objective.Title.Replace("(client's)", objectName+"'s").Replace("(client)", objectName),symptom.SymptomID+""+longTermGoal.LongTermGoalID+objective.ObjectiveID);
						    		  temp+="</div>";
						    		  temp+="<div class=\"centerObjectiveContent\" style=\"float:left;line-height:25px;\">  ";
						    		  temp+="</div>";
						    		  temp+="<div class=\"rightObjectiveContent\" style=\"float:left;\">";
						    		  temp+="</div>";
						    		  temp+="</div>";
						    		  temp+="<div class=\"allObjective\" style=\"display:block\" id=\"allObjectiveContent"+symptom.SymptomID+longTermGoal.LongTermGoalID+objective.ObjectiveID+"\">";
						    		  temp+="<div class=\"strategies\">";
						    		  printDiv+="<div class=\"printObjective\">"+toXMLString(changeNameTitle(objective.Title.Replace("(client's)", objectName+"'s").Replace("(client)", objectName),symptom.SymptomID+""+longTermGoal.LongTermGoalID+objective.ObjectiveID));
						    		  printString+="<Objective><![CDATA["+changeNameTitle(objective.Title.Replace("(client's)", objectName+"'s").Replace("(client)", objectName),symptom.SymptomID+""+longTermGoal.LongTermGoalID+objective.ObjectiveID)+"]]>";
						    		  Expression<Func<TreatmentPlanItem, bool>> strategyWhere = PredicateBuilder.True<TreatmentPlanItem>();
                                        strategyWhere = t => t.TreatmentPlanID == id;
                                    strategyWhere = t => t.SymptomID == symptomId;
                                    strategyWhere = t => t.LongTermGoalID == longTermGoalId;
                                    strategyWhere = t => t.ObjectiveID == objectiveModel.ObjectiveID;
                                    Expression<Func<TreatmentPlanItem, int>> strategySortExpr = t => t.StrategyID.Value;
                                    Expression<Func<TreatmentPlanItem, int>> strategySelector = t => t.StrategyID.Value;
                                    IList<int> strategyIdList = treatmentPlanItemBll.FindOrderByDescendingResult<int, int>(strategyWhere, strategySortExpr, strategySelector).Distinct().ToList();
                                    
						    		  int strategyNumber=1;
						    		  foreach(int strategyId in strategyIdList){
                                          Strategy strategy = strategyBll.GetModelByKey(strategyId,"StrategyID");
                                          if (strategy!=null)
                                          {
						    				 
							    			  temp+="<div class=\"strategy\">";

							    			  temp+="<div class=\"strategyContent\">";
							    			  temp+="<div class=\"leftStrategyContent\" style=\"float:left;line-height:25px; margin-left:15px;\"><strong style=\"font-size: 14px;\">Therapeutic Strategy "+symptomNumber+"."+longTermGoalNumber+"."+objectiveNumber+"."+strategyNumber+":</strong>";
							    			  temp+=strategy.Title.Replace("(client's)", objectName+"'s").Replace("(client)", objectName);
							    			  temp+="</div>";
							    			  temp+="<div class=\"rightStrategyContent\" style=\"float:left;\">";
							    			  temp+="</div>";
							    			  temp+="</div>";
							    			  temp+="</div>";
							    			  printString+="<Strategy><![CDATA["+strategy.Title.Replace("(client's)", objectName+"'s").Replace("(client)", objectName)+"]]>";
							    			  printString+="</Strategy>";
							    			  printDiv+="<div class=\"printStrategy\">"+toXMLString(strategy.Title.Replace("(client's)", objectName+"'s").Replace("(client)", objectName));
							    			  printDiv+="</div>";
							    			  strategyNumber++;
						    			  }
						    			 
						    			  
						    		  }
						    		  
						    		  printDiv+="</div>";
									  printString+="</Objectivel>";
						    		  temp+="</div>";
						    		  temp+="</div>";
						    		  
						    		  temp+="</div>";
						    	  }
					    		 objectiveNumber++;
					    		}
					    	 
					    	  printDiv+="</div>";
							  printString+="</LongTermGoal>";
					    	  temp+="</div>";
					    	  temp+="</div>";
					    	  temp+="</div>";
					       
					     }
				    	 longTermGoalNumber++;
				    	 }
				    
				     printDiv+="</div>";
				     printString+="</Symptom>";
				     temp+="</div>";
				    
				     temp+="</div>";//allSymptomContent end
				     temp+="</div>";
				 }
				 symptomNumber++;
				 
            }
            printDiv+="</div>";
		     temp+="</div>";
		     printString+="</Symptoms>";
		     
		    temp+="<div id=\"treatmentPrintPlan\" style=\"display:none\">";
		    temp+=printDiv;
		    temp+="</div>";
		     if(!hasTreatmentPlan){
		    	 return temp;
		     }else{
                 return "null";
		     }
        }
        private String changeNameTitle(String title, String id)
        {
            String nameTitle = title.Replace("name=\"", "name=\"insourcia" + id);
            String name = nameTitle.Replace("id=\"", "id=\"insourcia" + id);
            return name;
            //return null;
        }
        private String toXMLString(String printTreatmentPlanString)
        {
            printTreatmentPlanString.Replace("<", "&lt;");
            printTreatmentPlanString.Replace(">", "&gt;");
            printTreatmentPlanString.Replace("&", "&amp;");
            printTreatmentPlanString.Replace("'", "&apos;");
            printTreatmentPlanString.Replace("\"", "&quot;");
            return printTreatmentPlanString;
        }

    }

}
