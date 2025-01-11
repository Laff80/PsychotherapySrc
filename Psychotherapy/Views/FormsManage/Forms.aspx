<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/ManagerSite.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<Insourcia.Psychotherapy.Model.Form>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Forms
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<div class="table">
       <div id="list-box">
                <%Html.RenderPartial("UcForms", Model); %>
       </div>
</div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="phNavigation" runat="server">
Forms
</asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="phToolBar" runat="server">
<input type="text" class="search-style" id="txtValue"/>
<input type="button" class="btn-style" id="btnSearch" value="Search" />
|
<input type="button" class="btn-style" value="New Forms" onclick="document.location = '/FormsManage/NewForm';" />
|
<input type="button" class="btn-style" value="Edit Forms" onclick="SelectedAction('/FormsManage/EditForm/','ckbForms',false);" />
</asp:Content>
