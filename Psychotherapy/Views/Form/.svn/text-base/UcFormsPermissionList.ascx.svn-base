<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<IEnumerable<Insourcia.Psychotherapy.Model.SubItemPermissionModel>>" %>
<script type="text/javascript">
    $(document).ready(function () {
        $('#chkbSelectAll').click(function () {
            var checked = this.checked;
            $('input[name="chkbRead"]').each(function (n) { this.checked = checked; });
            $('input[name="chkbWrite"]').each(function (n) { this.checked = checked; });
            $('input[name="chkbCheck"]').each(function (n) { this.checked = checked; });
        });
    });
    function SelectedBox(element, id) {
        if (element.name == 'chkbCheck') {
            $('#chkbRead' + id).attr('checked', element.checked);
            $('#chkbWrite' + id).attr('checked', element.checked);
            //        $('#chkbChecked' + id).attr('checked', element.checked);
        }
        else if (element.name == 'chkbWrite' && element.checked) {
            $('#chkbRead' + id).attr('checked', element.checked);
            //            $('#chkbDownload' + id).attr('checked', element.checked);
        }
        else if (element.name == 'chkbRead' && !element.checked) {
            $('#chkbWrite' + id).attr('checked', element.checked);
            $('#chkbCheck' + id).attr('checked', element.checked);

        }
    }
</script>
    <table  id="tbUserPmList" class="list" cellspacing="1" border="0" cellpadding="0" bgcolor="#50a0e7" style="display: table;">
     <thead>
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
                <input type="checkbox" name="chkbSelectAll" id="chkbSelectAll"  />
            </th>
        </tr>
        </thead>
        <tbody>
    <% foreach (var item in Model) { %>
    
         <tr id="tr<%=item.UserID %>" >               
               <td>
                 <%:item.UserName%>
                 <%:Html.Hidden("hdUserID",item.UserID) %>
               </td>              
               <td>
                  <input type="checkbox" name="chkbRead" id="chkbRead<%=item.UserID %>" <%=item.CanRead? "checked='checked'" : ""%> onclick="SelectedBox(this,'<%=item.UserID %>')" />
               </td>
               <td>
                  <input type="checkbox" name="chkbWrite" id="chkbWrite<%=item.UserID %>" <%=item.CanWrite ? "checked='checked'" : ""%> onclick="SelectedBox(this,'<%=item.UserID %>')" />
               </td>               
               <td>
                 <input type="checkbox" name="chkbCheck" id="chkAll<%=item.UserID %>" <%=item.CanRead&&item.CanWrite? "checked='checked'" : ""%> onclick="SelectedBox(this,'<%=item.UserID %>')" />
               </td>
            </tr>
    
    <% } %>
    </tbody>
    </table>
