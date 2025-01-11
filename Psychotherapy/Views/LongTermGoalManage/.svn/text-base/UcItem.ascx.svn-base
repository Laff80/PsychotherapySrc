<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<IEnumerable<Insourcia.Psychotherapy.Model.LongTermGoal>>" %>
<div class="table_item">
        <%:Html.Hidden("alreadyExistsIDs")%>
        <%:Html.Hidden("SymptomId", ViewData["SymptomId"].ToString())%>
        <table>   
            <tr>
                 <td colspan="2">
                       <b>Symptom: <%=ViewData["Title"]%></b>
                 </td>
            </tr>
            <% int Count = 1; %>
            <%foreach (var item in Model)
            {%>
                <tr id="LongTermGoal<%:item.LongTermGoalID %>" onclick="SelectOrRemoveItem(this,1,'LongTermGoal')">
                        <td align="center" style="width:25px"><%=Count%><%:Html.Hidden("hdLongTermGoal" + item.LongTermGoalID, item.LongTermGoalID, new { id = "hdLongTermGoal" + (Count - 1) })%></td>
                        <td><%=item.Title%></td>
                        <%Count++; %>
                </tr>
        <% } %>  
        </table>
</div>