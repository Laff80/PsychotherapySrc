<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<IEnumerable<Insourcia.Psychotherapy.Model.Objective>>" %>

<div class="table_item">
        <%:Html.Hidden("alreadyExistsIDs")%>
        <%:Html.Hidden("SymptomId", ViewData["symptomId"].ToString())%>
        <%:Html.Hidden("LongTermGoalID", ViewData["longTermGoalId"].ToString())%>
        <% int symptomId = Convert.ToInt32(ViewData["symptomId"]); %>
        <% int longTermGoalId = Convert.ToInt32(ViewData["longTermGoalId"]); %>
        <table>   
            <tr>
                 <td colspan="2">
                       <b>LongTermGoal:<%=ViewData["Title"]%></b>
                 </td>
            </tr>
            <% int Count = 1; %>
            <%foreach (var item in Model)
            {%>
                <tr id="Objective<%:item.ObjectiveID %>" onclick="SelectOrRemoveItem(this,3,'Objective')">
                        <td align="center" style="width:25px"><%=Count%><%:Html.Hidden("hdObjective" + item.ObjectiveID, item.ObjectiveID, new { id = "hdObjective" + (Count - 1) })%></td>
                        <td><%=item.Title%>
                             <%if (!(string.IsNullOrEmpty(item.EndValue) && string.IsNullOrEmpty(item.StartValue) && string.IsNullOrEmpty(item.Measure)))
                                  {%>
                                      <%decimal j = (Decimal)((Decimal.Parse(item.EndValue) - Decimal.Parse(item.StartValue)) / item.Space); %>
                                      <br />
                                       Duration : <select name="insourcia<%=symptomId%><%=longTermGoalId%><%=item.ObjectiveID %>">
                                                           <%for (int i = 1; i <= j; i++)
                                                             {%>
			                                                       <%decimal t = (decimal)(Decimal.Parse(item.StartValue) + item.Space * i); %>
                                                                   <option><%=Html.Encode(t.ToString("#0"))%></option>
			                                               <% } %>
                                                  </select><b> <%:item.Measure%></b>
                                 <%} %>
                        </td>
                        <%Count++; %>
                </tr>
        <% } %>  
        </table>
</div>

<script type="text/javascript" language="javascript">
    $(document).ready(function () {

        //设置select已选中的。
        var parentID = '<%=ViewData["symptomId"] %>' + '<%=ViewData["longTermGoalId"] %>';
        $('#ulLongTermGoal' + parentID + " select").each(function () {
            var OBJname = $(this).attr('name');
            var OBJvalue = $(this).val();
            var OBJ = $('.table_item select[name=' + OBJname + ']')[0];
            //var OBJvalue = $(this).find('option:selected').val();
            if (OBJvalue != '') {
                $('.table_item select[name=' + OBJname + ']').find("option[value='" + OBJvalue + "']").attr("selected", true);
                //checkSelectByValue(OBJ, OBJvalue, true);

            }
        });


        $('.table_item select').each(function () {
            var OBJvalue = $(this).val();
            $(this).hide().after('<b class="b-Red">' + OBJvalue + '</b>');
        });

    });
</script>