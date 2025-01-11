﻿<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<IPagedList<Insourcia.Psychotherapy.Model.UserFilePermission>>" %>
<%@ Import Namespace="Insourcia.WebControls.MvcPaging" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>SharePatientInfo</title>
    <script type="text/javascript">
        $(document).ready(function () {

            $('#btUserPmAdd').click(function () {
                var slUser = $('#slUser');
                var slFile = $('#slFile');

                var fText = slFile.find('option:selected').text();
                var fValue = slFile.val();
                var uText = slUser.find('option:selected').text();
                var uValue = slUser.val();
                if (uValue == "") {
                    alert("please select a user");
                    return;
                }

                if (fValue == "") {
                    alert("please select a file");
                    return;
                }
                var id = fValue + "_" + uValue;
                if ($('#tr' + id).length != 0) {
                    alert("The permission already exists!");
                    return;
                }
                alert(id);
                var tr = ' <tr id="tr' + id + '" class="listitem_one">';
                tr += '<td>' + fText + '<input type="hidden" value="' + fValue + '" name="hdFileID"/></td>';
                tr += '<td>' + uText + '<input type="hidden" value="' + uValue + '" name="hdUserID"/></td>';
                tr += "<td><input type=\"checkbox\" name=\"chkbRead\" id=\"chkbRead" + id + "\" onclick=\"SelectedBox(this,'" + id + "')\" /></td>";
                tr += "<td><input type=\"checkbox\" name=\"chkbWrite\" id=\"chkbWrite" + id + "\" onclick=\"SelectedBox(this,'" + id + "')\" /></td>";
                tr += "<td><input type=\"checkbox\" name=\"chkbDownload\" id=\"chkbDownload" + id + "\" onclick=\"SelectedBox(this,'" + id + "')\" /></td>";
                tr += "<td><input type=\"checkbox\" name=\"chkbCheck\" id=\"chkAll" + id + "\" onclick=\"SelectedBox(this,'" + id + "')\" /></td>";
                tr += '</tr>';
                $('#tbUserPmList').find('tbody').prepend($(tr));
            });
        });
    </script>
</head>
<body>
<div id="middle_content_main"> 
        <div id="suserobj">
         <!--选择条件开始-->
        <table border="0" cellpadding="0" cellspacing="0">
        <tr>
        <td class="tdvl">
        <%=Html.DropDownList("slFile",ViewData["slFile"] as SelectList,"Please select a file") %>
        <%=Html.DropDownList("slUser", ViewData["slUser"] as SelectList, "Please select a user")%>
        <input class="btn_adduser vl" type="button" value="&nbsp;&nbsp;Add&nbsp;&nbsp;" id="btUserPmAdd" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       <%-- <input class="btn_adduser vl" type="button" value="&nbsp;Save&nbsp;" id="btSaveShare" />
        <input class="btn_adduser vl" type="button" value="&nbsp;Cancel&nbsp;" onclick=""   />--%>
        <input type="checkbox" id="useall" name="useall"  checked="checked" style="vertical-align:middle;visibility:hidden" />
        </td>
        </tr>
        </table>
        </div>
        <!--选择条件结束-->
        <!--显示列表样式-->
        <form id="permissionForm" method="post" action="/Files/AddFilePermission">
         <%=Html.Hidden("hdPatientID",ViewData["PatientID"]) %>
        <div class="pagedData_box">
        <%Html.RenderPartial("UcFilePermissionList", Model); %>
        </div> 
        </form>
</div>
</body>
</html>

