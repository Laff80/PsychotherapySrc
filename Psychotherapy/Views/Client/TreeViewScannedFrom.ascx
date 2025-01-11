<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<IEnumerable<Insourcia.Psychotherapy.Model.File>>" %>
<li><span class="folder">Scanned Froms</span>
    <ul class="filetree">
        <%foreach (var item in Model)
          {%>
              <li><span class="file">
                  <%=Html.ActionLink(item.FileName+" "+item.TimeCreated.Value.ToString("MM/dd/yyyy"), "download", "files", new { patientID = Request.QueryString["patientID"], fileID = item.FileID, filePath = Server.HtmlEncode(item.Path) }, null)%>
                  </span></li>
        <%} %>
    </ul>
</li>
