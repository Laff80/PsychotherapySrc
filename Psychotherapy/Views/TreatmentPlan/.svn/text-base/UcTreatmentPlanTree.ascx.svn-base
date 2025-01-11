<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<Insourcia.Psychotherapy.Model.TreatmentPlan>" %>
<%@ Import Namespace="Insourcia.Psychotherapy.Model" %>
<div id="planItem">
<%int TreatmentPlanID = Model.TreatmentPlanID;%>
<%string clientname=Model.Patient.LastName+" , "+ Model.Patient.FirstName+" "+Model.Patient.MiddleName;%>
<%Insourcia.Psychotherapy.Models.TreatmentPlanItemModel models = new Insourcia.Psychotherapy.Models.TreatmentPlanItemModel(); %>
<% IList<Symptom> SymptomItem = models.GetSymptomList(TreatmentPlanID); %>
<%int symptomCount = 1; %>
<%string ClientName = ViewData["ClientFirstName"].ToString(); %>
<%foreach (var symptomOBJ in SymptomItem)
  {%>
    <%if (symptomOBJ == null) continue; %>
    <ul id="ulSymtom<%=symptomOBJ.SymptomID%>">
          <% IList<LongTermGoal> LongTermGoalItem = models.GetLongTermGoalList(TreatmentPlanID, symptomOBJ.SymptomID); %>  
         <li><%:Html.Hidden("hdSelectedSymtom", symptomOBJ.SymptomID, new { id = "", disabled = "disabled" })%>
               <% string symptomItem="Item_"+symptomOBJ.SymptomID; %>
               <% if (LongTermGoalItem.Count > 0 && LongTermGoalItem[0]!=null)
                  {%>
                        <%:Html.Hidden(symptomItem, symptomOBJ.SymptomID, new { id = symptomItem, disabled = "disabled" })%>
                 <% }
                  else
	                {%>
                        <%:Html.Hidden(symptomItem, symptomOBJ.SymptomID, new { id = symptomItem })%>
	               <% } %>
                <b>Symptom <%=Html.Encode(symptomCount++)%></b>  : <%=models.ItemTitele(symptomOBJ.Title, ClientName,"")%> <br />
                <%if (ViewData["action"] == "Update")
                    { %>
                        <b style="color:#FF6600">└> LongTermGoals</b> (select one)<a href="javascript:void(0)" onclick="displayLongTermGoalItem('<%=symptomOBJ.SymptomID %>')">Edit</a>
                    <%} %>
              </li>
         <li>
         
            <%int LongTermGoalCount = 1; %>
            <%foreach (var LongTermGoalOBJ in LongTermGoalItem)
              {%>
              <%if (LongTermGoalOBJ == null) continue; %>
              <% string strLongTermGoalIDs = symptomOBJ.SymptomID + "," + LongTermGoalOBJ.LongTermGoalID; %>
              <ul id="ulLongTermGoal<%=symptomOBJ.SymptomID%><%=LongTermGoalOBJ.LongTermGoalID %>">
                   <% IList<Insourcia.Psychotherapy.Models.ObjectiveModel> ObjectiveModelItem = models.GetObjectiveList(TreatmentPlanID, symptomOBJ.SymptomID, LongTermGoalOBJ.LongTermGoalID); %>
                  <li><%:Html.Hidden("hdSelectedLongTermGoal" + symptomOBJ.SymptomID, LongTermGoalOBJ.LongTermGoalID, new { id = "", disabled = "disabled" })%>
                    <% if (ObjectiveModelItem.Count > 0 && ObjectiveModelItem[0] != null)
                  {%>
                        <%:Html.Hidden("Item_" + symptomOBJ.SymptomID + LongTermGoalOBJ.LongTermGoalID, (symptomOBJ.SymptomID + "," + LongTermGoalOBJ.LongTermGoalID), new { id = "", disabled = "disabled" })%>
                 <% }
                  else
	                {%>
                        <%:Html.Hidden("Item_" + symptomOBJ.SymptomID + LongTermGoalOBJ.LongTermGoalID, (symptomOBJ.SymptomID + "," + LongTermGoalOBJ.LongTermGoalID), new { id = "" })%>
	               <% } %>
                       
                      <b>LongTermGoal <%=Html.Encode(symptomCount - 1 + "." + LongTermGoalCount++)%></b>  : <%=models.ItemTitele(LongTermGoalOBJ.Title, ClientName,"")%><br />
                      <%if (ViewData["action"] == "Update")
                      { %> 
                        <b style="color:#FF6600">└> Objectives</b> (select up to 3)<a href="javascript:void(0)" onclick="displayObjectiveItem('<%=symptomOBJ.SymptomID %>','<%=LongTermGoalOBJ.LongTermGoalID %>')">Edit</a>
                     <%} %>
                      </li>
                  <li>

                      <%int ObjectiveModelCount = 1; %>
                      <%foreach (var ObjectiveModelOBJ in ObjectiveModelItem)
                        {%>
                        <%if (ObjectiveModelOBJ == null) continue; %>
                        <%Objective objective = models.GetObjective(ObjectiveModelOBJ.ObjectiveID); %>
                       <%if (objective == null) continue; %>
                        <% string strObjectiveIDs = symptomOBJ.SymptomID + "," + LongTermGoalOBJ.LongTermGoalID + "," + objective.ObjectiveID; 
                             string strObjectiveIDs2=symptomOBJ.SymptomID.ToString() + LongTermGoalOBJ.LongTermGoalID.ToString() + objective.ObjectiveID.ToString();
                            %>
                        <ul id="ulObjective<%=symptomOBJ.SymptomID%><%=LongTermGoalOBJ.LongTermGoalID%><%=objective.ObjectiveID%>">
                            <% IList<Strategy> StrategyItem = models.GetStrategyList(TreatmentPlanID, symptomOBJ.SymptomID, LongTermGoalOBJ.LongTermGoalID, ObjectiveModelOBJ); %>
                             <li><%:Html.Hidden("hdSelectedObjective" + symptomOBJ.SymptomID + LongTermGoalOBJ.LongTermGoalID, objective.ObjectiveID, new { id = "", disabled = "disabled" })%>
                                 <% if (StrategyItem.Count > 0 && StrategyItem[0] != null)
                                  {%>
                                        <%:Html.Hidden("Item_" + symptomOBJ.SymptomID + LongTermGoalOBJ.LongTermGoalID + objective.ObjectiveID, strObjectiveIDs, new { id = "", disabled = "disabled" })%>
                                 <% }
                                  else
	                                {%>
                                       <%:Html.Hidden("Item_" + symptomOBJ.SymptomID + LongTermGoalOBJ.LongTermGoalID + objective.ObjectiveID, strObjectiveIDs, new { id = "" })%>
	                               <% } %>  
                                   
                                 <b>Objective  <%=Html.Encode((symptomCount - 1) + "." + (LongTermGoalCount - 1) + "." + ObjectiveModelCount++)%></b>  : <%=models.ItemTitele(objective.Title, ClientName, strObjectiveIDs2)%><br />
                               
                                <%if (!(string.IsNullOrEmpty(objective.EndValue) && string.IsNullOrEmpty(objective.StartValue) && string.IsNullOrEmpty(objective.Measure)))
                                  {%>
                                      <%decimal j = (Decimal)((Decimal.Parse(objective.EndValue) - Decimal.Parse(objective.StartValue)) / objective.Space); %>
                                       Duration : <select name="insourcia<%=strObjectiveIDs2 %>">
                                                           <%for (int i = 1; i <= j; i++)
                                                             {%>
			                                                       <%decimal t = (decimal)(Decimal.Parse(objective.StartValue) + objective.Space * i); %>
                                                                   <option><%=Html.Encode(t.ToString("#0"))%></option>
			                                               <% } %>
                                                  </select><b> <%:objective.Measure%></b><br />
                                 <%} %>
                                <%if (ViewData["action"] == "Update")
                                { %>
                                    <b style="color:#FF6600">└> Therapeutic Strategies</b> (select up to 3)<a href="javascript:void(0)" onclick="displayStrategyItem('<%=symptomOBJ.SymptomID %>','<%=LongTermGoalOBJ.LongTermGoalID %>','<%=objective.ObjectiveID %>')">Edit</a>
                                <%} %>
                             </li>
                             <li>
                                  
                                  <%int StrategyCount = 1; %>
                                  <%foreach (var StrategyOBJ in StrategyItem)
                                    {%>
                                      <%if (StrategyOBJ == null) continue; %>
                                      <% string strStrategyIDs = symptomOBJ.SymptomID + "," + LongTermGoalOBJ.LongTermGoalID + "," + objective.ObjectiveID + "," + StrategyOBJ.StrategyID; %>
                                      <ul id="ulStrategy<%=symptomOBJ.SymptomID%><%=LongTermGoalOBJ.LongTermGoalID%><%=objective.ObjectiveID%><%=StrategyOBJ.StrategyID %>">
                                           <li><%:Html.Hidden("hdSelectedStrategy" + symptomOBJ.SymptomID + LongTermGoalOBJ.LongTermGoalID + objective.ObjectiveID, StrategyOBJ.StrategyID, new { id = "", disabled = "disabled" })%>
                                               <%:Html.Hidden("Item_" + symptomOBJ.SymptomID + LongTermGoalOBJ.LongTermGoalID + objective.ObjectiveID+StrategyOBJ.StrategyID, strStrategyIDs, new { id = "" })%>
                                              <b>Strategy <%=Html.Encode((symptomCount - 1) + "." + (LongTermGoalCount - 1) + "." + (ObjectiveModelCount - 1) + "." + StrategyCount++)%></b> : <%=models.ItemTitele(StrategyOBJ.Title, ClientName, "")%><br /></li>
                                      </ul>
                                  <%} %>
                             </li>
                       </ul>
                     <%} %>
                  </li>
             </ul>
           <%} %>
         </li>
    </ul>
<%} %>
</div>

