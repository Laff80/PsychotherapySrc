<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<IPagedList<Insourcia.Psychotherapy.Model.Department>>" %>
<%@ Import Namespace="Insourcia.WebControls.MvcPaging" %>
<% Insourcia.Psychotherapy.Bll.DepartmentBll bll = new Insourcia.Psychotherapy.Bll.DepartmentBll();  %>
<table class="table_list">
    <tr>
        <th>
            <input type="checkbox" onclick="ckAllistboxs(this)" />
        </th>
        <th>
            DepartmentName
        </th>
        <th>
            Description
        </th>
        <th>
            Leader
        </th>
        <th>
            Time
        </th>
    </tr>
    <%
        if (Model.Count() > 0)
        {
    %>
    <% foreach (var item in Model)
       { %>
    <tr>
        <td>
            <input type="checkbox" name="ckbDepartment" value="<%=item.DepartmentID %>" onclick="selected(this)" />
        </td>
        <td>
            <%: item.DepartmentName %>
        </td>
        <td>
            <%: item.Description %>
        </td>
        <td>
            <%=bll.GetUserName(item.ManagerUserID.Value) %>
        </td>
        <td>
            <%: String.Format("{0:dd/MM/yyyy}", item.TimeCreated)%>
        </td>
    </tr>
    <% } %>
    <%} %>
    <%else
        { %>
          <tr>
           <td colspan="5" class="rew-empty" style="border-right:0">Departments Record is empty.</td>
      </tr>
    <%} %>
</table>
<%=Html.AjaxPager(Model, "GetDpartments", "DepartmentManage", new PagerOptions { PageIndexParameterName = "id", Id = "page", CssClass = "page-settings" }, new AjaxOptions { UpdateTargetId = "list-box", OnComplete = "OnComplete" })%>
<%=Html.Hidden("hdPage",Model.CurrentPageIndex) %>
