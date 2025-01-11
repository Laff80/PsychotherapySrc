<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<IEnumerable<Insourcia.Psychotherapy.Model.Symptom>>" %>
<div class="table_item">
        <%:Html.Hidden("alreadyExistsIDs")%>
        <table>   
            <% int Count = 1; %>
            <%foreach (var item in Model)
            {%>
                <tr id="symptom<%:item.SymptomID %>" onclick="SelectOrRemoveItem(this,3,'symptom')">
                        <td align="center" style="width:25px"><%=Count%><%:Html.Hidden("hdsymptom" + item.SymptomID, item.SymptomID, new { id = "hdsymptom" + (Count - 1) })%></td>
                        <td><%=item.Title%></td>
                        <%Count++; %>
                </tr>
        <% } %>  
        </table>
</div>