<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl" %>
<%
    if (!Request.IsAuthenticated) {
%>
         <%=Html.Encode(Session["UserName"]) %>(User)
           | <a href="javascript:void(0)" id="setting">Settings</a>
           | <a href="javascript:void(0)">Help</a>
           | [ <%: Html.ActionLink("Sign Out", "LoginOff", "Signin", null, new { onclick = "return  confirm('Are you sure you wish to exit the system?')" })%> ] 
<%
    }
    else {
%> 
      <script type="text/javascript">
          document.location = '/Signin/Login';
      </script>
<%
    }
%>
<script type="text/javascript">
    $(function () {

        $('#setting').click(function () {
            var dialogInt = $("#dialog_setting_box").dialog(
                    { autoOpen: false,
                        modal: true,
                        title: "Settings",
                        width: 400,
                        maxWidth: 600,
                        maxHeight: 500
                    });
            $("#dialog_setting_box").load("/Account/Settings", {}, function (context) {

                $("#dialog_setting_box").dialog("option", { buttons: {
                    "OK": function () {
                        var options = {
                            dataType: 'json',
                            beforeSubmit: function () {
                                $(this).attr('disabled', true);
                            },
                            success: function (JsonResult) {
                                if (JsonResult.Success) {
                                    alert(JsonResult.Message);
                                    $(this).dialog("close");
                                }
                                else {
                                    alert(JsonResult.Message);
                                }
                                $(this).attr('disabled', false);
                            }
                        };

                        $('#settingsform').ajaxSubmit(options);
                    },
                    "Cancel": function () { $(this).dialog("close"); }
                }
                });
                $("#dialog_setting_box").dialog("open");
            });
        });
    });
</script>