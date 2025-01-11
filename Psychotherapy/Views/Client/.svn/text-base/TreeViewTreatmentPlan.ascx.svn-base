<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<IEnumerable<Insourcia.Psychotherapy.Model.TreatmentPlan>>" %>
<%@ Import Namespace="Insourcia.Psychotherapy.Utility" %>
<li><span class="folder">Treatment Plans</span>
    <ul class="filetree">
        <%foreach (var item in Model)
          {%>
              <li>
                  <% string file = item.Patient.GRID + "-" + item.TreatmentPlanID + "-" + item.CreateTime.Value.ToString("yyyy_MM_dd") + ".pdf";%>
                  <% string filepath = ChartUc.GetFilePath(item.PatientID.Value, "Treatment Plan", file); %>
                  <span class="file">
                  <%=item.CreateTime.Value.ToString("MM/dd/yyyy - HH:mm:ss") %> 
                      <span class="toolbar" style="display:none;">
                         <a href="/TreatmentPlan/TreatmentPlanInfo/<%: item.TreatmentPlanID %>?page=1&patientID=<%=Request.QueryString["patientID"] %>" title="View Treatment Plan" target="_blank"><img src="../../Content/images/Chart/page_white_code.png" alt="View" /></a>
                      <%if (!string.IsNullOrEmpty(filepath))
                        { %>
                           <a href="/Files/OpenPdf?patientID=<%:Request.QueryString["patientID"] %>&filePath=<%=Server.UrlEncode(filepath) %>" title="Print Treatment Plan"><img src="../../Content/images/Chart/printer.png" alt="Print" /></a>
                      <%} %>
                      <%else
                        { %>
                            <%if (item.TreatmentPlanItems.Count() > 0)
                              { %>
                                <a href="/TreatmentPlan/PrintTreatmentPlant?patientID=<%:Request.QueryString["patientID"] %>&tpid=<%: item.TreatmentPlanID %>" title="Print Treatment Plan"><img src="../../Content/images/Chart/printer.png" alt="Print" /></a>
                           <%} %>
                      <%} %>
                      </span>
                  </span>
                  <%if (item.ClinicalServices.Count() > 0)
                    { %>
                      <ul class="filetree">
                          <li><span class="folder">Service Notes</span>
                              <ul class="filetree">
                              <%foreach (var clinical in item.ClinicalServices.ToList())
                                {%>
                                     <% string clinicafilel = item.Patient.GRID + "-" + item.TreatmentPlanID + "-" + clinical.ClinicalServiceID + "-" + clinical.CreateTime.Value.ToString("yyyy_MM_dd") + ".pdf";%>
                                     <% string clinicafilepath = ChartUc.GetFilePath(item.PatientID.Value, "Clinical Service", clinicafilel); %>
                                    <li><span class="file">
                                    <%=clinical.CreateTime.Value.ToString("MM/dd/yyyy - HH:mm:ss")%> 
                                        <span class="toolbar" style="display:none;">
                                        <a href="/TreatmentPlan/ClintcalServiceInfo/<%:clinical.ClinicalServiceID%>?patientID=<%:Request.QueryString["patientID"] %>&tpid=<%:item.TreatmentPlanID %>" title="View Service Note" target="_blank"><img src="../../Content/images/Chart/page_white_code.png" alt="View" /></a>
                                        <%if (!string.IsNullOrEmpty(clinicafilepath))
                                          {%>
                                             <a href="/Files/OpenPdf?patientID=<%:Request.QueryString["patientID"] %>&filePath=<%= Server.UrlEncode(clinicafilepath)%>" title="Print Service Note"><img src="../../Content/images/Chart/printer.png" alt="Print" /></a>
                                        <%} %>
                                        <%else
                                          { %>
                                             <%if (clinical.ClinicalServiceNoteRates.Count() > 0)
                                               { %>
                                              <a href="/TreatmentPlan/PrintClintcalService/<%:clinical.ClinicalServiceID%>?patientID=<%:Request.QueryString["patientID"] %>&tpid=<%:item.TreatmentPlanID %>" title="Print Service Note"><img src="../../Content/images/Chart/printer.png" alt="Print" /></a>
                                              <%} %>
                                        <%} %>
                                        </span>
                                    </span></li>
                              <% } %>
                             </ul>
                          </li>
                      </ul>
                  <%} %>
                </li>
        <%} %>
    </ul>
</li>
