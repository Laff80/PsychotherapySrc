<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<IPagedList<Insourcia.Psychotherapy.Model.UserFilePermission>>" %>
<%@ Import Namespace="Insourcia.WebControls.MvcPaging" %>
<script type="text/javascript">
    $(document).ready(function () {
        $('#chkbSelectAll').click(function () {
            var checked = this.checked;
            $('input[name="chkbRead"]').each(function (n) { this.checked = checked; });
            $('input[name="chkbWrite"]').each(function (n) { this.checked = checked; });
            $('input[name="chkbDownload"]').each(function (n) { this.checked = checked; });
            $('input[name="chkbChecked"]').each(function (n) { this.checked = checked; });
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
                $('#chkbWrite' + id).attr('checked', element.checked);
        }
        else if (element.name == 'chkbWrite' && element.checked) {
            $('#chkbRead' + id).attr('checked', element.checked);
            $('#chkbDownload' + id).attr('checked', element.checked);
        }
        else if (element.name == 'chkbRead' && !element.checked) {
            $('#chkbWrite' + id).attr('checked', element.checked);
            $('#chkbDownload' + id).attr('checked', element.checked);
            $('#chkbCheck' + id).attr('checked', element.checked);

        }
    }
</script>
     <div class="doclist">
        <table cellpadding="1" cellspacing="0">
            <col class="list-col-objectname" style="width: auto" /> 
            <col class="list-col-objectname" style="width: 30%" />            
            <col class="list-col-description" style="width: 10%" />
            <col class="list-col-objectname" style="width: 10%" /> 
            <col class="list-col-objectname" style="width: 10%" />
            <col class="list-col-objectname" style="width: 27px" />
            <thead>
                <tr>
                    <td>
                       File Name
                    </td>
                    <td>
                        User
                    </td>
                    <td>
                       Read
                    </td>
                    <td>
                        Write
                    </td> 
                    <td>
                        Download
                    </td>
                    <td>
                       <input type="checkbox" name="chkbSelectAll" id="chkbSelectAll"  />
                    </td>
                </tr>
            </thead>            
        </table>
    </div>
<div id="show_Group" class="listitem">
        <table id="tbUserPmList">
             <col class="list-col-objectname" style="width: auto" /> 
             <col class="list-col-objectname" style="width: 30%" />            
            <col class="list-col-description" style="width: 10%" />
            <col class="list-col-objectname" style="width: 10%" /> 
            <col class="list-col-objectname" style="width: 10%" />
            <col class="list-col-objectname" style="width: 27px" />            
            <thead>
            </thead>
            <tbody>
              <%foreach (var item in Model)
          {%>
            <tr id="tr<%=item.FileID+"_"+item.UserID %>" class="listitem_one">
                <td>
                 <%:item.File.FileName %>
                  <%:Html.Hidden("hdFileID",item.FileID) %>
                </td>               
               <td>
                 <%:item.User.FirstName+" " +item.User.LastName %>
                 <%:Html.Hidden("hdUserID",item.UserID) %>
               </td>
               <td>
                  <input type="checkbox" name="chkbRead" id="chkbRead<%=item.FileID+"_"+item.UserID %>" <%=item.can_read ? "checked='checked'" : ""%> onclick='SelectedBox(this,"<%=item.FileID+"_"+item.UserID %>")' />
               </td>
               <td>
                  <input type="checkbox" name="chkbWrite" id="chkbWrite<%=item.FileID+"_"+item.UserID %>" <%=item.can_write ? "checked='checked'" : ""%> onclick="SelectedBox(this,'<%=item.FileID+"_"+item.UserID %>')" />
               </td>
               <td>
                  <input type="checkbox" name="chkbDownload" id="chkbDownload<%=item.FileID+"_"+item.UserID %>" <%=item.can_download ? "checked='checked'" : ""%> onclick="SelectedBox(this,'<%=item.FileID+"_"+item.UserID %>')" />
               </td>
               <td>
                  <input type="checkbox" name="chkbCheck" id="chkAll<%=item.FileID+"_"+item.UserID %>" <%=item.can_read&&item.can_write&&item.can_download ? "checked='checked'" : ""%> onclick="SelectedBox(this,<%=item.FileID+"_"+item.UserID %>')" />
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
