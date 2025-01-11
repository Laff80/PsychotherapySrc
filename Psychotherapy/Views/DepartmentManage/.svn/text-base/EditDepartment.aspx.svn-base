<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/ManagerSite.Master"
    Inherits="System.Web.Mvc.ViewPage<Insourcia.Psychotherapy.Model.Department>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Edit
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <% using (Html.BeginForm())
       {%>
    <%: Html.ValidationSummary(true) %>
    <table class="table-form-style">
        <tr>
            <th>
                DepartmentName:
                <%:Html.HiddenFor(model=>model.DepartmentID) %>
            </th>
            <td>
                <%: Html.TextBoxFor(model => model.DepartmentName) %>
                <%: Html.ValidationMessageFor(model => model.DepartmentName) %>
            </td>
        </tr>
        <tr>
            <th>
                Leader:
            </th>
            <td>
                <%: Html.DropDownListFor(model => model.ManagerUserID, ViewData["UserNames"] as IEnumerable<SelectListItem>, new { @class = "selectlist-style" })%>
            </td>
        </tr>
        <tr>
            <th>
                Description:
            </th>
            <td>
                <%: Html.TextAreaFor(model => model.Description) %>
                <%: Html.ValidationMessageFor(model => model.Description) %>
            </td>
        </tr>
        <tr>
            <%:Html.HiddenFor(model => model.TimeCreated) %>
        </tr>
        <tr>
            <td>
                <%: Html.HiddenFor(model => model.LastModified) %>
                <%: Html.ValidationMessageFor(model => model.LastModified) %>
            </td>
        </tr>
        <tr>
            <th>
            </th>
            <td>
                <input type="submit" value="Submit" class="btn-style" />
                <input type="reset" value="Reset" class="btn-style" />
                <%: Html.ActionLink("Back to List >>", "Departments", "DepartmentManage")%>
            </td>
        </tr>
    </table>
    <% } %>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="phToolBar" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="phNavigation" runat="server">
    <%: Html.ActionLink("Department List", "Departments", "DepartmentManage")%>
    > Edit Department
</asp:Content>
