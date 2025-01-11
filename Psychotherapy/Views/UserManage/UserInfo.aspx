<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<Insourcia.Psychotherapy.Model.User>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Client Information
</asp:Content>
<asp:Content ID="ctToolBar" runat="server" ContentPlaceHolderID="phToolBar">
    <input type="button" class="btn-style" value="Back to List" onclick="document.location = '/Client/list/';" />
    |
    <input type="submit" value="Edit Physcosocial" class="btn-style" onclick="document.location = '/Client/Edit/<%:Model.UserID %>';" />
    |
    <input type="submit" value="Forms" class="btn-style" />
    |
    <input type="submit" value="Treatment Plans" class="btn-style" onclick="document.location = '/Client/TreatmentPlans/1?cid=<%:Model.UserID %>';" />
    |
    <input type="submit" value="Scanned Form" class="btn-style" />
</asp:Content>
<asp:Content ID="ctNavigation" runat="server" ContentPlaceHolderID="phNavigation">
    <%:Html.ActionLink("Client list","list")%>
    >
    <%:Html.Encode(Session["ClientName"]) %>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<div>
    <table class="style">
        <tr>
            <th>
                EmployeeNumber
            </th>
            <td>
                <%: Model.EmployeeNumber %>
            </td>
        </tr>
        <tr>
            <th>
                FirstName
            </th>
            <td>
                <%: Model.FirstName %>
            </td>
            <th>
                MiddleName
            </th>
            <td>
                <%: Model.MiddleName %>
            </td>
            <th>
                LastName
            </th>
            <td>
                <%: Model.LastName %>
            </td>
        </tr>
        <tr>
            <th>
                PrimaryEmail
            </th>
            <td>
                <%: Model.PrimaryEmail %>
            </td>
        </tr>
        <tr>
            <th>
                Profession
            </th>
            <td>
                <%: Model.Profession %>
            </td>
        </tr>
        <tr>
            <th>
                UserLocation
            </th>
            <td>
                <%: Model.UserLocation %>
            </td>
        </tr>
        <tr>
            <th>
                SecretQuestion
            </th>
            <td>
                <%: Model.SecretQuestion %>
            </td>
        </tr>
        <tr>
            <th>
                SecretAnswer
            </th>
            <td>
                <%: Model.SecretAnswer %>
            </td>
        </tr>
    </table>
</div>
</asp:Content>
