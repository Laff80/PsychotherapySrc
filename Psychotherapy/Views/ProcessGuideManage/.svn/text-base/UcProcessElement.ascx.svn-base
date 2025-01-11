<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<IPagedList<Insourcia.Psychotherapy.Model.ProcessGuide>>" %>
<%@ Import Namespace="Insourcia.WebControls.MvcPaging" %>
    <table class="table_list">
        <tr>
        <th>
            <input type="checkbox" onclick="ckAllistboxs(this)" />
        </th>
            <th>
                Title
            </th>
            <th>
                YesID
            </th>
            <th>
                NoID
            </th>
            <th>
                Level
            </th>
        </tr>

    <% foreach (var item in Model) { %>
    
        <tr>
        <td>
            <input type="checkbox" name="ckbProcess" value="<%:item.ProcessGuideID %>" onclick="selected(this)" />
        </td>
            <td>
                <%= item.Title %>
            </td>
            <td>
                <%: item.YesID %>
            </td>
            <td>
                <%: item.NoID %>
            </td>
            <td>
                <%: item.Level %>
            </td>
        </tr>
    
    <% } %>

    </table>

<%=Html.AjaxPager(Model, "GetProcessElement", "ProcessGuideManage", new PagerOptions { PageIndexParameterName = "id", Id = "page", CssClass = "page-settings" }, new AjaxOptions { UpdateTargetId = "list-box" })%>
<%=Html.Hidden("hdPage",Model.CurrentPageIndex) %>

