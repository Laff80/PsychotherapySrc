<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<IPagedList<Insourcia.Psychotherapy.Model.File>>" %>
<%@ Import Namespace="Insourcia.WebControls.MvcPaging" %>
<script type="text/javascript">
    $(document).ready(function () {
        $('#chkbSelectAll').click(function () {
            var checked = this.checked;
            $('input[name="chkbFile"]').each(function (n) {
                this.checked = checked;
            });
        });
    });
</script>
    <table class="files" cellspacing="1" border="0" cellpadding="0" bgcolor="#50a0e7" style="display: table;">
        <tr>
            <th>
               <input type="checkbox" id="chkbSelectAll" />
            </th>
            <th>
                File Name
            </th>
            <th>
                Description
            </th>
            <th style=" width:10%">
                Upload Date
            </th>
<%--           <th style=" width:15%">
                Download files below
            </th>--%>
        </tr>
    <%if (Model.Count() > 0)
      { %>
    <% foreach (var item in Model)
       { %>
    
        <tr>
            <td>
                <input type="checkbox" name="chkbFile" id="chkbFile<%=item.FileID %>" value="<%=item.FileID %>" />
            </td>
            <td>
               <%=Html.ActionLink(item.FileName + item.Type, "download", "files", new { patientID = item.PatientID,fileID=item.FileID, filePath=item.Path }, null)%>
            </td>
            <td>
                <%: item.Description%>
            </td>
            <td>
                <%: String.Format("{0:dd/MM/yyyy}", item.TimeCreated)%>
            </td>
<%--            <td style="text-align:center">
                <input type="button" value="Download" onclick="Link_blank('/files/download?patientID=<%:item.PatientID %>&fn=<%=item.Path%>')" <%=(bool)ViewData["Download"]?"":"disabled='disabled'" %> />
            </td>--%>
        </tr>
    
    <% } %>
    <%} %>
    <%else
        { %>
        <tr>
            <td colspan="4" style="text-align:center; color:Red">
                Files Record is empty.
            </td>
        </tr>
    <%} %>
    </table>

<%=Html.AjaxPager(Model, "FilesPagedList", "Client", new PagerOptions { PageIndexParameterName = "id", Id = "page", CssClass = "page-settings" }, new AjaxOptions { UpdateTargetId = "list-box", OnComplete = "OnComplete2" })%>
<%=Html.Hidden("hdPage",Model.CurrentPageIndex) %>

