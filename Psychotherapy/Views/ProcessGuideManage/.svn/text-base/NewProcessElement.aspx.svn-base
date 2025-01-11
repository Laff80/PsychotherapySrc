<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/ManagerSite.Master" Inherits="System.Web.Mvc.ViewPage<Insourcia.Psychotherapy.Model.ProcessGuide>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	New Procees Element
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <% using (Html.BeginForm()) {%>
        <%: Html.ValidationSummary(true) %>

        <table class="table-form-style">

       <tr>
            <th>
                <%: Html.LabelFor(model => model.Level) %>
            </th>
            <td>
                <%: Html.TextBoxFor(model => model.Level) %>
                <%: Html.ValidationMessageFor(model => model.Level) %>
            </td>
        </tr> 
       <tr>
            <th>
                <%: Html.LabelFor(model => model.Title) %>
            </th>
            <td>
                <%: Html.TextAreaFor(model => model.Title) %>
                <%: Html.ValidationMessageFor(model => model.Title) %>
            </td>
        </tr> 
        <tr>
            <th>
            </th>
            <td>
                <input type="submit" value="Save" class="btn-style" />
                <input type="reset" value="Reset" class="btn-style" />
                <%: Html.ActionLink("Back to List >>", "ProcessElement", "ProcessGuideManage")%>
            </td>
        </tr>
        </table>

    <% } %>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="phNavigation" runat="server">
    <%: Html.ActionLink("ProcessElement", "ProcessElement", "ProcessGuideManage")%>
    > New Process Element
</asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="phToolBar" runat="server">
</asp:Content>

