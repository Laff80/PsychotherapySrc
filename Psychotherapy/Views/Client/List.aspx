<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IPagedList<Insourcia.Psychotherapy.Model.Patient>>" %>
<%@ Import Namespace="Insourcia.WebControls.MvcPaging" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
   Client list
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="HeadContent" runat="server">
<style type="text/css">
    .ui-button
    {
        margin-left: -1px;
    }
    .ui-button-icon-only .ui-button-text
    {
        padding: 0.35em;
    }
    .ui-autocomplete
    {
        max-height:300px;
        overflow:auto;
    }
    .ui-autocomplete-input
    {
        margin: 0;
        padding: 0.48em 0 0.47em 0.45em;
    }
</style>
<script src="../../Scripts/Utility/combobox.js" type="text/javascript"></script>
<script type="text/javascript">

    //搜索用户列表
    $(document).ready(function () {

        $('select[name="uid"]').find("option[text='My Clients']").val('<%:ViewData["mid"] %>');
        $("#combobox").combobox({ comboxSelected: function (event, data) {
            var page = $('#hdPage').val();
            var parametersValue = 'uid=' + data.selectedValue;
            $.ajax({
                url: '/client/clientlist/' + page,
                data: parametersValue,
                type: 'POST',
                dataType: 'html',
                cache: false,
                beforeSubmit: function () {
                    $('#btnSearch').attr('disabled', true);
                },
                success: function (result) {
                    $('#list-box').html(result);
                    $('#btnSearch').attr('disabled', false);
                    $("table.list tr:even").addClass("row_color"); 
                }
            });
        }
        });

        $('#btnSearch').click(function () {
            var value = $('#txtValue').val();
            var page = $('#hdPage').val();
            var uid = $('#uid').val();
            if (uid == "") { alert('Please select a user.'); return false; }
            var data = 'keyword=' + value + '&uid=' + uid;
            CreateSearch('/client/clientlist/' + page, data, this);
        });

    });
</script>
</asp:Content>

<asp:Content ID="ctToolBar" runat="server" ContentPlaceHolderID="phToolBar">
<%=Html.DropDownList("uid", ViewData["slUsers"] as IEnumerable<SelectListItem>,"My Clients", new { id = "combobox" })%>
<input type="text" class="search-style ui-autocomplete-input ui-widget ui-widget-content" id="txtValue" title="Please enter the client name or grid." />
<input type="button" class="btn-style" value="Search" id="btnSearch"/> 
|
<input type="button" class="btn-style" value="New Client" onclick="document.location = '/Client/Create';" />
</asp:Content>

<asp:Content ID="ctNavigation" runat="server" ContentPlaceHolderID="phNavigation">
All client list
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<div class="table">
       <div id="list-box">
                <%Html.RenderPartial("UcClientList"); %>
       </div>
</div>
</asp:Content>
