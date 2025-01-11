<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<IPagedList<Insourcia.Psychotherapy.Model.UserPatientPermission>>" %>
<%@ Import Namespace="Insourcia.WebControls.MvcPaging" %>
<script type="text/javascript">
    $(document).ready(function () {
        $('#chkbSelectAll').click(function () {
            var checked = this.checked;
            $('input[name="chkbRead"]').each(function (n) { this.checked = checked; });
            $('input[name="chkbWrite"]').each(function (n) { this.checked = checked; });
            $('input[name="chkbDownload"]').each(function (n) { this.checked = checked; });
            $('input[name="chkbCheck"]').each(function (n) { this.checked = checked; });
        });
    });
    function SelectedBox(element, id) {
        if (element.name == 'chkbCheck') {
            $('#chkbRead' + id).attr('checked', element.checked);
            $('#chkbWrite' + id).attr('checked', element.checked);
            $('#chkbDownload' + id).attr('checked', element.checked);
            //        $('#chkbChecked' + id).attr('checked', element.checked);
        }
        else if (element.name == 'chkbDownload') {
            if (element.checked)
                $('#chkbRead' + id).attr('checked', element.checked);
            else
                $('#chkbCheck' + id).attr('checked', element.checked);
        }
        else if (element.name == 'chkbWrite' && element.checked) {
            $('#chkbRead' + id).attr('checked', element.checked);
//            $('#chkbDownload' + id).attr('checked', element.checked);
        }
        else if (element.name == 'chkbRead' && !element.checked) {
            $('#chkbWrite' + id).attr('checked', element.checked);
            $('#chkbDownload' + id).attr('checked', element.checked);
            $('#chkbCheck' + id).attr('checked', element.checked);

        }    
    }
</script>
<div id="show_Group" >
        <table id="tbUserPmList" class="list" cellspacing="1" border="0" cellpadding="0" bgcolor="#50a0e7" style="display: table;">
            <thead>
            <tr>
                    <th>
                        
                    </th>
                    <th colspan="4">
                      Psychosocial Form
                    </th>
                    
                    <th colspan="4">Allow access</th>
                </tr>
             <tr>
                    <th>
                        User
                    </th>
                    <th>
                       Read
                    </th>
                    <th>
                        Write
                    </th> 
                    <th>
                        Download
                    </th>
                    <th>
                       <input type="checkbox" name="chkbSelectAll" id="chkbSelectAll"  />
                    </th>
                    <th>Forms</th>
                    <th>Treatment Plans</th>
                    <th>Scanned Forms</th>
                    <th>Chart</th>
                </tr>
            </thead>
            <tbody>
              <%foreach (var item in Model)
          {%>
            <tr id="tr<%=item.UserID %>" class="listitem_one">               
               <td>
                 <%:item.User.FirstName+" " +item.User.LastName %>
                 <%:Html.Hidden("hdUserID",item.UserID) %>
               </td>
               <td>
                  <input type="checkbox" name="chkbRead" id="chkbRead<%=item.UserID %>" <%=item.can_read ? "checked='checked'" : ""%> onclick="SelectedBox(this,'<%=item.UserID %>')" />
               </td>
               <td>
                  <input type="checkbox" name="chkbWrite" id="chkbWrite<%=item.UserID %>" <%=item.can_write ? "checked='checked'" : ""%> onclick="SelectedBox(this,'<%=item.UserID %>')" />
               </td>
               <td>
                  <input type="checkbox" name="chkbDownload" id="chkbDownload<%=item.UserID %>" <%=item.can_download ? "checked='checked'" : ""%> onclick="SelectedBox(this,'<%=item.UserID %>')" />
               </td>
               <td>
                  <input type="checkbox" name="chkbCheck" id="chkAll<%=item.UserID %>" <%=item.can_read&&item.can_write&&item.can_download ? "checked='checked'" : ""%> onclick="SelectedBox(this,'<%=item.UserID %>')" />
               </td>
               <td>
                <input type="checkbox"  title="Is Applied Form" name="chkApplyForm" id="chkApplyForm<%=item.UserID %>" <%=item.FormData=="ALL,ALL" ? "checked='checked'" : ""%> onclick="SelectedBox(this,'<%=item.UserID %>')" />
               </td>
               <td>
                <input type="checkbox" title="Is Applied TreatmentPlan" name="chkApplyTreatmentPlan" id="chkApplyTreatmentPlan<%=item.UserID %>" <%=item.TreatmentPlanData=="ALL,ALL" ? "checked='checked'" : ""%> onclick="SelectedBox(this,'<%=item.UserID %>')" />
               </td>
               <td>
                <input type="checkbox" title="Is Applied ScannedForm" name="chkScannedForm" id="chkScannedForm<%=item.UserID %>" <%=item.ScannedFormData=="ALL,ALL" ? "checked='checked'" : ""%> onclick="SelectedBox(this,'<%=item.UserID %>')" />
               </td>
               <td>
                <input type="checkbox" title="Is Applied Chart" name="chkApplyChart" id="chkApplyChart<%=item.UserID %>" <%=item.ChartData=="ALL,ALL" ? "checked='checked'" : ""%> onclick="SelectedBox(this,'<%=item.UserID %>')" />
               </td>
            </tr>
         <% } %>
            </tbody>
        </table>  
</div>
<div style="clear:both;"></div>
  <br />
<div style=" margin-left:11px">
      <%=Html.AjaxPager(Model, "GetPatientPermissionList", "Client", new PagerOptions { PageIndexParameterName = "id" }, new AjaxOptions { UpdateTargetId = "pagedData_box" })%>
</div>


