<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/ManagerSite.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<Insourcia.Psychotherapy.Model.LogRecord>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	LogList
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="HeadContent" runat="server">
 <style type="text/css">
    .loginfo{ border:#FAD162 solid 1px; width:100%;border-top:0;}
    .loginfo th{ text-align:right; background-color:#FFF7D7;border-bottom:#FAD162 1px dotted;padding:5px; color:#000}
    .loginfo td{ border-bottom:#FAD162 1px dotted; padding:2px 5px; background-color:#FFF7D7}
    .addcolor{background-color:#FAD162;border:1px solid #FAD162; border-left:1px solid #EFF3FA;}
    </style>
<script type="text/javascript">
    $(document).ready(function () {
        $('.dateItem').datepicker({ changeMonth: true, changeYear: true });
        $('#dellogs_form').submit(function () {
            var options = { dataType: 'json',
                beforeSubmit: function () {
                    if ($('#txtBeginTime').val() == '') {
                        alert('The start time is required.');
                        return false;
                    }
                    if ($('#txtEndTime').val() == '') {
                        alert('The end time is required.');
                        return false;
                    }
                    $('#btDelete_submit').attr('disabled', true);
                    $('#btCancel_del').attr('disabled', true);
                    $('#loadingStatus').show();
                },
                success: function (result) {
                    $('#loadingStatus').hide();
                    $('#btDelete_submit').attr('disabled', false);
                    $('#btCancel_del').attr('disabled', false);
                    if (result && result.Success) {
                        alert(result.Msg);
                        RefreshLogList($('#hdCurrentPagedIndex').val());
                    }
                    else if (result) {
                        alert(result.Msg);
                    }
                }
            };
            $(this).ajaxSubmit(options);
            return false;
        });

        function RefreshLogList(pageIndex) {
            $.ajax({
                dataType: 'html',
                url: "/loginformation/LogPagedList/" + pageIndex,
                cache: false,
                success: function (data) {
                    $('#logList_box').html(data);
                }
            });
        }

        $('#btDelete_submit').click(function () {
            $('#dellogs_form').submit();
            return false;
        });

        $('#shwo_dellogs').click(function () {
            $('#del_box').slideDown();
            $('#main-search').slideUp();
            $('#search-options').slideUp();
            $('#show-search-options').text('Show search options');

        });

        $('#btCancel_del').click(function () {
            $('#del_box').slideUp();
            $('#main-search').slideDown();
            $('#txtStartTime').val('');
            $('#txtEndTime').val('');
        });

        $("#show-search-options").click(function () {
            var searchOpt = $('#search-options');
            if (searchOpt.css('display') == 'none') {
                $('#search-options').slideDown();
                $(this).text('Hide search options');
            }
            else {
                $('#search-options').slideUp();
                $(this).text('Show search options');
                $('#txtUsername').val('');
                $('#txtIP').val('');
                $('#slLevel').get(0).selectedIndex = 0;
            }

        });

    });
    function filter(el) {
        var data = $('#search_Form').serialize();
        $.ajax({
            type: 'GET',
            dataType: 'html',
            url: '/loginformation/logpagedlist/1',
            cache: false,
            data: data,
            beforeSend: function () {
                $('#loadingStatus').show();
                $(el).attr('disabled', true);
                $('#shwo_dellogs').attr('disabled', true);
                $('#show_filter').attr('disabled', true);
            },
            success: function (result) {
                $('#loadingStatus').hide();
                $(el).attr('disabled', false);
                $('#shwo_dellogs').attr('disabled', false);
                $('#show_filter').attr('disabled', false);
                $('#logList_box').html(result);
            }
        });
    }
    </script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<div id="logList_box">
<%Html.RenderPartial("UcLogList", Model); %>
</div>
</asp:Content>



<asp:Content ID="Content4" ContentPlaceHolderID="phNavigation" runat="server">
</asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="phToolBar" runat="server">
<form id="search_Form" method="post">
<div id="main-search" class="explorer_toolbar"> 
      <div class="divFilter">
      Between&nbsp;<input type="text" value="<%=DateTime.Now.ToString("MM\\/dd\\/yyyy") %>" class="pf-edit-input dateItem" id="txtSearchStartTime" name="txtSearchStartTime" />
         &nbsp;and&nbsp;<input type="text" value="<%=DateTime.Now.ToString("MM\\/dd\\/yyyy") %>" class="pf-edit-input dateItem" id="txtSearchEndTime" name="txtSearchEndTime" />
                &nbsp;
        <input type="button" class="com_btn_style" onclick="filter(this)" id="show_filter" value="Filter" />        
        <span id="show-search-options" style="padding-left:10px;text-decoration:underline; cursor:pointer;color:#034AF5" onclick="">Show search options</span>
      </div>
    <input type="button" class="com_btn_style" id="shwo_dellogs"  value="Delete" />
</div>
<div id="search-options" style="background-color: #69C17D; border:4px solid #69C17D; border-top:0; height:80px; display:none ">
     <div style="background-color: #C9EDCC; width:100%;height: 100%;">
              <div style="background-color: #69C17D;padding:5px 8px 8px 5px">
                   <h2 style="display: inline;font-size: medium;font-weight: bold;text-align: left;">Search Options</h2>                   
              </div>
              <div style="padding:3px;">
      <table style="width:100%;">
          <tr >
            <td>username:</td>
            <td><input type="text" id="txtUsername" name="txtUsername" /></td>
            <td>IP:</td>
            <td><input type="text" id="txtIP" name="txtIP" /></td>
            <td>Level:</td>
            <td><select id="slLevel" name="slLevel">
                   <option value="">Choose level</option>
                   <option value="INFO">Info</option>
                   <option value="ERROR">Error</option>
                   <option value="DEBUG">Debug</option>
                   <option value="WARN">Warn</option>
                    <option value="FATAL">Fatal</option>
                 </select> </td>
             <td style="width:30%;"><input type="button" class="com_btn_style"  id="btSearchOK" onclick="filter(this)" value="OK" /></td>
          </tr>
         </table>
         </div>
        </div>
</div>
</form>
<div id="del_box" style="display:none;" class="explorer_toolbar">
<%using (Html.BeginForm("DeleteLogs", "LogInformation", FormMethod.Post, new { id="dellogs_form"}))
  { %>
  <table style="width:100%">
      <tr>
          <td>
            Between&nbsp;<input type="text" class="pf-edit-input dateItem" id="txtStartTime" name="txtStartTime" />&nbsp;
            and&nbsp;<input type="text" class="pf-edit-input dateItem" id="txtEndTime" name="txtEndTime" />
            &nbsp;<input type="button" id="btDelete_submit" class="com_btn_style" value="Delete" />
             &nbsp;<input type="button" id="btCancel_del" class="com_btn_style" value="Cancel" />
          </td>
      </tr>
  </table>
  <%} %>
</div>
</asp:Content>

