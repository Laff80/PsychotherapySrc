<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<IPagedList<Insourcia.Psychotherapy.Model.ClinicalService>>" %>
<%@ Import Namespace="Insourcia.WebControls.MvcPaging" %>
<table class="list" cellspacing="1" border="0" cellpadding="0" bgcolor="#50a0e7"
    style="display: table;">
    <tr>
        <th>
            GUID
        </th>
        <th>
            Client Name
        </th>
        <th>
            Prof
        </th>
        <th>
            Prof Name
        </th>
        <th>
            Cost Center
        </th>
        <th>
            Scheduled Service
        </th>
        <th>
            Date
        </th>
    </tr>
    <%if (Model.Count() > 0)
      {%>
    <% foreach (var item in Model)
       { %>
    <tr onclick="actionLink('/TreatmentPlan/ClintcalServiceInfo/<%: item.ClinicalServiceID%>?tpid=<%:item.TreatmentPlanID %>&page=<%:Request.QueryString["page"]%>&patientID=<%:Request.QueryString["patientID"]%>')" style=" cursor:pointer">
        <td>
            <%: item.GRID%>
        </td>
        <td>
            <%: item.ClientName%>
        </td>
        <td>
            <%: item.Prof%>
        </td>
        <td>
            <%: item.ProfName%>
        </td>
        <td>
            <%: item.CostCenter%>
        </td>
        <td>
            <%: item.ScheduledService%>
        </td>
        <td>
            <%: item.CreateTime.HasValue ? item.CreateTime.Value.ToShortDateString() : string.Empty%>
        </td>
    </tr>
    <% } %>
    <%} %>
    <%else
      { %>
    <tr>
        <td colspan="7" align="center" style="color: Red;">
            Clinical Sarvice Record is empty.
        </td>
    </tr>
    <%} %>
</table>
<%=Html.AjaxPager(Model, "ClintcalServicePagedList", "TreatmentPlan", new PagerOptions { PageIndexParameterName = "id", Id = "page", CssClass = "page-settings" }, new AjaxOptions { UpdateTargetId = "list-box", OnComplete = "OnComplete1" })%>
<%=Html.Hidden("hdPage",Model.CurrentPageIndex) %>