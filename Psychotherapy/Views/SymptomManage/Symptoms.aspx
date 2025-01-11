<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/ManagerSite.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<Insourcia.Psychotherapy.Model.Symptom>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Symptoms
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<div class="table">
       <div id="list-box">
                <%Html.RenderPartial("UcSymptoms",Model); %>
       </div>
</div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="HeadContent" runat="server">
<script type="text/javascript">
    $(document).ready(function () {

        $('#btnSearch').click(function () {
            var page = $('#hdPage').val();
            var data = 'keyword=' + $('#txtValue').val();
            CreateSearch("/SymptomManage/GetSymptoms/" + page, data, this);
        });
    });
</script>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="phNavigation" runat="server">
Symptoms
</asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="phToolBar" runat="server">
<input type="text" class="search-style" id="txtValue"/>
<input type="button" class="btn-style" id="btnSearch" value="Search" />
|
<input type="button" class="btn-style" value="New Symptom" onclick="document.location = '/SymptomManage/NewSymptom';" />
|
<input type="button" class="btn-style" value="Edit Symptom" onclick="SelectedAction('/SymptomManage/EditSymptom/','ckbSymptom',false);" />
</asp:Content>
