<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<Insourcia.Psychotherapy.Model.FormData>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Form Info
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <%:Html.Hidden("FormDataID",Model.FormDataID) %>
    <%:Html.Hidden("formName",Request.QueryString["Template"]) %>
    <div class="form-template">
       <div class="template-content-default">
            <%Html.RenderPartial("Uc1New" + Request.QueryString["Template"]); %>
       </div>
    </div>
     <div id="shareForm" style="display: none;">
    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="HeadContent" runat="server">

<script type="text/javascript">
    $(document).ready(function () {

        var FormDataID = $('#FormDataID').val();
        var formName = $('#formName').val();
        $('#print').click(function () {
            var steuel = "/Form/PrintForm/" + FormDataID + "?formName=" + formName + "&cid=" + '<%=Request.QueryString["cid"] %>';
            window.open(steuel, "_blank");
        });

        //去掉输入文本框的样式
        $('input[type="text"]').removeClass("inputTxt");
        $('input[type="text"]').removeClass("inputTxt-min");
        $('input[type="text"]').removeClass("inputTxt-max");
        $(".ui-datepicker-trigger").css("display", "none");
        $('[name]').each(function () {
            var obj = $(this);
            var inputType = obj.attr('type');

            switch (inputType) {
                case "text":
                case "textarea":
                    obj.attr("readonly", true);
                    break;
                case "radio":
                case "checkbox":
                    obj.attr("disabled", true);
                    break;

            }
        });
        var dataObj = '<%=ViewData["content"] %>'; //转换为json对象            
        var obj = eval('(' + dataObj + ')');
        $.each(obj.root, function (idx, item) {

            var inputObject = $('[name=' + idx + ']');
            var inputType = inputObject.attr('type');

            switch (inputType) {
                case "text":
                    if (item != null) { inputObject.val(item); }
                    inputObject.addClass("inputTxt-underline");
                    break
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

        //start share
        $('#btShare').click(function () {
            $.ajax({
                type: "POST",
                dataType: 'html',
                url: "/Form/ShareForm",
                cache: false,
                beforeSend: function () {
                    $('#shareForm').html('<div style="text-align:center;">loading...</div>')
                        .dialog({ autoOpen: false,
                            title: "Setting form's permission",
                            modal: true,
                            width: 460,
                            height: 300,
                            buttons: { 'Cancel': function () {
                                $(this).dialog('close');
                            },
                                "Save": function () {
                                    var read = [], write = [], download = [];
                                    $('input[name="chkbRead"]').each(function (n) {
                                        read.push(this.checked);
                                    });

                                    $('input[name="chkbWrite"]').each(function (i) {
                                        write.push(this.checked);
                                    });

                                    //var data = read + write + download.replace(/[&]{1,}$/g, '');
                                    //alert(data); return false;
                                    var options = {
                                        dataType: 'json',
                                        beforeSubmit: function () {
                                            $('#btUserPmAdd').attr('disabled', true);
                                        },
                                        data: { canRead: read, canWrite: write, canDownload: download },
                                        success: function (result) {
                                            $('#btUserPmAdd').attr('disabled', false);
                                            $('#btSaveShare').attr('disabled', false);
                                            if (result && result.Success) {
                                                alert('Share  Successed!');
                                            }
                                            else if (result) {
                                                alert("Share failed!");
                                            }
                                        }
                                    };
                                    $('#permissionForm').ajaxSubmit(options);
                                }
                            }
                        }).dialog("open");
                },
                data: "PatientID=<%=Model.PatientID%>&FormDataID=<%=Model.FormDataID%>",
                success: function (result) {
                    $('#shareForm').html(result);
                }
            });
        }); //end share

    });
</script>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="phToolBar" runat="server">
<% string strUrl = "/Form/EditForm/" + Model.FormDataID + "?Template=" + Request.QueryString["Template"] + "&cid=" + Request.QueryString["cid"];%>
<% string printURL = "/Form/PrintForm/" + Model.FormDataID + "?formName=" + Request.QueryString["Template"];%>
<%if ((bool)ViewData["Write"])
  { %><input type="button" value="Edit" class="btn-style" onclick="actionLink('<%=strUrl %>')" />
|
<%} %>
<input type="button" value="Comment" class="btn-style" />
<%if ((bool)ViewData["IsOwner"])
  { %>
|
<input type="button" class="btn-style" value="Permission" id="btShare" />
<%} %>
|
<input type="button" value="Print" class="btn-style" id="print" />
</asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="phNavigation" runat="server">
<%:Html.ActionLink("Client list", "list", "Client")%> > 
<%:Html.ActionLink(Html.Encode(Session["ClientName"]), "Info", "Client", new { id = Request.QueryString["cid"] }, null)%> > 
<%:Html.ActionLink("Forms", "list", new { id = 1, cid = Request.QueryString["cid"] })%> > Form Information
</asp:Content>

<asp:Content ID="Content6" ContentPlaceHolderID="phfootBar" runat="server">
</asp:Content>

