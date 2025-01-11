<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<Insourcia.Psychotherapy.Model.FormData>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	New Form
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<form id="NewForm" action="/Form/NewForm" method="post" onkeydown="if(event.keyCode==13){return false;}">
    <%:Html.Hidden("FormID", Request.QueryString["formID"])%>
    <%:Html.Hidden("PatientID", Request.QueryString["cid"])%>
    <%:Html.Hidden("Template", Request.QueryString["Template"])%>
    <div class="form-template">
       <div class="template-content">
           <%Html.RenderPartial("Uc1New" + Request.QueryString["Template"]); %>
       </div>
    </div>
</form>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="HeadContent" runat="server">
<script type="text/javascript">
    $(document).ready(function () {
        $('input[type=submit]').click(function () {
            var options = {
                dataType: 'json',
                beforeSubmit: function () {
                    $('input[type=submit]').attr('disabled', true);
                },
                success: function (JsonResult) {
                    if (JsonResult.Success) {
                        alert(JsonResult.Message);
                        //document.location = '/Form/FormInfo/' + JsonResult.id + "?Template=" + JsonResult.Template + "&cid=" + JsonResult.cid;
                        document.location = '/Form/list/1' + "?cid=" + JsonResult.cid;
                    }
                    else {
                        alert(JsonResult.Message);
                    }
                    $('input[type=submit]').attr('disabled', false);
                }
            };

            $('#NewForm').ajaxSubmit(options);
        });

    });
</script>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="phToolBar" runat="server">
<input type="submit" value="Save" class="btn-style"  />
|
<input type="button" class="btn-style" value="Cancel" onclick="document.location = '/form/list/1?cid=<%= Request.QueryString["cid"]%>';" />
</asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="phNavigation" runat="server">
<%:Html.ActionLink("Client list", "list", "Client")%> > 
<%:Html.ActionLink(Html.Encode(Session["ClientName"]), "Info", "Client", new { id = Request.QueryString["cid"] }, null)%> > 
<%:Html.ActionLink("Forms", "list", "Form", new { id = 1, cid = Request.QueryString["cid"] },null)%> > New Form
</asp:Content>

<asp:Content ID="Content6" ContentPlaceHolderID="phfootBar" runat="server">
<input type="submit" value="Save" class="btn-style"  />
|
<input type="button" class="btn-style" value="Cancel" onclick="document.location = '/form/list/1?cid=<%= Request.QueryString["cid"]%>';" />
</asp:Content>

