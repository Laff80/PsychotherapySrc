<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<IEnumerable<Insourcia.Psychotherapy.Model.FormData>>" %>
<%@ Import Namespace="Insourcia.Psychotherapy.Utility" %>
<li><span class="folder">Forms</span>
    <ul class="filetree">
        <%foreach (var item in Model)
          {%>
              <li>
                  <% string file = item.Form.FormName + "-" + item.FormDataID + "-" + item.TimeCreated.ToString("yyyy_MM_dd") + ".pdf";%>
                  <% string filepath = ChartUc.GetFilePath(item.PatientID.Value, "Form", file); %>
                  <span class="file">
                  <%=item.TimeCreated.ToString("MM/dd/yyyy - HH:mm:ss") %>
                      <span class="toolbar" style="display:none;">
                      <a href="/Form/FormInfo/<%:item.FormDataID %>?Template=<%:item.Form.TemplatePath %>&cid=<%:item.PatientID %>" title="View Form" target="_blank"><img src="../../Content/images/Chart/page_white_code.png" alt="View" /></a>
                      <%if (!string.IsNullOrEmpty(filepath))
                        { %>
                           <a href="/Files/OpenPdf?patientID=<%:item.PatientID %>&filePath=<%=Server.UrlEncode(filepath)%>"  title="Print Form"><img src="../../Content/images/Chart/printer.png" alt="Print" /></a>
                      <%} %>
                      <%else
                        { %>
                             <a href="/Form/PrintForm/<%: item.FormDataID %>?formName=<%:item.Form.FormName %>&cid=<%:item.PatientID %>" title="print Form"><img src="../../Content/images/Chart/printer.png" alt="Print" /></a>
                      <%} %>
                      </span>
                  </span></li>
        <%} %>
    </ul>
</li>

