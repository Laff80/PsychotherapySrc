<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/ManagerSite.Master" Inherits="System.Web.Mvc.ViewPage<Insourcia.Psychotherapy.Model.Form>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	New Form
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <% using (Html.BeginForm()) {%>
        <%: Html.ValidationSummary(true) %>

        <table class="table-form-style">
       <tr>
            <th>
                <%: Html.LabelFor(model => model.FormName) %>
            </th>
            <td>
                <%: Html.TextBoxFor(model => model.FormName) %>
                <%: Html.ValidationMessageFor(model => model.FormName) %>
            </td>
        </tr> 
        <tr>
            <th>
                Category:
            </th>
            <td>
                <%: Html.DropDownList("category", ViewData["slCategories"] as IEnumerable<SelectListItem>, new { @class = "selectlist-style" })%>
            </td>
        </tr>
        <tr>
            <th>
                Description:
            </th>
            <td>
                <%: Html.TextArea("Description")%>
            </td>
        </tr>
        <tr>
            <th>
            </th>
            <td>
                <input type="submit" value="Save" class="btn-style" />
                <input type="reset" value="Reset" class="btn-style" />
                <%: Html.ActionLink("Back to List >>", "Forms", "FormsManage")%>
            </td>
        </tr>
        </table>

    <% } %>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="phNavigation" runat="server">
    <%: Html.ActionLink("Forms", "Forms", "FormsManage")%>
    > New Form
</asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="phToolBar" runat="server">
</asp:Content>

