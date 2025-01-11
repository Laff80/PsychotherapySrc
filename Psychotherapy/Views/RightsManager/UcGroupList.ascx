<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<IPagedList<Insourcia.Psychotherapy.Model.Group>>" %>
<%@ Import Namespace="Insourcia.WebControls.MvcPaging" %>
<script type="text/javascript">
    $(document).ready(function () {
        $('#chkSelectAllGroup').click(function () {
            var checked = this.checked;
            $('input[name="chkGroup"]').each(function (n) {
                this.checked = checked;
            });
        });
    });
</script>
    <div class="doclist">
        <table cellpadding="1" cellspacing="0">
            <col class="list-col-checkbox" style="width: 27px;" />
            <col class="list-col-objectname" style="width: 40%" />            
            <col class="list-col-description" style="width: auto" />
            <thead>
                <tr>
                    <td>
                        <input type="checkbox" id="chkSelectAllGroup" />
                    </td>
                    <td>
                        Group Name
                    </td>
                    <td>
                        Description
                    </td>                    
                </tr>
            </thead>            
        </table>
    </div>
<div id="show_Group" class="listitem">
        <table id="tbGroupList">
            <col class="list-col-checkbox" style="width: 27px;" />
            <col class="list-col-objectname" style="width: 40%;" />
            <col class="list-col-status " style="width: auto;" />            
            <thead>
            </thead>
            <tbody>
                <%foreach (var item in Model)
                  { %>
                 <tr class="selcktr listitem_one" id="row_<%=item.GroupID %>">
                    <td><input type="checkbox" id="chkGroup<%=item.GroupID %>" name="chkGroup" value="<%=item.GroupID %>" /></td>
                    <td id="groupName_<%=item.GroupID %>">
                    <a href="javascript:void(0);" onclick=" window.location.href= '/rightsmanager/viewgroup?groupid=<%=item.GroupID %>&page=<%=Model.CurrentPageIndex %>'">
                    <%=Html.Encode(item.GroupName) %></a>
                    </td>
                    <td id="desc_<%=item.GroupID %>"><%=Html.Encode(item.Description) %></td>                    
                </tr>
                <%} %>
            </tbody>
        </table>  
</div>
<div style="clear:both;"></div>
  <br />
<div style=" margin-left:11px">
      <%=Html.AjaxPager(Model, "GetPagedGroupList", "RightsManager", new PagerOptions { PageIndexParameterName = "id" }, new AjaxOptions { UpdateTargetId = "pagedData_box" })%>
</div>