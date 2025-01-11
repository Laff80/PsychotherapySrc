<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<IPagedList<Insourcia.Psychotherapy.Model.LogRecord>>" %>
<%@ Import Namespace="Insourcia.WebControls.MvcPaging" %>
<script type="text/javascript">
    var flip = 0;
    var logID = "";
    function LogView(id) {
        if (logID == "") {
            logID = id;
            $("#showmore_" + id).toggle(flip++ % 2 == 0);
        }
        else if (logID != id) {
            $("#showmore_" + logID).hide();
            $("#showmore_" + id).show();
            $('#log_' + logID).removeClass('addcolor');
            $('#log_' + id).addClass('addcolor');
            logID = id;
        }
        else {
            $("#showmore_" + id).toggle(flip++ % 2 == 0);
        }
        if (flip % 2 == 0) {
            $('#log_' + id).removeClass('addcolor');
            flip = 0;
            logID = 0;
        }
        else {
            $('#log_' + id).addClass('addcolor');
        }
    };  
</script>
 <div class="doclist">
       <table cellpadding="1" cellspacing="0">
           <col style="width:27px;display:none; " />
           <col style="width:110px;" />
           <col style="width:75px;" />
           <col style="width:auto"  />
           <col style="width:250px;" />
           <col style="width:80px;" />
           <col style="width:85px" />
           <thead>
             <tr>
               <td style="border-left:0;display:none;"><input type="checkbox" style="margin:5px 0 0 1px;" onclick="ckAllistboxs(this)" /></td>
                <td style="border-left:0">Date</td>
                <td><span>Level</span></td>
                <td><span>Message</span></td>
                <td><span>Operand</span></td>
                <td><span>IP</span></td>                
                <td><span>UserName</span></td>
             </tr>
           </thead>
        </table>
</div>
<div class="listitem">  
         <table>
           <col style="width:27px;display:none;" />
           <col style="width:110px;" />
           <col style="width:75px;" />
           <col style="width:auto"  />
           <col style="width:250px;" />
           <col style="width:80px;" />
           <col style="width:85px" />
               <tbody id="tb-list">
<% foreach (var item in Model)
   { %>   

        <tr id="log_<%=item.ID %>"  class="selcktr listitem_one cursor-pointer"  onclick="LogView('<%=item.ID %>')">
            <td style="display:none;"><input onclick="selected(this)" name="chkbLogsChecked" type="checkbox" value="<%=item.ID %>" /></td>
            <td>
                <%= Html.Encode(String.Format("{0:g}", item.Date))%>
            </td>             
            <td>
                <%= Html.Encode(item.Level)%>
            </td>           
            <td>
                <%= Html.Encode(Insourcia.Common.StringUtil.CutDBCString(item.Message, 0, 50))%>
            </td>           
            <td>
                 <%= Html.Encode(Insourcia.Common.StringUtil.CutDBCString(item.Operand,0,40))%>
            </td>
            <td>
                <%= Html.Encode(item.IP)%>
            </td> 
           <td>
               <%= Html.Encode(item.UserName)%>
            </td>      
        </tr>
        <tr id="showmore_<%=item.ID %>" style="display:none;">
           <td colspan="7" style=" height:100px;padding-left:1px">
               <table class="loginfo"  style="table-layout:fixed">
                      <col style="width:10%" />
                      <col style="width:15%" />
                      <col style="width:10%" />
                      <col style="width:15%" />
                      <col style="width:10%" />
                      <col style="width:15%" />
                      <tr>
                          <th>Date:</th>
                          <td><%= Html.Encode(String.Format("{0:g}", item.Date))%></td>
                          <th>Level:</th>
                          <td><%= Html.Encode(item.Level)%></td>
                          <th>IP:</th>
                          <td><%= Html.Encode(item.IP) %></td>
                      </tr>
                      <tr>
                          <th>User Name:</th>
                          <td><%= Html.Encode(item.UserName) %></td>
                          <th>Logger:</th>
                          <td><%= Html.Encode(item.Logger) %> </td>
                          <th>Action Type:</th>
                          <td><%= Html.Encode(item.ActionType) %></td>
                      </tr>
                      <tr>
                          <th>Message:</th>
                          <td colspan="5" style="word-wrap:break-word;width:90%;overflow:auto;"><%= Html.Encode(item.Message) %></td> 
                      </tr>
                      <tr>
                           <th>Operand:</th>
                          <td colspan="5"><%= Html.Encode(item.Operand) %></td>
                      </tr>
                      <tr>
                          <th>Exception:</th>
                          <td colspan="5" style="word-wrap:break-word;width:90%;overflow:auto;"><%= Html.Encode(item.Exception) %></td><%--http://www.blueidea.com/tech/web/2006/3469.asp--%>
                      </tr>
                </table>
           </td>
        </tr>   
<% } %>
</tbody>
</table>
<br />
<div style=" margin-left:11px">
   <%=Html.AjaxPager(Model, "LogPagedList", "LogInformation", new PagerOptions { PageIndexParameterName = "id" }, new AjaxOptions { UpdateTargetId = "logList_box" })%>
</div>
</div>