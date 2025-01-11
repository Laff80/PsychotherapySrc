<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<IPagedList<Insourcia.Psychotherapy.Model.Form>>" %>
<%@ Import Namespace="Insourcia.WebControls.MvcPaging" %>
<table class="table_list">
    <tr>
        <th>
            <input type="checkbox" onclick="ckAllistboxs(this)" />
        </th>
        <th>
            FormName
        </th>
    </tr>
    <% foreach (var item in Model)
       { %>
    <tr>
        <td>
            <input type="checkbox" name="ckbForms" value="<%:item.FormID %>" onclick="selected(this)" />
        </td>
        <td>
            <%: item.FormName %>
        </td>
    </tr>
    <% } %>
</table>
<%=Html.AjaxPager(Model, "GetForms", "FormsManage", new PagerOptions { PageIndexParameterName = "id", Id = "page", CssClass = "page-settings" }, new AjaxOptions { UpdateTargetId = "list-box" })%>
<%=Html.Hidden("hdPage",Model.CurrentPageIndex) %>
