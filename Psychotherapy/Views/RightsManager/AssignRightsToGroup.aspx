﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/ManagerSite.Master"
    Inherits="System.Web.Mvc.ViewPage<IPagedList<Insourcia.Psychotherapy.Model.SystemFunction>>" %>

<%@ Import Namespace="Insourcia.WebControls.MvcPaging" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Assign rights to group
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="HeadContent" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            $('#btSave').click(function () {
                var options = {
                    dataType: 'json',
                    beforeSubmit: function () {

                        if ($('#hdGroupIDs').val() == '') {
                            alert('load data failed.please reload again.');
                            return false;
                        }

                        if ($('input[name="chkRights"]:checked').length == 0) {
                            alert('please select a rights');
                            return false;
                        }

                        $('#loadingStatus').show();
                        $('#btSave').attr('disabled', true);
                        $('#btCancel').attr('disabled', true);
                    },
                    success: function (result) {
                        $('#loadingStatus').hide();
                        $('#btSave').attr('disabled', false);
                        $('#btCancel').attr('disabled', false);
                        if (result && result.Success) {
                            window.location='/rightsmanager/grouplist/<%=ViewData["PrePageIndex"]??1 %>?page=<%=ViewData["PrePageIndex"]??1 %>';

                        } else if (result) {
                            alert(result.ErrorMsg);
                        }
                    }
                };
                $('#assignRightsForm').ajaxSubmit(options);
            });
        });

        function filter(el) {
            var data = $('#searchForm').serialize();
            $.ajax({
                type: 'GET',
                dataType: 'html',
                url: '/rightsmanager/GetPagedRightsOfGroupList/1',
                cache: false,
                data: data,
                beforeSend: function () {
                    $('#loadingStatus').show();
                    $(el).attr('disabled', true);
                },
                success: function (result) {
                    $('#loadingStatus').hide();
                    $(el).attr('disabled', false);
                    $('#pagedData_box').html(result);
                }
            });
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <form action="/rightsmanager/assignrightstogroup" id="assignRightsForm" method="post">
    <%=Html.Hidden("hdGroupIDs",ViewData["GroupIDs"]) %>
    <div id="pagedData_box">
        <%Html.RenderPartial("RightsOfGroupList", Model); %>
    </div>
    </form>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="phNavigation" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="phToolBar" runat="server">
    <div id="rightscom_box">
        <form id="searchForm">
        <input type="button" value="Save" class="btn-style" id="btSave" />&nbsp;
        <input type="button" value="Cancel" onclick=" window.location= '/rightsmanager/grouplist/<%=ViewData["PrePageIndex"]??1 %>?page=<%=ViewData["PrePageIndex"]??1 %>'"
            class="btn-style" id="btCancel" />
        <div id="search_box" class="divFilter">
            <input type="text" id="txtRightsName" name="txtRightsName" />
            <input type="button" id="btFilter" name="btFilter" onclick="filter(this)" class="btn-style"
                value="Filter" />
        </div>
        </form>
    </div>
</asp:Content>