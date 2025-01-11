<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<IPagedList<Insourcia.Psychotherapy.Model.TreatmentPlan>>" %>
<%@ Import Namespace="Insourcia.WebControls.MvcPaging" %>
<table class="list" cellspacing="1" border="0" cellpadding="0" bgcolor="#50a0e7" style="display: table;">
        <tr>
            <th>
                Date Modified
            </th>
           <th>
                Status
            </th>
            <th>
                Site
            </th>
           
        </tr>
<%if (Model.Count() > 0)
  { %>
    <% foreach (var item in Model)
       { %>
    
        <tr onclick="actionLink('/TreatmentPlan/TreatmentPlanInfo/<%: item.TreatmentPlanID %>?page=<%=Model.CurrentPageIndex %>&patientID=<%=ViewData["patientID"] %>')" style=" cursor:pointer">
            
           <td>
                <%: String.Format("{0:g}", item.LastModifiedTime)%>
            </td>
            <td>
                <%: item.Status%>
            </td>
            <td>
               
                <%: item.Patient != null ? item.Patient.Site.SiteName : null%>
                
            </td>
          
        </tr>
    
    <% } %>
<%} %>
<%else
    { %>
    <tr>
        <td colspan="3" align="center" style="color: Red;">
            Treatment plan Record is empty.
        </td>
    </tr>
<%} %>
    </table>

<div class="page-settings" style="padding:10px 0">
    <%=Html.AjaxPager(Model, "TreatmentPlanPagedList", "TreatmentPlan", new PagerOptions { PageIndexParameterName = "id" }, new AjaxOptions { UpdateTargetId = "list-box" })%>
    <%=Html.Hidden("hdPage",Model.CurrentPageIndex) %>
</div>
