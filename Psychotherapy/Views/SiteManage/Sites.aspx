<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/ManagerSite.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<Insourcia.Psychotherapy.Model.Site>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Sites
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<div id="list-box" >
    <%Html.RenderPartial("UcSites", Model); %>
</div>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="HeadContent" runat="server">
<script language="javascript" type="text/javascript">
    $(document).ready(function () {
        $('#btnSerach').click(function () {
            var value = $('#txtValue').val();

            if (value == "") {
                alert("please enter the Department Name or Time");
                return false;
            }
            $.ajax({
                url: '/SiteManage/GetSites',
                data: 'keyword=' + value,
                type: 'POST',
                dataType: 'html',
                cache: false,
                beforeSubmit: function () {
                    $('#btnSerach').attr('disabled', true);
                },
                success: function (result) {
                    $('#list-box').html(result);
                    $('#btnSerach').attr('disabled', false);
                    $("table.list tr:even").addClass("row_color");
                }
            });
        });
    })
</script>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="phToolBar" runat="server">
    <input type="text" class="search-style" id="txtValue" title="please input the SiteName" />
    <input type="button" class="btn-style" id="btnSerach" value="Serach" />
    |
    <input type="button" class="btn-style" value="New Site" onclick="document.location='/SiteManage/NewSite'"/>
    |
    <input type="button" class="btn-style" value="Edit Site" onclick="SelectedAction('/SiteManage/EditSite/','ckbSite',false);"/>
<%--    |
    <input type="button" class="btn-style" value="Delete Site" onclick="SelectedAction('/Site/Delete/','ckbSite',true);"/>--%>
</asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="phNavigation" runat="server">
Sites
</asp:Content>



