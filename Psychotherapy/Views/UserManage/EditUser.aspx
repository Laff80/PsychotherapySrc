<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/ManagerSite.Master"
    Inherits="System.Web.Mvc.ViewPage<Insourcia.Psychotherapy.Model.User>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Edit User
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <% using (Html.BeginForm())
       {%>
    <%: Html.ValidationSummary(true) %>
    <table class="table-form-style">
        <tr>
            <td>
                <%: Html.HiddenFor(model => model.UserID) %>
                <%: Html.ValidationMessageFor(model => model.UserID) %>
            </td>
        </tr>
        <tr>
            <th>
                EmployeeNumber:
            </th>
            <td>
                <%: Html.TextBoxFor(model => model.EmployeeNumber) %>
                <%: Html.ValidationMessageFor(model => model.EmployeeNumber) %>
            </td>
        </tr>
        <tr>
            <th>
                FirstName:
            </th>
            <td>
                <%: Html.TextBoxFor(model => model.FirstName) %>
                <%: Html.ValidationMessageFor(model => model.FirstName) %>
            </td>
        </tr>
        <tr>
            <th>
                MiddleName:
            </th>
            <td>
                <%: Html.TextBoxFor(model => model.MiddleName) %>
                <%: Html.ValidationMessageFor(model => model.MiddleName) %>
            </td>
        </tr>
        <tr>
            <th>
                LastName:
            </th>
            <td>
                <%: Html.TextBoxFor(model => model.LastName) %>
                <%: Html.ValidationMessageFor(model => model.LastName) %>
            </td>
        </tr>
        <tr>
            <th>
                UserName:
            </th>
            <td>
                <%: Html.TextBoxFor(model => model.UserName) %>
                <%: Html.ValidationMessageFor(model => model.UserName) %>
            </td>
        </tr>
        <tr>
            <td>
                <%: Html.HiddenFor(model => model.Password) %>
                <%: Html.ValidationMessageFor(model => model.Password) %>
            </td>
        </tr>
        <tr>
            <th>
                PrimaryEmail:
            </th>
            <td>
                <%: Html.TextBoxFor(model => model.PrimaryEmail) %>
                <%: Html.ValidationMessageFor(model => model.PrimaryEmail) %>
            </td>
        </tr>
        <tr>
            <td>
                <%: Html.HiddenFor(model => model.Profession) %>
                <%: Html.ValidationMessageFor(model => model.Profession) %>
            </td>
        </tr>
        <tr>
            <th>
                IsActive:
            </th>
            <td>
                <input type="radio" value="1" name="IsActive" />Yes
                <input type="radio" value="0" name="IsActive" />No
                <%: Html.ValidationMessageFor(model => model.IsActive) %>
            </td>
        </tr>
        <tr>
            <th>
                UserType:
            </th>
            <td>
                <%=Html.DropDownList("UserTypeID", ViewData["slUserTypes"] as IEnumerable<SelectListItem>, Model.UserTypeID.Value)%>
            </td>
        </tr>
        <tr>
            <th>
                DefaultSiteID:
            </th>
            <td>
                <%=Html.DropDownList("DefaultSiteID", ViewData["slSites"] as IEnumerable<SelectListItem>, Model.DefaultSiteID)%>
            </td>
        </tr>
        <tr>
            <th>
            </th>
            <td>
                <input type="submit" value="Save" class="btn-style" />
                <input type="reset" value="Reset" class="btn-style" />
                <%: Html.ActionLink("Back to List >>", "Users", "UserManage")%>
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
    <%: Html.ActionLink("All Users", "Users", "UserManage")%>
    > Edit User
</asp:Content>
