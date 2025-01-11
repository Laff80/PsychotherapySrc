<%@ Page Language="C#" MasterPageFile="~/Views/Shared/ManagerSite.Master" Inherits="System.Web.Mvc.ViewPage<IPagedList<Insourcia.Psychotherapy.Model.SystemFunction>>" %>
<%@ Import Namespace="Insourcia.WebControls.MvcPaging" %>
<asp:Content ID="ctTittle" ContentPlaceHolderID="TitleContent" runat="server">
rights list
</asp:Content>
<asp:Content ID="ctHeader" ContentPlaceHolderID="HeadContent" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            $('#btShowAdd').click(function () {
                showForm();
                $('#hdFunID').val('0');
            });
            $('#btRightsAddCancel').click(function () {
                hideForm();
            });

            $('#btShowEdit').click(function () {
                var selectedItems = $('input[name="chkRights"]:checked');
                if (selectedItems.length == 0) {
                    alert("please select a item you want to edit");
                    return false;
                }
                if (selectedItems.length > 1) {
                    alert("Can not edit more than one item");
                    return false;
                }
                var funID = selectedItems.get(0).value;
                $('#txtFunName').val($.trim($('#funName_' + funID).text()));
                $('#txtDesc').val($.trim($('#desc_' + funID).text()));
                showForm();
                $('#hdFunID').val(funID);
            });
            function showForm() {
                $('#rightscom_box').hide();
                $('#addRights_box').slideDown();
            }
            function hideForm() {
                $('#rightscom_box').slideDown();
                $('#addRights_box').slideUp('fast');

                $('#txtFunName').val('');
                $('#txtDesc').val('');
                $('#hdFunID').val('0');
            }

            $('#btDeleteRights').click(function () {
                var selectedItems = $('input[name="chkRights"]:checked');

                if (selectedItems.length == 0) {
                    alert("please select one or more item.");
                    return false;
                }
                if (!confirm("Are you want to delete the item?")) return false;

                var options = { dataType: 'json',
                    beforeSubmit: function () {
                        $('#loadingStatus').show();
                        $('#btDeleteRights').attr('disabled', true);
                    },
                    success: function (result) {

                        $('#loadingStatus').hide();
                        $('#btDeleteRights').attr('disabled', false);
                        if (result && result.Success) {
                            $(result.FunIDs).each(function () {
                                $('#row_' + this).remove();
                            });
                        } else if (result) {
                            alert(result.ErrorMsg);
                        }
                    }
                };
                $('#rightsListForm').ajaxSubmit(options);

            });

            $("#btAddRights").click(function () {
                var options = {
                    dataType: 'json',
                    beforeSubmit: function () {

                        if ($('#txtFunName').val() == '') {
                            alert('Function name is required');
                            return false;
                        }

                        if ($('#txtDesc').val() == '') {
                            alert('Description is required');
                            return false;
                        }

                        $('#loadingStatus').show();
                        $('#btAddRights').attr('disabled', true);
                        $('#btRightsAddCancel').attr('disabled', true);
                    },
                    success: function (result) {
                        $('#loadingStatus').hide();
                        $('#btAddRights').attr('disabled', false);
                        $('#btRightsAddCancel').attr('disabled', false);
                        if (result && result.Success) {
                            var funID = $('#hdFunID').val();

                            if (funID == 0) {
                                var row = '<tr class="selcktr listitem_one" id="row_' + result.FunID + '">';
                                row += '<td><input type="checkbox" id="chkRights' + result.FunID + '" name="chkRights" value="' + result.FunID + '" /></td>';
                                row += '<td id="funName_' + result.FunID + '">' + $('#txtFunName').val() + '</td>';
                                row += '<td id="desc_' + result.FunID + '">' + $('#txtDesc').val() + '</td>';
                                row += '<td>' + result.CreatedTime + '</td>';
                                row += '</tr>';

                                $('#tbRightsList').find('tbody').prepend(row);

                            }
                            else {
                                $('#funName_' + funID).text($('#txtFunName').val());
                                $('#desc_' + funID).text($('#txtDesc').val());
                                hideForm();
                            }

                            $('#txtFunName').val('');
                            $('#txtDesc').val('');

                        } else if (result) {
                            alert(result.ErrorMsg);
                        }
                    }
                };
                $('#addRightsForm').ajaxSubmit(options);
            });
        });

        function filter(el) {
            var data = $('#searchForm').serialize();
            $.ajax({
                type: 'GET',
                dataType: 'html',
                url: '/rightsmanager/GetPagedRightsList/1',
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
<asp:Content ID="ctMain" ContentPlaceHolderID="MainContent" runat="server">

    <div id="pagedData_box">
    <%Html.RenderPartial("UcRightsList", Model); %>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="phToolBar" runat="server">
      <div id="addRights_box" style="padding: 5px; display: none;">
            <form id="addRightsForm" action="/rightsmanager/AddOrEditRights" method="post">
            <table cellpadding="1" cellspacing="0" width="100%" style="border-spacing: 2px;">
                <tr>
                    <td style="width: 10%; font-weight: bold;">
                        Function Name:
                    </td>
                    <td style="width: 20%;">
                        <%=Html.Hidden("hdFunID") %>
                        <%=Html.TextBox("txtFunName")%>
                    </td>
                    <td style="width: 10%; font-weight: bold;">
                        Function Url:
                    </td>
                    <td style="width: 20%;">
                        <%=Html.TextBox("txtFunUrl")%>
                    </td>
                    <td style="width: 10%; font-weight: bold;">
                        Description:
                    </td>
                    <td style="width: 20%;">
                        <%=Html.TextBox("txtDesc")%>
                    </td>
                    <td>
                        <input type="button" id="btAddRights" class="btn-style" value="Save" />&nbsp;
                        <input type="button" id="btRightsAddCancel" class="btn-style" value="Cancel" />
                    </td>
                </tr>
            </table>
            </form>
        </div>
        <div id="rightscom_box">
            <form id="searchForm">
            <input type="button" id="btShowAdd" class="btn-style" value=" Add " />
             <input type="button" id="btShowEdit" class="btn-style" value="Edit" />
            <input type="button" id="btDeleteRights" class="btn-style" value="Delete" />
            <div id="search_box" class="divFilter">
               <input type="text" id="txtRightsName" name="txtRightsName" />
               <input type="button" id="btFilter" name="btFilter" onclick="filter(this)" class="btn-style" value="Filter" />
            </div>
            </form>
        </div>
</asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="phNavigation" runat="server">
</asp:Content>
