<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<Insourcia.Psychotherapy.Model.User>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Login</title>
    <link href="../../Content/style/login.css" rel="Stylesheet" />
    <script type="text/javascript" src="../../Scripts/jQueryLibrary/jquery-1.4.1.js"></script>
    <script type="text/javascript" src="../../Scripts/plug-in/jquery.form.js"></script>
    <script type="text/javascript" src="../../Scripts/com/Utils.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#validateCode").bind("click", function () {
                this.src = "../Signin/GetValidateCode?time=" + (new Date()).getTime();
            });

            $('#UserName').blur(function () {
                var username = $(this).val();
                var selOBJ = document.getElementById('site');
                $.ajax({
                    url: '/Signin/GetUserDefaultSiteID',
                    data: "username=" + username,
                    type: "POST",
                    dataType: "json",
                    timeout: 10000,
                    beforeSend: function () {

                        $('#btnSubmit').attr("disabled", true);
                        $('#site-tr').hide();
                    },
                    success: function (result) {
                        if (result && result.Success) {
                            checkSelectByValue(selOBJ, result.Value, true);
                            $('#site-tr').show();
                            $('#btnSubmit').attr("disabled", false);
                            $('#erroBox').hide();
                        }
                        else {
                            $('#erroBox').show();
                            $('#erroMsg').text(result.ErrorMsg);
                        }
                    }
                });
            });

            $('#btnSubmit').click(function () {

                var options = {
                    dataType: 'json',
                    beforeSubmit: function () {
                    },
                    success: function (JsonResult) {
                        if (JsonResult && JsonResult.Success) {
                            document.location = '/Client/List';
                        }
                        else if (JsonResult) {
                            $('#btnSubmit').attr("disabled", false);
                            $('#erroBox').show();
                            $('#erroMsg').text(JsonResult.ErrorMsg);
                        }
                        if (JsonResult && JsonResult.errorCount >= 3) {
                            $('#code-tr').show();
                        }
                    }
                };

                $('#signinForm').ajaxSubmit(options);

            });
        });
   </script>
</head>
<body class="lg-bg">
    <div class="login">
        <div class="login-text">User Login</div>
        <div class="loginBorder">
                <div class="loginBox">
                <%  int signErrorCount = Insourcia.Common.Converter.ChangeType<int>(Session["errorCount"], 0);%>
                <form action="/Signin/Login" method="post" id="signinForm">
                    <table>
                             <tr>
                                   <th style="width:20%">User name :</th>
                                   <td style="width:60%"><%:Html.TextBoxFor(model => model.UserName, new { @class = "text-style" })%></td>
                              </tr>
                              <tr>
                                   <th >Password :</th>
                                   <td><%:Html.PasswordFor(model => model.Password, new { @class = "text-style" })%></td>
                              </tr>
                             <tr id="site-tr" style="display:none">
                                   <th >Site :</th>
                                   <td><%:Html.DropDownList("site", ViewData["siteItem"] as IEnumerable<SelectListItem>, new { @class = "selectlist-style" })%></td>
                              </tr>
                              <tr id="code-tr" style=" display:none">
                                   <th>Validate code :</th>
                                   <td><input type="text" name="validateCode" class="text-style-code" />
                                         <img id="validateCode" style="cursor: pointer; display:block;" src="../Signin/GetValidateCode" alt="Validate Code" title="Click change new validate code" />
                                   </td>
                              </tr>
                              <tr>
                                   <th></th>
                                   <td>
                                        <input  type="button" id="btnSubmit" value="Login" class="btn-style" disabled="disabled" />
                                   </td>
                              </tr>
                    </table>
                  </form>
                  <p>Version 0.9.10</p>
                </div>
        </div>
        <br />
        <div class="erro-box-style" id="erroBox" style="display:none">
            <span class="erro-icon"></span>
            <b>Error : </b>
            <span id="erroMsg"></span>
        </div>
       <%:Html.ValidationMessage("ErrorMsg") %>
     </div>
</body>
</html>
