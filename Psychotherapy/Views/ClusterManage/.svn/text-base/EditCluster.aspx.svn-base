<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/ManagerSite.Master" Inherits="System.Web.Mvc.ViewPage<Insourcia.Psychotherapy.Model.Cluster>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Edit Cluster
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <% using (Html.BeginForm()) {%>
        <%: Html.ValidationSummary(true) %>
        
        <table class="table-form-style">
         <tr>
               <th>
                SupTitle
            </th>
            <td>
                <%=Html.DropDownList("ParientID", ViewData["slCluster"] as IEnumerable<SelectListItem>, Model.ParientID)%>
                <%: Html.ValidationMessageFor(model => model.ParientID) %>
            </td>
          </tr>
         <tr>
               <th>
                <%: Html.LabelFor(model => model.Title) %>
            </th>
            <td>
                <%: Html.TextAreaFor(model => model.Title)%>
                <%: Html.ValidationMessageFor(model => model.Title) %>
            </td>
          </tr>
         <tr>
               <th>
                <%: Html.LabelFor(model => model.GlanceSummaryAction) %>
            </th>
            <td>
                <%: Html.TextBoxFor(model => model.GlanceSummaryAction) %>
                <%: Html.ValidationMessageFor(model => model.GlanceSummaryAction) %>
            </td>
          </tr>

         <tr>
               <th>
                <%: Html.LabelFor(model => model.GuideLineAction) %>
            </th>
            <td>
                <%: Html.TextBoxFor(model => model.GuideLineAction) %>
                <%: Html.ValidationMessageFor(model => model.GuideLineAction) %>
            </td>
          </tr>

         <tr>
               <th>
                <%: Html.LabelFor(model => model.ContinueAction) %>
            </th>
            <td>
                <%: Html.TextBoxFor(model => model.ContinueAction) %>
                <%: Html.ValidationMessageFor(model => model.ContinueAction) %>
            </td>
          </tr>
        <tr>
            <th>
            </th>
            <td>
                <input type="submit" value="Save" class="btn-style" />
                <input type="reset" value="Reset" class="btn-style" />
                <%: Html.ActionLink("Back to List >>", "Clusters", "ClusterManage")%>
            </td>
        </tr>
        </table>

    <% } %>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="phNavigation" runat="server">
    <%: Html.ActionLink("Clusters", "Clusters", "ClusterManage")%>
    > Edit Cluster
</asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="phToolBar" runat="server">
</asp:Content>

