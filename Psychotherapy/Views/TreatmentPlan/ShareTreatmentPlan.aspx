<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<IPagedList<Insourcia.Psychotherapy.Model.UserTreatmentPlanPermission>>" %>
<%@ Import Namespace="Insourcia.WebControls.MvcPaging" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>SharePatientInfo</title>
    <script type="text/javascript">
        $(document).ready(function () {

            $('#btTmpPermissionAdd').click(function () {
                var slUser = $('#slUser');

                var text = slUser.find('option:selected').text();
                var value = slUser.val();
                if (value == "") {
                    alert("please select a user");
                    return;
                }
                if ($('#tr' + value).length != 0) {
                    alert("The permission already exists!");
                    return;
                }
                var tr = ' <tr id="tr' + value + '" class="listitem_one">';
                tr += '<td>' + text + '<input type="hidden" value="' + value + '" name="hdUserID"/></td>';
                tr += '<td><input type="checkbox" name="chkbRead" id="chkbRead' + value + '" onclick="SelectedBox(this,' + value + ')" /></td>';
                tr += '<td><input type="checkbox" name="chkbWrite" id="chkbWrite' + value + '" onclick="SelectedBox(this,' + value + ')" /></td>';
                //tr += '<td><input type="checkbox" name="chkbDownload" id="chkbDownload' + value + '" onclick="SelectedBox(this,"' + value + '")" /></td><input type="checkbox" name="chkbCheck" id="chkAll' + value + '" onclick="SelectedBox(this,' + value + ')" />';
                tr += '<td></td>';
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
        <%=Html.DropDownList("slUser", ViewData["slUser"] as SelectList, "Please select a user")%>        
        <input class="btn_adduser vl" type="button" value="&nbsp;&nbsp;Add&nbsp;&nbsp;" id="btTmpPermissionAdd" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;       
        <input type="checkbox" id="useall" name="useall"  checked="checked" style="vertical-align:middle;visibility:hidden" />
        </td>
        </tr>
        </table>
        </div>
        <!--选择条件结束-->
        <!--显示列表样式-->
        <form id="permissionForm" method="post" action="/TreatmentPlan/AddTreatmentPlanPermission">
         <%=Html.Hidden("hdPatientID",ViewData["PatientID"]) %>
         <%=Html.Hidden("hdTreatmentPlanID", ViewData["TreatmentPlanID"])%>
        <div class="pagedData_box">
        <%Html.RenderPartial("UcTMPPermissionList", Model); %>
        </div> 
        </form>
</div>
</body>
</html>


