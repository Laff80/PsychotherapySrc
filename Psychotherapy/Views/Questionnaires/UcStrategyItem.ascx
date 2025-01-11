<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<IEnumerable<Insourcia.Psychotherapy.Model.Strategy>>" %>
<div class="table_item">
        <%:Html.Hidden("alreadyExistsIDs")%>
        <%:Html.Hidden("SymptomId", ViewData["symptomId"].ToString())%>
        <%:Html.Hidden("LongTermGoalID", ViewData["longTermGoalId"].ToString())%>
        <%:Html.Hidden("ObjectiveID", ViewData["objectiveID"].ToString())%>
        <table>   
            <tr>
                 <td colspan="2">
                       <b>Objective:<%=ViewData["Title"]%></b>
                 </td>
            </tr>
            <% int Count = 1; %>
            <%foreach (var item in Model)
            {%>
                <tr id="Strategy<%:item.StrategyID %>" onclick="SelectOrRemoveItem(this,3,'Strategy')">
                        <td align="center" style="width:25px"><%=Count%><%:Html.Hidden("hdStrategy" + item.StrategyID, item.StrategyID, new { id = "hdStrategy" + (Count - 1) })%></td>
                        <td><%=item.Title%></td>
                        <%Count++; %>
                </tr>
        <% } %>  
        </table>
</div>
<script type="text/javascript">
    $(document).ready(function () {
        $('.table_item select').each(function () {
            $(this).hide().after('<b class="b-Red">' + $(this).val() + '</b>');
        });
    });
</script>