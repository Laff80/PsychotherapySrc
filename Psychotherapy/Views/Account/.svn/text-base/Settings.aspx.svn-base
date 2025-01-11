<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Settings</title>
    <script type="text/javascript" src="../../Scripts/plug-in/jquery.idTabs.min.js"></script>
    <style type="text/css">
        /* Style for Usual tabs */
        .usual {
          /*border:1px solid #A6C9E2;*/

        }
        .usual li { list-style:none; float:left; }
        .usual ul a {
          display:block;
          padding:6px 10px;
          text-decoration:none!important;
          margin:1px;
          margin-left:0;
        }
        .usual ul a:hover {

          }
        .usual ul a.selected {
          margin-bottom:0;
          color:#000;
          background:url(../Content/images/jquery-ui/ui-bg_glass_85_dfeffc_1x400.png) #dfeffc repeat-x 50% 50%;
          
          border:1px solid #A6C9E2;
          border-bottom:0;
          cursor:default;
          }
        .usual div {
          padding:10px 10px 8px 10px;
          *padding-top:3px;
          *margin-top:-15px;
          clear:left;
          background-color:#FFF;
          border:1px solid #A6C9E2;
        }
        .usual div a { color:#000; font-weight:bold; }

        #usual2 { background:#0A0A0A; border:1px solid #1A1A1A; }
        #usual2 a { background:#222; }
        #usual2 a:hover { background:#000; }
        #usual2 a.selected { background:snow; }
        #tabs3 { background:#FF9; }
        #idTab1 table{ font-size:12px;}
        #idTab1 table th{ font-weight:normal; text-align:right; padding:5px}
        #idTab1 table td{padding:5px}
    </style>
</head>
<body>
<form id="settingsform" action="/Account/doSettings" method="post">
    <div class="usual">
        <ul class="idTabs">
            <li><a href="#idTab1" class="selected">Reset Password</a></li>
            <li><a href="#idTab2">Default Site</a> </li>
        </ul>
        <div id="idTab1">
            <table>
                <tr>
                    <th>
                        User name
                    </th>
                    <td>
                        <input type="text" disabled="disabled"  value="<%=Html.Encode(Session["UserName"]) %>" class="inputTxt" />
                    </td>
                </tr>
                <tr>
                    <th>
                        Old Password
                    </th>
                    <td>
                        <input type="password" name="oldpassword" class="inputTxt"/>
                    </td>
                </tr>
                <tr>
                    <th>
                        New Password
                    </th>
                    <td>
                        <input type="password" name="newpassword" class="inputTxt"/>
                    </td>
                </tr>
            </table>
        </div>
        <div id="idTab2">
           <%-- Setting default site？--%><br />
            <%:Html.DropDownList("site", ViewData["siteItem"] as SelectList, "Please choose the site", new { @class = "selectlist-style" })%>
            <%:Html.ValidationMessage("ErrorMsg") %>
        </div>
    </div>
</form>
</body>
</html>
