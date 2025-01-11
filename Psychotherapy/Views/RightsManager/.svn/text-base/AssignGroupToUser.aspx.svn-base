<%@ Page Title="" Language="C#" Inherits="System.Web.Mvc.ViewPage<IEnumerable<Insourcia.Psychotherapy.Model.Group>>" %>
<%@ Import Namespace="Insourcia.WebControls.MvcPaging" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Setting User group</title>    
</head>
<body>
<div id="middle_content_main">
        <!--显示列表样式-->
    <form id="permissionForm" method="post" action="/RightsManager/AssignGroupToUser">
        <%=Html.Hidden("hdUserID",ViewData["UserID"]) %>
        <div id="pagedData_box">
            <%Html.RenderPartial("UcGroupList", Model); %>
        </div>
    </form>
</div>
</body>
</html>
