<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<Insourcia.Psychotherapy.Model.ProcessGuide>" %>
<div class="table_item">
<form id="ProcessElementForm" action="/ProcessGuideManage/SetQuestions/<%=Model.ProcessGuideID %>" method ="post">
    <table>
            <tr>
                  <td colspan="5"><b><%=Model.Title %></b></td>
            </tr>
            <tr>
                 <td align="left" colspan="5"><b>Cluster</b></td>
            </tr>
             <%foreach (var item in ViewData["Clusters"] as IEnumerable<Insourcia.Psychotherapy.Model.Cluster>)
               {%>
                   <% bool selected = false; %>
                   <% bool selectedYes = false; %>
                   <% bool selectedNo = false; %>
                   <%if (Model.YesID == "cluster_" + item.ClusterID.ToString()) { selected = true; selectedYes = true; } %>
                   <%if (Model.NoID == "cluster_" + item.ClusterID.ToString()) { selected = true; selectedNo = true; }%>
                  <tr <%=selected ? "class='selectedItem'" : ""%>>
                       <td><%=item.ClusterID%></td>
                       <td><%=item.Title %></td>
                       <td style="width:55px">Yes <input type="radio" name="cluster_<%:item.ClusterID %>" value="Yes" <%=selectedYes ? "checked='checked'" : ""%> /></td>
                       <td style="width:55px">No <input type="radio" name="cluster_<%:item.ClusterID %>" value="No" <%=selectedNo ? "checked='checked'" : ""%> /></td>
                       <td style="width:90px">Uncheck <input type="radio" name="cluster_<%:item.ClusterID %>" class="uncheked"  /></td>
                  </tr>
             <%} %>
            <tr>
                 <td colspan="5" align="left"><b>ProcessGuide</b></td>
            </tr>

             <%foreach (var item in ViewData["ProcessGuides"] as IEnumerable<Insourcia.Psychotherapy.Model.ProcessGuide>)
               {%>
                   <% bool selected = false; %>
                   <% bool selectedYes = false; %>
                   <% bool selectedNo = false; %>
                   <%if (Model.YesID == "processGuide_" + item.ProcessGuideID.ToString()) { selected = true; selectedYes = true; } %>
                   <%if (Model.NoID == "processGuide_" + item.ProcessGuideID.ToString()) { selected = true; selectedNo = true; }%>
                  <tr <%=selected ? "class='selectedItem'" : ""%>>
                       <td><%=item.ProcessGuideID%></td>
                       <td><%=item.Title %></td>
                       <td>Yes <input type="radio" name="processGuide_<%:item.ProcessGuideID %>" value="Yes" <%=selectedYes ? "checked='checked'" : ""%>/></td>
                       <td>No <input type="radio" name="processGuide_<%:item.ProcessGuideID %>" value="No" <%=selectedNo ? "checked='checked'" : ""%> /></td>
                       <td>Uncheck <input type="radio" name="processGuide_<%:item.ProcessGuideID %>" class="uncheked" /></td>
                  </tr>
             <%} %>
    </table>
</form>
</div>
<script type="text/javascript">
    $(document).ready(function () {

       

        $(':radio').change(function () {
            if ($('.table_item input:checked').length == 3) {
                if ($('.table_item input:checked').hasClass('uncheked')) {
                    if ($(this).val() == 'on') {
                        $(this).attr('checked', false);
                        alert('Switching can only choose yes or no.');
                        return false;
                    }
                    else {
                        $('.table_item input:checked').filter('.uncheked').attr('checked', false);
                    }
                }
                else {
                    $(this).attr('checked', false);
                    alert('Can choose only two below.');
                    return false;
                }
            }
        });


    });
</script>