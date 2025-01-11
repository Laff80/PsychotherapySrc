<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<Insourcia.Psychotherapy.Model.ClinicalService>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Clintcal Service
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<div class="table">
       <div id="list-box">
          <%Html.RenderPartial("UcClinicalService");%>
    </div>
</div>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="phToolBar" runat="server">
<input type="text" class="search-style" id="txtValue" />
<input type="button" class="btn-style" value="Search" id="btnSearch" />
<%if ((bool)ViewData["Write"])
  { %>
|
<input type="button" class="btn-style" value="New Cinical Service" onclick="actionLink('/TreatmentPlan/NewClintcalService?tpid=<%=Request.QueryString["tpid"]%>&page=<%=Request.QueryString["page"]%>&patientID=<%=Request.QueryString["patientID"]%>');" />
<%} %>
</asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="HeadContent" runat="server">

</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="phNavigation" runat="server">
<%:Html.ActionLink("Client list", "list", "Client")%> > 
<%:Html.ActionLink(Html.Encode(Session["ClientName"]), "Info", "Client", new { id = Request.QueryString["patientID"] }, null)%> > 
<%:Html.ActionLink("Treatment Plan List", "TreatmentPlanList", "TreatmentPlan", new { id = Request.QueryString["page"], patientID = Request.QueryString["patientID"] }, null)%> > 
<%:Html.ActionLink("Treatment Plan Info", "TreatmentPlanInfo", "TreatmentPlan", new { id = Request.QueryString["tpid"], page = Request.QueryString["page"], patientID = Request.QueryString["patientID"] }, null)%> > 
Cinical Service
</asp:Content>
