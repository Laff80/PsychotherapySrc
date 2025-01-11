<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/ManagerSite.Master"
    Inherits="System.Web.Mvc.ViewPage<Insourcia.Psychotherapy.Model.Department>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    New Department
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <% using (Html.BeginForm())
       {%>
    <%: Html.ValidationSummary(true) %>
    <table class="table-form-style">
        <tr>
            <td>
                <%: Html.HiddenFor(model => model.DepartmentID) %>
                <%: Html.ValidationMessageFor(model => model.DepartmentID) %>
            </td>
        </tr>
        <tr>
            <th>
                DepartmentName:
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
                <%: Html.DropDownListFor(model=>model.ManagerUserID,ViewData["UserNames"] as IEnumerable<SelectListItem>, new { @class = "selectlist-style" })%>
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
            <td>
                <%: Html.HiddenFor(model => model.TimeCreated) %>
                <%: Html.ValidationMessageFor(model => model.TimeCreated) %>
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
    > New Department
</asp:Content>
