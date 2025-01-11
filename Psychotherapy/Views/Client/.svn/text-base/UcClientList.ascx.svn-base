<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<IPagedList<Insourcia.Psychotherapy.Model.Patient>>" %>
<%@ Import Namespace="Insourcia.WebControls.MvcPaging" %>
<table class="list" cellspacing="1" border="0" cellpadding="0" bgcolor="#50a0e7" style="display: table;">
    <tr>
        <th>
            GRID
        </th>
        <th>
            Last Name
        </th>
        <th>
            First Name
        </th>
        <th>
            M.I.
        </th>
        <th>
            Birth Date
        </th>
    </tr>
    <%if (Model.Count() > 0)
      { %>
    <% foreach (var item in Model)
       { %>
    <tr onclick="actionLink('/Client/Info/<%: item.PatientID %>')" style="cursor: pointer">
        <td>
            <%: item.GRID%>
        </td>
        <td>
            <%: item.LastName%>
        </td>
        <td>
            <%: item.FirstName%>
        </td>
        <td>
            <%: item.MiddleName%>
        </td>
        <td>
            <%: item.BirthDay%>
        </td>
    </tr>
    <% } %>
    <%} %>
    <%else
      { %>
    <tr>
        <td colspan="5" align="center" style="color: Red;">
            Clients Record is empty.
        </td>
    </tr>
    <%} %>
</table>
<%=Html.AjaxPager(Model, "ClientList", "Client", new PagerOptions { PageIndexParameterName = "id", Id = "page", CssClass = "page-settings" }, new AjaxOptions { UpdateTargetId = "list-box", OnComplete = "ajaxJson_OnComplete" })%>
<%=Html.Hidden("hdPage",Model.CurrentPageIndex) %>
