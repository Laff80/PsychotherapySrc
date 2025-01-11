<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<dynamic>" %>
<%@ Import Namespace="Insourcia.Psychotherapy.Model" %>

<table  class="tpItem">
        <tr>
             <td><h3>Rating</h3></td>
        </tr>
        <%int TreatmentPlanID = Convert.ToInt32(Request.QueryString["tpid"]);%>
        <%string ClientName = Session["ClientName"] != null ? Session["ClientName"].ToString() : ""; %>
        <%Insourcia.Psychotherapy.Models.TreatmentPlanItemModel models = new Insourcia.Psychotherapy.Models.TreatmentPlanItemModel(); %>
        <% IList<Symptom> SymptomItem = models.GetSymptomList(TreatmentPlanID); %>
        <%int symptomCount = 1; %>
        <%string symptomIDs = string.Empty; %>
        <%foreach (var symptomOBJ in SymptomItem)
          {%>
               <%if (symptomOBJ == null) continue; %>
               <tr>
                   <td>
                        <b>Problem / Symptom #<%=Html.Encode(symptomCount++)%></b><br />
                        <%symptomIDs = symptomIDs + symptomOBJ.SymptomID + ","; %>
                        <%=models.ItemTitele(symptomOBJ.Title,ClientName,"")%><br />
                        <b>Client</b><br />
                       <input type="radio" name="Client_<%=symptomOBJ.SymptomID %>" value="1" checked="checked"/>1-Poor
                       <input type="radio" name="Client_<%=symptomOBJ.SymptomID %>" value="2"/>2
                       <input type="radio" name="Client_<%=symptomOBJ.SymptomID %>" value="3"/>3
                       <input type="radio" name="Client_<%=symptomOBJ.SymptomID %>" value="4"/>4
                       <input type="radio" name="Client_<%=symptomOBJ.SymptomID %>" value="5"/>5-Good<br />
                       <b>Therapist</b><br />
                       <input type="radio" name="Therapist_<%=symptomOBJ.SymptomID %>" value="1" checked="checked"/>1-Poor
                       <input type="radio" name="Therapist_<%=symptomOBJ.SymptomID %>" value="2"/>2
                       <input type="radio" name="Therapist_<%=symptomOBJ.SymptomID %>" value="3"/>3
                       <input type="radio" name="Therapist_<%=symptomOBJ.SymptomID %>" value="4"/>4
                       <input type="radio" name="Therapist_<%=symptomOBJ.SymptomID %>" value="5"/>5-Good
                   </td>
               </tr>
        <%} %>
        <%=Html.Hidden("symptomIDs",symptomIDs) %>
        <tr>
            <td>
                 <%if ((int)ViewData["ClinicalServiceNoteRateCount"] == 0)
                   { %>
                        <input type="submit" value="submit" class="btn-style" />
                 <%} %>
            </td>
        </tr>
</table>
        
