<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/ManagerSite.Master"
    Inherits="System.Web.Mvc.ViewPage<Insourcia.Psychotherapy.Model.Site>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Edit Site
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <% using (Html.BeginForm())
       {%>
    <%: Html.ValidationSummary(true) %>
    <table class="table-form-style">
        <tr>
            <td>
                <%: Html.HiddenFor(model => model.SiteID) %>
                <%: Html.ValidationMessageFor(model => model.SiteID) %>
            </td>
        </tr>
        <tr>
            <th>
                SiteName:
            </th>
            <td>
                <%: Html.TextBoxFor(model => model.SiteName) %>
                <%: Html.ValidationMessageFor(model => model.SiteName) %>
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
            <th>
            </th>
            <td>
                <input type="submit" value="Submit" class="btn-style" />
                <input type="reset" value="Reset" class="btn-style" />
                <%: Html.ActionLink("Back to List >>", "Sites", "SiteManage")%>
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
    <%: Html.ActionLink("Sites", "Sites", "SiteManage")%>
    > Edit Site
</asp:Content>
