<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<Insourcia.Psychotherapy.Models.TreatmentPlanItemModel>" %>
<%@ Import Namespace="Insourcia.Psychotherapy.Model" %>
<table class="tpItem" id="qANDa" >
        <tr>
            <th style=" width:75%"></th>
            <th>Worked On?</th>
            <th>Complete?</th>
        </tr>
        <%int TreatmentPlanID = Convert.ToInt32(Request.QueryString["tpid"]);%>
        <%string ClientName = ViewData["ClientFirstName"].ToString(); %>
        <%Insourcia.Psychotherapy.Models.TreatmentPlanItemModel models = new Insourcia.Psychotherapy.Models.TreatmentPlanItemModel(); %>
        <% IList<Symptom> SymptomItem = models.GetSymptomList(TreatmentPlanID); %>
        <%int symptomCount = 1; %>
        <%foreach (var symptomOBJ in SymptomItem)
        {%>
                <%if (symptomOBJ == null) continue; %>
                <tr>
                    <td><b>Symptom <%=Html.Encode(symptomCount++)%></b>  : <%=models.ItemTitele(symptomOBJ.Title, ClientName, "")%></td>
                    <td></td>
                    <td></td>
                </tr>
                <% IList<LongTermGoal> LongTermGoalItem = models.GetLongTermGoalList(TreatmentPlanID, symptomOBJ.SymptomID); %>
                <%int LongTermGoalCount = 1; %>
                <%foreach (var LongTermGoalOBJ in LongTermGoalItem)
                    {%>
                    <%if (LongTermGoalOBJ == null) continue; %>
                    <tr>
                        <td style=" padding-left:60px;"><b>LongTermGoal <%=Html.Encode(symptomCount - 1 + "." + LongTermGoalCount++)%></b>  : <%=models.ItemTitele(LongTermGoalOBJ.Title,ClientName,"")%></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <% IList<Insourcia.Psychotherapy.Models.ObjectiveModel> ObjectiveModelItem = models.GetObjectiveList(TreatmentPlanID, symptomOBJ.SymptomID, LongTermGoalOBJ.LongTermGoalID); %>
                    <%int ObjectiveModelCount = 1; %>
                    <%foreach (var ObjectiveModelOBJ in ObjectiveModelItem)
                        {%>
                            <%if (ObjectiveModelOBJ == null) continue; %>
                            <%Objective objective = models.GetObjective(ObjectiveModelOBJ.ObjectiveID); %>
                            <%if (objective == null) continue; %>
                            <% string strObjectiveIDs = symptomOBJ.SymptomID + "," + LongTermGoalOBJ.LongTermGoalID + "," + objective.ObjectiveID; %>
                            <tr>
                                <td style=" padding-left:90px;"><b>Objective <%=Html.Encode((symptomCount - 1) + "." + (LongTermGoalCount - 1) + "." + ObjectiveModelCount++)%></b>  :  <%=models.ItemTitele(objective.Title,ClientName,"")%></td>
                                <td><input type="radio" value="Yes" name="ObjectiveIsWorkedOn_<%=strObjectiveIDs %>" /> Yes <input type="radio" value="No" name="ObjectiveIsWorkedOn_<%=strObjectiveIDs %>" checked="checked" /> No</td>
                                <td><input type="radio" value="Yes" name="ObjectiveIsComplete_<%=strObjectiveIDs %>" /> Yes <input type="radio" value="No" name="ObjectiveIsComplete_<%=strObjectiveIDs %>" checked="checked"/> No</td>
                            </tr>
                            <% IList<Strategy> StrategyItem = models.GetStrategyList(TreatmentPlanID, symptomOBJ.SymptomID, LongTermGoalOBJ.LongTermGoalID, ObjectiveModelOBJ); %>
                            <%int StrategyCount = 1; %>
                            <%foreach (var StrategyOBJ in StrategyItem)
                                {%>
                                    <%if (StrategyOBJ == null) continue; %>
                                    <% string strStrategyIDs = symptomOBJ.SymptomID + "," + LongTermGoalOBJ.LongTermGoalID + "," + objective.ObjectiveID + "," + StrategyOBJ.StrategyID; %>
                                    <tr>
                                    <td style=" padding-left:120px;"><b>Strategy <%=Html.Encode((symptomCount - 1) + "." + (LongTermGoalCount - 1) + "." + (ObjectiveModelCount - 1) + "." + StrategyCount++)%></b> : <%=models.ItemTitele(StrategyOBJ.Title,ClientName,"")%></td>
                                    <td><input type="radio" value="Yes" name="StrategyIsWorkdeOn_<%=strStrategyIDs %>" /> Yes <input type="radio" value="No" name="StrategyIsWorkdeOn_<%=strStrategyIDs %>" checked="checked"/> No</td>
                                    <td></td>
                                    </tr>
                            <%} %>
                        <% } %>
                <%} %>
        <%} %>
</table>