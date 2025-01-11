<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<Insourcia.Psychotherapy.Model.Cluster>" %>
<script type="text/javascript">
    function OpenClusterDocsByName(url) {
        if (url == '') { alert('This file does not exist!'); }
        url = "/TreatmentPlan/DisplayClusterDocs?docName=" + url;
        window.open(url, "_blank");
    }
</script>
<%  string SUD_A="Substance Use Disorders//At a Glance Summaries//";
       string SUD_G = "Substance Use Disorders/Guidelines/";
       string TD_A = "Thought Disorders//At a Glance Summaries//";
       string TD_G = "Thought Disorders//Guidelines//";
       string ATD_A = "Anxiety and Trauma Disorders//At a Glance Summaries//";
       string ATD_G = "Anxiety and Trauma Disorders/Guidelines//";
       string MD_A = "Mood Disorders//At a Glance Summaries//";
       string MD_G = "Mood Disorders//Guidelines//";
       string IDBD_A = "Impulse and Disruptive Behavior Disorders//At a Glance Summaries//";
       string IDBD_G = "Impulse and Disruptive Behavior Disorders//Guidelines//";
    %>
<table id="table_pdf" cellspacing="1" border="0" cellpadding="0" bgcolor="#50a0e7" style="display: table; width:100%">
        <tr>
            <th>At-a Glance</th>
            <th>Gudelines</th>
        </tr>
        <tr>
            <td>
                 <ul>
                 <%
                     var glances=Model.GlanceAndGuidelines.Where(g=>g.Type==1);
                     if (glances.Count() > 0)
                     {
                         foreach (var item in glances)
                         {%>
                           <%if (item.ActionType == 1)
                             { %>
                             <li>Reference online at:<a href="<%=item.Path %>" target="_blank"><%=item.Title%></a></li>
                           <%}
                             else
                             {
                                 if (!string.IsNullOrWhiteSpace(item.Path))
                                 {%>
                              <li><a href="javascript:void(0)" onclick="OpenClusterDocsByName('<%=item.Path %>')"><%=item.Title%></a></li>
                              <%}
                                 else
                                 { %>
                                    <li><%=item.Title%></li>
                                 
                            <%}
                             } %>
                      <%}
                     }
                     else
                     { %>
                     <li>No corresponding At A Glance</li>
                     <%} %>
                 </ul>
            </td>
            <td>
                 <ul>
                       <%
                     var guidelines=Model.GlanceAndGuidelines.Where(g=>g.Type==2);
                     if (guidelines.Count() > 0)
                     {
                         foreach (var item in guidelines)
                         {%>
                            <%if (item.ActionType == 1)
                             { %>
                             <li>Reference online at:<a href="<%=item.Path %>" target="_blank"><%=item.Title %></a></li>
                           <%}
                             else
                             {  if (!string.IsNullOrWhiteSpace(item.Path))
                                 {%>
                              <li><a href="javascript:void(0)" onclick="OpenClusterDocsByName('<%=item.Path %>')"><%=item.Title%></a></li>
                              <%}
                                 else
                                 { %>
                                    <li><%=item.Title%></li>                                 
                            <%}
                             } %>
                      <%}
                     }
                     else
                     { %>
                     <li>No single, specific source guideline</li>
                     <%} %>
                 </ul>
            </td>
        </tr>
</table>