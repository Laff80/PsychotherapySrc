<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/ManagerSite.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<Insourcia.Psychotherapy.Model.Group>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	group of user
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
 <form action="/rightsmanager/RemoveUserGroups" id="remove_UserGroupForm" method="post">
        <%=Html.Hidden("hdUserID",ViewData["UserID"]) %>
        <div id="pagedData_box">
        <%Html.RenderPartial("UcGroupList", Model); %>
        </div>
    </form>
    <div id="assignGroup" style="display: none;">
    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="HeadContent" runat="server">
<script type="text/javascript">
    $(document).ready(function () {
        $('#btRemoveGroup').click(function () {
            var options = {
                dataType: 'json',
                beforeSubmit: function () {

                    if ($('#hdUserID').val() == '') {
                        alert('load data failed.please reload again.');
                        return false;
                    }

                    if ($('input[name="chkGroup"]:checked').length == 0) {
                        alert('please select one or more groups');
                        return false;
                    }
                    if (!confirm("Are you sure you want to remove the selected groups?"))
                        return false;

                    $('#loadingStatus').show();
                    $('#btRemoveGroup').attr('disabled', true);
                },
                success: function (result) {
                    $('#loadingStatus').hide();
                    $('#btRemoveGroup').attr('disabled', false);
                    if (result && result.Success) {
                        $(result.GroupIDs).each(function () {
                            $('#row_' + this).remove();
                        });

                    } else if (result) {
                        alert(result.ErrorMsg);
                    }
                }
            };
            $('#remove_UserGroupForm').ajaxSubmit(options);
        });

        $('#btAssignGroup').click(function () {
            $.ajax({
                type: "GET",
                dataType: 'html',
                url: "/RightsManager/AssignGroupToUser",
                cache: false,
                beforeSend: function () {
                    $('#assignGroup').html('<div style="text-align:center;">loading...</div>')
                        .dialog({ autoOpen: false,
                            title: "Setting patient's group",
                            modal: true,
                            width: 460,
                            height: 300,
                            buttons: { 'Cancel': function () {
                                $(this).dialog('close');
                            },
                                "Save": function () {
                                    var read = [], write = [], download = [];
                                    $('input[name="chkbRead"]').each(function (n) {
                                        read.push(this.checked);
                                    });

                                    $('input[name="chkbWrite"]').each(function (i) {
                                        write.push(this.checked);
                                    });

                                    $('input[name="chkbDownload"]').each(function (i) {
                                        download.push(this.checked);
                                    });
                                    
                                    var options = {
                                        dataType: 'json',
                                        beforeSubmit: function () {
                                            $('#btUserPmAdd').attr('disabled', true);
                                        },
                                        data: { canRead: read, canWrite: write, canDownload: download },
                                        success: function (result) {
                                            $('#btUserPmAdd').attr('disabled', false);
                                            $('#btSaveShare').attr('disabled', false);
                                            if (result && result.Success) {
                                                alert('Operation was successful!');
                                            }
                                            else if (result) {
                                                alert("Operation is failed!");
                                            }
                                        }
                                    };
                                    $('#permissionForm').ajaxSubmit(options);
                                }
                            }
                        }).dialog("open");
                },
                data: 'uid=<%=ViewData["UserID"]%>',
                success: function (result) {
                    $('#assignGroup').html(result);
                }
            });
        });       
    });
    function filter(el) {
        var data = $('#searchForm').serialize();
        $.ajax({
            type: 'GET',
            dataType: 'html',
            url: '/rightsmanager/GetPagedGroupOfUserList/1',
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

<asp:Content ID="Content4" ContentPlaceHolderID="phNavigation" runat="server">
  <%=Html.ActionLink("back to user list", "list", "user", new { id = ViewData["PrePageIndex"] })%>>><%=ViewData["UserName"] %>'s groups  
</asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="phToolBar" runat="server">
  <div id="rightscom_box">
    <form id="searchForm">
        <input type="button" value="Add group" class="btn-style" id="btAssignGroup" />&nbsp; 
            <input type="button" value="Remove group" class="btn-style" id="btRemoveGroup"  />&nbsp;
            <div id="search_box" class="divFilter">
            <input type="text" id="txtGroupName" name="txtGroupName" />
            <input type="button" id="btFilter" name="btFilter" onclick="filter(this)" class="btn-style" value="Filter" />
        </div>
   </form>
  </div>
</asp:Content>

