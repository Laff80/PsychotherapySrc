<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<Insourcia.Psychotherapy.Model.Patient>" %>
<%@ Import Namespace="System.IO" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Chart
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table>
            <tr>
                 <th align="right">GRID:</th>
                 <td><%:Model.GRID %></td>
            <th align="right" style=" padding:10px;">
                Client Name:
            </th>
            <td>
                <%: Model.LastName%>,
                <%: Model.FirstName%>
                <%: !string.IsNullOrEmpty(Model.MiddleName) ? " " + Model.MiddleName + "." : ""%>
            </td>
            </tr>
    </table>
   <div id="browser">
       <ul class="filetree">
             <%Html.RenderPartial("TreeViewFrom", ViewData["formlist"] as IEnumerable<Insourcia.Psychotherapy.Model.FormData>); %>
             <%Html.RenderPartial("TreeViewTreatmentPlan", ViewData["treatmentplanlist"] as IEnumerable<Insourcia.Psychotherapy.Model.TreatmentPlan>); %>
             <%Html.RenderPartial("TreeViewScannedFrom", ViewData["scannedfrom"] as IEnumerable<Insourcia.Psychotherapy.Model.File>); %>
       </ul>
    </div>
    <div class="viewContent"></div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
          .toolbar
          {
              background-color:#F8F8F8; border:1px solid #E7E5DC; padding:5px;
          }
          .toolbar img 
          {
              vertical-align:bottom;
              border:0;
          }
    </style>
    <script src="../../Scripts/plug-in/jquery.treeview.js" type="text/javascript"></script>
    <link href="../../Content/style/jquery.treeview.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript">
        $(document).ready(function () {
            $('#browser').treeview();
            $('li span.file').hover(function () {
                $(this).css({color:"Green"});
                $(this).children('span').show();
            }, function () {
                $(this).css({ color: "Black" });
                $(this).children('span').hide();
            });
        });
    </script>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="phToolBar" runat="server">
<input type="text" class="search-style" id="txtValue" />
<input type="button" class="btn-style" value="Search" id="btnSearch" />
</asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="phNavigation" runat="server">
<%:Html.ActionLink("Client list", "list", "Client")%> > 
<%:Html.ActionLink(Html.Encode(Session["ClientName"]), "Info", "Client", new { id = Request.QueryString["patientID"] }, null)%> > 
Chart
</asp:Content>