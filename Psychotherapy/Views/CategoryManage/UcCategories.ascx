<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<IPagedList<Insourcia.Psychotherapy.Model.Category>>" %>
<%@ Import Namespace="Insourcia.WebControls.MvcPaging" %>
<table class="table_list">
    <tr>
        <th>
            <input type="checkbox" onclick="ckAllistboxs(this)" />
        </th>
        <th>
            Name
        </th>
        <th>
            Description
        </th>
        <th>
            TimeCreated
        </th>
    </tr>
    <%if (Model.Count() > 0)
      { %>
    <% foreach (var item in Model)
       { %>
    <tr>
        <td>
            <input type="checkbox" name="ckbCategory" value="<%:item.CategoryID %>" onclick="selected(this)" />
        </td>
        <td>
            <%: item.Name%>
        </td>
        <td>
            <%: item.Description%>
        </td>
        <td>
            <%: String.Format("{0:g}", item.TimeCreated)%>
        </td>
    </tr>
    <% } %>
    <%}
      else
      {%>
          <tr>
                <td colspan="4" align="center" style="color:Red">
                    Categories Record is empty.
                </td>
          </tr>
    <%} %>
</table>
<%=Html.AjaxPager(Model, "GetCategories", "CategoryManage", new PagerOptions { PageIndexParameterName = "id", Id = "page", CssClass = "page-settings" }, new AjaxOptions { UpdateTargetId = "list-box" })%>
<%=Html.Hidden("hdPage",Model.CurrentPageIndex) %>
