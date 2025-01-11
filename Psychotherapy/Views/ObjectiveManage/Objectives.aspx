<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/ManagerSite.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<Insourcia.Psychotherapy.Model.Objective>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Objectives
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<div class="table">
       <div id="list-box">
                <%Html.RenderPartial("UcObjectives",Model); %>
       </div>
</div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="HeadContent" runat="server">
<script type="text/javascript">
    $(document).ready(function () {

        $('#btnSearch').click(function () {
            var page = $('#hdPage').val();
            var data = 'keyword=' + $('#txtValue').val();
            CreateSearch("/ObjectiveManage/GetObjectives/" + page, data, this);
        });
    });
</script>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="phNavigation" runat="server">
Objectives
</asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="phToolBar" runat="server">
<input type="text" class="search-style" id="txtValue"/>
<input type="button" class="btn-style" id="btnSearch" value="Search" />
|
<input type="button" class="btn-style" value="New Objective" onclick="document.location = '/ObjectivesManage/NewObjective';" />
|
<input type="button" class="btn-style" value="Edit Objective" onclick="SelectedAction('/ObjectivesManage/EditObjective/','ckbObjective',false);" />
</asp:Content>
