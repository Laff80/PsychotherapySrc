<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<IPagedList<Insourcia.Psychotherapy.Model.FormData>>" %>
<%@ Import Namespace="Insourcia.WebControls.MvcPaging" %>
<table class="list" cellspacing="1" border="0" cellpadding="0" bgcolor="#50a0e7"
    style="display: table;">
    <tr>
        <th>
            Date Created
        </th>
        <th>
            Form Name
        </th>
        <th>
            Notes
        </th>
        <th>
            Last Modified
        </th>
    </tr>
    <% 
        if (Model.Count() > 0)
        {
            foreach (var item in Model)
            { %>
    <tr <% if((bool)ViewData["CanRead"]){%> onclick="actionLink('/Form/FormInfo/<%: item.FormDataID %>?Template=<%: item.Form.TemplatePath %>&cid=<%:Request.QueryString["cid"] %>')"
        style="cursor: pointer" <%} %>>
        <td>
            <%: item.TimeCreated %>
        </td>
        <td>
            <%: item.Form.FormName%>
        </td>
        <td>
            <%: item.PrintFormName %>
        </td>
        <td>
            <%: item.LastModified%>
        </td>
    </tr>
    <% } %>
    <%}
        else
        { %>
    <tr>
        <td colspan="4" align="center" style="color: Red;">
            Forms Record is empty.
        </td>
    </tr>
    <%} %>
</table>
<%=Html.AjaxPager(Model, "FormList", "Form", new PagerOptions { PageIndexParameterName = "id", Id = "page", CssClass = "page-settings" }, new AjaxOptions { UpdateTargetId = "list-box", OnComplete = "OnComplete1" })%>
<%=Html.Hidden("hdPage",Model.CurrentPageIndex) %>
