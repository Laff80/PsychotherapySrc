<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<IPagedList<Insourcia.Psychotherapy.Model.SystemFunction>>" %>
<%@ Import Namespace="Insourcia.WebControls.MvcPaging" %>
<script type="text/javascript">
    $(document).ready(function () {
        $('#chkSelectAllRights').click(function () {
            var checked = this.checked;
            $('input[name="chkRights"]').each(function (n) {
                this.checked = checked;
            });
        });
    });
</script>
    <div class="doclist">
        <table cellpadding="1" cellspacing="0">
            <col class="list-col-checkbox" style="width: 27px;" />
            <col class="list-col-objectname" style="width: 40%" />
            <col class="list-col-status " style="width: 40%" />
            <col class="list-col-description" style="width: auto" />
            <thead>
                <tr>
                    <td>
                        <input type="checkbox" id="chkSelectAllRights" />
                    </td>
                    <td>
                        Function Name
                    </td>
                    <td>
                        Description
                    </td>
                    <td>
                        Created Time
                    </td>
                </tr>
            </thead>            
        </table>
    </div>
    <div id="show_Rights" class="listitem">
        <form id="rightsListForm" name="rightsListForm" action="/rightsmanager/deleterights"
        method="post">
        <table id="tbRightsList">
            <col class="list-col-checkbox" style="width: 27px;" />
            <col class="list-col-objectname" style="width: 40%;" />
            <col class="list-col-status " style="width: 40%;" />
            <col class="list-col-description" style="width: auto" />
            <thead>
            </thead>
            <tbody>
                <%foreach (var item in Model)
                  { %>
                <tr class="selcktr listitem_one" id="row_<%=item.FunctionID %>">
                    <td><input type="checkbox" id="chkRights<%=item.FunctionID %>" name="chkRights" value="<%=item.FunctionID %>" /></td>
                    <td id="funName_<%=item.FunctionID %>">
                        <%=Html.Encode(item.FunctionName) %>
                    </td>
                    <td id="desc_<%=item.FunctionID %>">
                        <%=Html.Encode(item.Description) %>
                    </td>
                    <td>
                        <%=Html.Encode(item.time_created) %>
                    </td>
                </tr>
                <%} %>
            </tbody>
        </table>
        </form>
    </div>
<div style="clear:both;"></div>
  <br />
<div style=" margin-left:11px">
      <%=Html.AjaxPager(Model, "GetPagedRightsList", "RightsManager", new PagerOptions { PageIndexParameterName = "id" }, new AjaxOptions { UpdateTargetId = "pagedData_box" })%>
</div>

