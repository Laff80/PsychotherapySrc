<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<Insourcia.Psychotherapy.Model.TreatmentPlan>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Treatment Plan List
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div class="table">
       <div id="list-box">
                <%Html.RenderPartial("UcTreatmentPlansList"); %>
       </div>
    </div>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="HeadContent" runat="server">
    <script type="text/javascript">
        //搜索客户列表
        $(document).ready(function () {
            $('#btnSearch').click(function () {
                var value = $('#txtValue').val();
                var page = $('#hdPage').val();
                var patientID = <%:ViewData["patientID"] %>;
                if (value == "") { alert('Please enter the treatmentplan Status or Site.'); return false; }
                $.ajax({
                    url: '/TreatmentPlan/TreatmentPlanPagedList/' + page + '?patientID=' + patientID,
                    data: 'keyword=' + value,
                    type: 'POST',
                    dataType: 'html',
                    timeout: 10000,
                    beforeSubmit: function () {
                        $('#btnSearch').attr('disabled', true);
                    },
                    success: function (result) {
                        alert(result);
                        $('#list-box').html(result);
                        $('#btnSearch').attr('disabled', false);
                        $("table.list tr:even").addClass("row_color");
                    }
                });
            });
        });
</script>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="phToolBar" runat="server">
<input type="text" class="search-style" id="txtValue" title="Please enter the treatmentplan id." />
<input type="button" class="btn-style" value="Search" id="btnSearch"  />
<%if ((bool)ViewData["Write"])
  { %>
|
<input type="button" class="btn-style" value="New Treatment Plan" onclick="document.location = '/FlowChart/Cluster?patientID=<%:ViewData["patientID"] %>';" />
<%} %>
</asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="phNavigation" runat="server">
<%:Html.ActionLink("Client list","list","Client")%>
    >
    <%:Html.ActionLink(Html.Encode(Session["ClientName"]), "Info", "Client", new { id = Request.QueryString["patientID"] }, null)%>
     >
    Treatment Plan List
</asp:Content>

<asp:Content ID="Content6" ContentPlaceHolderID="phfootBar" runat="server">
</asp:Content>

