<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<IPagedList<Insourcia.Psychotherapy.Model.Cluster>>" %>
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
                GlanceSummaryAction
            </th>
            <th>
                GuideLineAction
            </th>
            <th>
                ContinueAction
            </th>
        </tr>
   <%if (Model.Count() > 0)
     { %>
    <% foreach (var item in Model)
       { %>
        <tr>
        <td>
            <input type="checkbox" name="ckbCluster" value="<%:item.ClusterID %>" onclick="selected(this)" />
        </td>
            <td>
                <%= item.Title%>
            </td>
            <td>
                <%: item.GlanceSummaryAction%>
            </td>
            <td>
                <%: item.GuideLineAction%>
            </td>
            <td>
                <%: item.ContinueAction%>
            </td>
        </tr>
    
    <% } %>
    <%}
     else
     { %>
         <tr>
                <td colspan="5" align="center" style="color:Red">
                    Clusters Record is empty.
                </td>
         </tr>
    <%} %>
    </table>
<%=Html.AjaxPager(Model, "GetClusters", "ClusterManage", new PagerOptions { PageIndexParameterName = "id", Id = "page", CssClass = "page-settings" }, new AjaxOptions { UpdateTargetId = "list-box" })%>
<%=Html.Hidden("hdPage",Model.CurrentPageIndex) %>


