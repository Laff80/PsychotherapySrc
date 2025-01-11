<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/ManagerSite.Master"
    Inherits="System.Web.Mvc.ViewPage<Insourcia.Psychotherapy.Model.Category>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    New Category
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <% using (Html.BeginForm())
       {%>
    <%: Html.ValidationSummary(true) %>
    <table class="table-form-style">
        <tr>
            <th>
                <%: Html.LabelFor(model => model.Name) %>
            </th>
            <td>
                <%: Html.TextBoxFor(model => model.Name) %>
                <%: Html.ValidationMessageFor(model => model.Name) %>
            </td>
        </tr>
        <tr>
            <th>
                <%: Html.LabelFor(model => model.Description) %>
            </th>
            <td>
                <%: Html.TextAreaFor(model => model.Description) %>
                <%: Html.ValidationMessageFor(model => model.Description) %>
            </td>
        </tr>
        <tr>
             <th></th>
             <td>
                   <%:Html.ValidationMessage("ErrorMsg", new {@class="error-msg" })%>
             </td>
        </tr>
        <tr>
            <th>
            </th>
            <td>
                <input type="submit" value="Save" class="btn-style" />
                <input type="reset" value="Reset" class="btn-style" />
                <%: Html.ActionLink("Back to List >>", "Categories", "CategoryManage")%>
            </td>
        </tr>
    </table>
    <% } %>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="phNavigation" runat="server">
    <%: Html.ActionLink("Categories", "Categories", "CategoryManage")%>
    > New Category
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="phToolBar" runat="server">
</asp:Content>
