<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<Insourcia.Psychotherapy.Model.FormData>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Edit Form
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <form id="EditForm" action="/Form/EditForm" method="post" onkeydown="if(event.keyCode==13){return false;}">
    <%:Html.Hidden("FormDataID", Model.FormDataID)%>
    <%:Html.Hidden("PatientID", Request.QueryString["cid"])%>
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
                            document.location = '/Form/FormInfo/' + JsonResult.id + "?Template=" + JsonResult.Template + "&cid=" + JsonResult.cid;
                        }
                        else {
                            alert(JsonResult.Message);
                        }
                        $('input[type=submit]').attr('disabled', false);
                    }
                };

                $('#EditForm').ajaxSubmit(options);
            });

            var dataObj = '<%=ViewData["content"] %>'; //转换为json对象            
            var obj = eval('(' + dataObj + ')');
            $.each(obj.root, function (idx, item) {

                var inputObject = $('[name=' + idx + ']');
                var inputType = inputObject.attr('type');
                switch (inputType) {
                    case "text":
                        if (item != null) { inputObject.val(item); }
                        break;
                    case "radio":
                        $.each(inputObject, function (i, element) {
                            var el = $(element);
                            if (el.val() == item) {
                                el.attr("checked", true);
                                return false;
                            }
                        });
                        break;
                    case "checkbox":
                        if (inputObject.val() == item)
                            inputObject.attr("checked", true);
                        break;
                    case "textarea":
                        if (item != null) { inputObject.val(item); }
                        break;
                }

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
    <%:Html.ActionLink("Client list", "list", "Client")%>
    >
    <%:Html.ActionLink(Html.Encode(Session["ClientName"]), "Info", "Client", new { id = Request.QueryString["cid"] }, null)%>
    >
    <%:Html.ActionLink("Forms", "list", new { id = 1, cid = Request.QueryString["cid"] })%>
    >
    <%:Html.ActionLink(Model.Form.FormName, "FormInfo", new { id = Model.FormDataID, Template = Request.QueryString["Template"], cid = Request.QueryString["cid"] })%>
    > Edit
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="phfootBar" runat="server">
<input type="submit" value="Save" class="btn-style"  />
|
<input type="button" class="btn-style" value="Cancel" onclick="document.location = '/form/list/1?cid=<%= Request.QueryString["cid"]%>';" />
</asp:Content>
