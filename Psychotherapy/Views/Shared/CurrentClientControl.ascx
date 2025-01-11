<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<dynamic>" %>
<%if (Session["ClientName"] != null)
  { %>
<div>
<b>Client : <%=Html.Encode(Session["ClientName"]) %></b> 
| <input type="button" value="Select new client" class="btnCur" onclick="actionLink('/Client/List')" />
| <input type="button" value="Home" class="btnCur" onclick="actionLink('/Client/Info/<%=Html.Encode(Session["ClientID"]) %>')" />
</div>
<%} %>
<%--<%else
  { %>
<script type="text/javascript">
    window.document.location = '/Client/List';
</script>
<%} %>--%>
