<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<IPagedList<Insourcia.Psychotherapy.Model.SubItemPermissionModel>>" %>
<%@ Import Namespace="Insourcia.WebControls.MvcPaging" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>SharePatientInfo</title>
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
        $(document).ready(function () {
            $("#slUserPmAdd").combobox({ comboxSelected: function (event, data) {
                var text = data.selectedText;
                var value = data.selectedValue;
                if (value == "") {
                    alert("please select a user");
                    return;
                }
                if ($('#tr' + value).length != 0) {
                    alert("The permission already exists!");
                    return;
                }
                var tr = ' <tr id="tr' + value + '">';
                tr += '<td>' + text + '<input type="hidden" value="' + value + '" name="hdUserID"/></td>';
                tr += '<td><input type="checkbox" name="chkbRead" id="chkbRead' + value + '" onclick="SelectedBox(this,' + value + ')" /></td>';
                tr += '<td><input type="checkbox" name="chkbWrite" id="chkbWrite' + value + '" onclick="SelectedBox(this,' + value + ')" /></td>';
                tr += '<td><input type="checkbox" name="chkbCheck" id="chkAll' + value + '" onclick="SelectedBox(this,"' + value + '")" /></td>';
                tr += '</tr>';
                $('#tbUserPmList').find('tbody').prepend($(tr));
            }
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
        <%=Html.DropDownList("slUser", ViewData["slUser"] as SelectList, "Please select a user", new { id = "slUserPmAdd" })%>        
        <%--<input class="btn_adduser vl" type="button" value="&nbsp;&nbsp;Add&nbsp;&nbsp;" id="btFormPmAdd" />--%>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;       
        <input type="checkbox" id="useall" name="useall"  checked="checked" style="vertical-align:middle;visibility:hidden" />
        </td>
        </tr>
        </table>
        </div>
        <!--选择条件结束-->
        <!--显示列表样式-->
        <form id="permissionForm" method="post" action="/Form/AddFormsPermission">
         <%=Html.Hidden("hdPatientID",ViewData["PatientID"]) %>
        <div class="pagedData_box">
        <%Html.RenderPartial("UcFormsPermissionList", Model); %>
        </div> 
        </form>
</div>
</body>
</html>

