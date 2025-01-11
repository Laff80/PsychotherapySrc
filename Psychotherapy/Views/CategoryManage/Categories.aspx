<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/ManagerSite.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<Insourcia.Psychotherapy.Model.Category>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Categories
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<div class="table">
       <div id="list-box">
                <%Html.RenderPartial("UcCategories",Model); %>
       </div>
</div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="HeadContent" runat="server">
<script type="text/javascript">
    $(document).ready(function () {
        $('#btnSearch').click(function () {
            var page = $('#hdPage').val();
            var data = 'keyword=' + $('#txtValue').val();
            CreateSearch("/CategoryManage/GetCategories/" + page, data, this);
        });
    });
</script>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="phNavigation" runat="server">
Categories
</asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="phToolBar" runat="server">
<input type="text" class="search-style" id="txtValue"/>
<input type="button" class="btn-style" id="btnSearch" value="Search" />
|
<input type="button" class="btn-style" value="New Category" onclick="document.location = '/CategoryManage/NewCategory';" />
|
<input type="button" class="btn-style" value="Edit Category" onclick="SelectedAction('/CategoryManage/EditCategory/','ckbCategory',false);" />
|
<input type="button" class="btn-style" value="Setting Form" onclick="SelectedAction('/CategoryManage/SettingForm/','ckbCategory',false);" />
</asp:Content>

