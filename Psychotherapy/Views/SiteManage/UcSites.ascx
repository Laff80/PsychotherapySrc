<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<IPagedList<Insourcia.Psychotherapy.Model.Site>>" %>
<%@ Import Namespace="Insourcia.WebControls.MvcPaging" %>
<table class="table_list">
    <tr>
        <th>
            <input type="checkbox" onclick="ckAllistboxs(this)" />
        </th>
        <th>
            SiteName
        </th>
        <th>
            Description
        </th>
        <th>
            TimeCreated
        </th>
    </tr>
    <%if(Model.Count()>0){ %>
    <% foreach (var item in Model)
       { %>
    <tr>
        <td>
            <input type="checkbox" name="ckbSite" value="<%=item.SiteID %>" onclick="selected(this)" />
        </td>
        <td>
            <%: item.SiteName%>
        </td>
        <td>
            <%: item.Description%>
        </td>
        <td>
            <%: String.Format("{0:dd/MM/yyyy}", item.TimeCreated)%>
        </td>
    </tr>
    <%} %>
    <% } %>
        <%else{ %>
      <tr>
           <td colspan="4" class="rew-empty" style="border-right:0">Sites Record is empty.</td>
      </tr>
    <%} %>
</table>
<%=Html.AjaxPager(Model, "GetSites", "SiteManage", new PagerOptions { PageIndexParameterName = "id", Id = "page", CssClass = "page-settings" }, new AjaxOptions { UpdateTargetId = "list-box", OnComplete = "OnComplete" })%>
<%=Html.Hidden("hdPage",Model.CurrentPageIndex) %>
