<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl< IEnumerable<Insourcia.Psychotherapy.Model.Category>>" %>
 <script type="text/javascript">
 ddsmoothmenu.init({
        mainmenuid: "MenuDivID", 
        orientation: 'h', 
        classname: 'menu', 
        //customtheme: ["#1c5a80", "#18374a"],
        contentsource: "markup"
    })
    </script>
<div id="MenuDivID">
    <ul>
        <li>
               &nbsp;<span style="font-weight:normal">|</span> <input type="button" class="btn-style" value="New Form ▼" />
            <ul>
            <%if (Model.Count() > 0)
              { %>
              <%foreach (var categories in Model)
                {%>
                    <li><a href="javascript:void(0)"><%:categories.Name %></a>
                         <%if (categories.Forms.Count() > 0)
                           { %>
                              <ul>
                                   <%foreach (var forms in categories.Forms)
                                     {%>
                                         <li><a href="/Form/NewForm?Template=<%:forms.TemplatePath%>&cid=<%:Request.QueryString["cid"]%>&formID=<%:forms.FormID %>"><%:forms.FormName%></a></li>
                                   <%} %>
                              </ul>
                         <%} %>
                    </li>
              <%} %>
            <%} %>
            <%else
                {%>
                <li><a href="javascript:void(0)">No form templates</a></li>
            <%} %>
             </ul>
        </li>
    </ul>
</div>
