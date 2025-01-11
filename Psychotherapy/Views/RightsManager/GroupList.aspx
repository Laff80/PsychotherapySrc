<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/ManagerSite.Master"
    Inherits="System.Web.Mvc.ViewPage<IPagedList<Insourcia.Psychotherapy.Model.Group>>" %>
<%@ Import Namespace="Insourcia.WebControls.MvcPaging" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Group manager
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="HeadContent" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            $('#btShowAdd').click(function () {
                showForm();
                $('#hdGroupID').val('');
            });
            $('#btGroupAddCancel').click(function () {
                hideForm();
            });

            $('#btShowEdit').click(function () {
                var selectedItems = $('input[name="chkGroup"]:checked');
                if (selectedItems.length == 0) {
                    alert("please select a item you want to edit");
                    return false;
                }
                if (selectedItems.length > 1) {
                    alert("Can not edit more than one item");
                    return false;
                }
                var ID = selectedItems.get(0).value;
                $('#txtGroupName').val($.trim($('#groupName_' + ID).text()));
                $('#txtDesc').val($.trim($('#desc_' + ID).text()));
                showForm();
                $('#hdGroupID').val(ID);
            });
            function showForm() {
                $('#rightscom_box').hide();
                $('#add_box').slideDown();
            }
            function hideForm() {
                $('#rightscom_box').slideDown();
                $('#add_box').slideUp('fast');

                $('#txtGroupName').val('');
                $('#txtDesc').val('');
                $('#hdGroupID').val('');
            }


            $('#btDeleteGroup').click(function () {
                var selectedItems = $('input[name="chkGroup"]:checked');
                if (selectedItems.length == 0) {
                    alert("please select one or more item.");
                    return false;
                }
                if (!confirm("Are you want to delete selected item?")) return false;

                var options = { dataType: 'json',
                    beforeSubmit: function () {
                        $('#loadingStatus').show();
                        $('#btDeleteGroup').attr('disabled', true);
                    },
                    success: function (result) {

                        $('#loadingStatus').hide();
                        $('#btDeleteGroup').attr('disabled', false);
                        if (result && result.Success) {

                            $(result.GroupIDs).each(function () {
                                $('#row_' + this).remove();
                            });
                        } else if (result) {
                            alert(result.ErrorMsg);
                        }
                    }
                };
                $('#list_GroupForm').ajaxSubmit(options);

            });

            /****************************************/
            $("#btAddGroup").click(function () {
                var options = {
                    dataType: 'json',
                    beforeSubmit: function () {

                        if ($('#txtGroupName').val() == '') {
                            alert('Group name is required');
                            return false;
                        }

                        if ($('#txtDesc').val() == '') {
                            alert('Description is required');
                            return false;
                        }

                        $('#loadingStatus').show();
                        $('#btAddGroup').attr('disabled', true);
                        $('#btGroupAddCancel').attr('disabled', true);
                    },
                    success: function (result) {
                        $('#loadingStatus').hide();
                        $('#btAddGroup').attr('disabled', false);
                        $('#btGroupAddCancel').attr('disabled', false);
                        if (result && result.Success) {
                            var ID = $('#hdGroupID').val();

                            if (ID == "") {
                                var row = '<tr class="selcktr listitem_one" id="row_' + result.GroupID + '">';
                                row += '<td><input type="checkbox" id="chkGroup' + result.GroupID + '" name="chkGroup" value="' + result.GroupID + '" /></td>';
                                row += '<td id="groupName_' + result.GroupID + '">';
                                row += "<a href=\"javascript:void(0);\" onclick=\"window.location.href='/userrights.aspx/viewgroup?groupid="+ result.GroupID + "&page=<%=Model.CurrentPageIndex %>' \">" + $('#txtGroupName').val() + "</a></td>";
                                row += '<td id="desc_' + result.GroupID + '">' + $('#txtDesc').val() + '</td>';
                                row += '</tr>';

                                $('#tbGroupList').find('tbody').prepend(row);

                            }
                            else {
                                $('#groupName_' + ID).text($('#txtGroupName').val());
                                $('#desc_' + ID).text($('#txtDesc').val());
                                hideForm();
                            }

                            $('#txtGroupName').val('');
                            $('#txtDesc').val('');

                        } else if (result) {
                            alert(result.ErrorMsg);
                        }
                    }
                };
                $('#addGroup_Form').ajaxSubmit(options);
            });
            /****************************************************/
            $('#btAssignRights').click(function () {
                var selectedItems = $('input[name="chkGroup"]:checked');
                if (selectedItems.length == 0) {
                    alert("please select one or more item.");
                    return false;
                }
                var data = $('#list_GroupForm').serialize();
                var url = '/rightsmanager/assignrightstogroup?' + data;                
                //requestPage('main_content', '/rightsmanager/assignrightstogroup', data, 'GET');
                window.location.href = url;
            });

        });
        function filter(el) {
            var data = $('#searchForm').serialize();
            $.ajax({
                type: 'GET',
                dataType: 'html',
                url: '/rightsmanager/GetPagedGroupList/1',
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
    <div class="explorer_toolbar">
    </div>
    <form id="list_GroupForm" name="list_GroupForm" action="/rightsmanager/deletegroup"
    method="post">
    <div id="pagedData_box">
        <%Html.RenderPartial("UcGroupList", Model); %>
    </div>
    <%=Html.Hidden("page",Model.CurrentPageIndex) %>
    </form>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="phNavigation" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="phToolBar" runat="server">
    <div id="add_box" style="padding: 5px; display: none;">
        <form id="addGroup_Form" action="/rightsmanager/addoreditgroup" method="post">
        <table cellpadding="1" cellspacing="0" width="100%" style="border-spacing: 2px;">
            <tr>
                <td style="width:15%; font-weight: bold;">
                    User Group Name:
                </td>
                <td style="width: 20%;">
                    <%=Html.Hidden("hdGroupID") %>
                    <%=Html.TextBox("txtGroupName")%>
                </td>
                <td style="width: 10%; font-weight: bold;">
                    Description:
                </td>
                <td style="width: 20%;">
                    <%=Html.TextBox("txtDesc")%>
                </td>
                <td>
                    <input type="button" id="btAddGroup" class="btn-style" value="Save" />&nbsp;
                    <input type="button" id="btGroupAddCancel" class="btn-style" value="Cancel" />
                </td>
            </tr>
        </table>
        </form>
    </div>
    <div id="rightscom_box">
        <form id="searchForm">
        <input type="button" id="btShowAdd" class="btn-style" value="Add" />
        <input type="button" id="btShowEdit" class="btn-style" value="Edit" />
        <input type="button" id="btDeleteGroup" class="btn-style" value="Delete" />
        <input type="button" id="btAssignRights" class="btn-style" value="Assign Permission" />
        <div id="search_box" class="divFilter">
            <input type="text" id="txtGroupName" name="txtGroupName" />
            <input type="button" id="btFilter" onclick="filter(this)" name="btFilter" class="btn-style"
                value="Filter" />
        </div>
        </form>
    </div>
</asp:Content>
