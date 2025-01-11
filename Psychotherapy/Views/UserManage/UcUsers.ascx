<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<IPagedList<Insourcia.Psychotherapy.Model.User>>" %>
<%@ Import Namespace="Insourcia.WebControls.MvcPaging" %>
<table class="table_list">
    <tr>
         <th>
             <input type="checkbox" onclick="ckAllistboxs(this)"/>
        </th>
        <th>
            EmployeeNumber
        </th>
        <th>
            FirstName
        </th>
        <th>
            MiddleName
        </th>
        <th>
            LastName
        </th>
        <th>
            Locked
        </th>
        <th>
            PrimaryEmail
        </th>
    </tr>
    <%if (Model.Count() > 0)
      { %>
    <% foreach (var item in Model)
       { %>
    <tr>
                <td>
                 <input type="checkbox" name="ckbUser" value="<%:item.UserID %>" onclick="selected(this)" />
            </td>
        <td>
            <%: item.EmployeeNumber%>
        </td>
        <td>
            <%: item.FirstName%>
        </td>
        <td>
            <%: item.MiddleName%>
        </td>
        <td>
            <%: item.LastName%>
        </td>
        <td>
            <%= item.IsActive != 1 ? "Lock" : "UnLock"%>
        </td>
        <%-- <td>
                <%=item.SiteDepartmentUsers.FirstOrDefault().Site != null ? item.SiteDepartmentUsers.FirstOrDefault().Site.SiteName : string.Empty%>
            </td>--%>
        <td>
            <%=item.PrimaryEmail%>
        </td>
    </tr>
    <% } %>
    <%} %>
    <%else
      { %>
      <tr>
           <td colspan="7" class="rew-empty" style="border-right:0">Users Record is empty.</td>
      </tr>
    <%} %>
</table>
<%=Html.AjaxPager(Model, "GetUsers", "UserManage", new PagerOptions { PageIndexParameterName = "id", Id = "page", CssClass = "page-settings" }, new AjaxOptions { UpdateTargetId = "list-box"})%>
<%=Html.Hidden("hdPage",Model.CurrentPageIndex) %>
