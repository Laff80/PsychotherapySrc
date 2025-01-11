<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/ManagerSite.Master"
    Inherits="System.Web.Mvc.ViewPage<Insourcia.Psychotherapy.Model.Category>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Setting Form
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<%using (Html.BeginForm())
  { %>
<table class="layout">
        <tr>
             <th>Forms</th>
             <th style=" width:10%"></th>
             <th>Selected Forms</th>
        </tr>
        <tr>
             <td>
                   <ul id="ulforms">
                           <%foreach (var item in ViewData["forms"] as IEnumerable<Insourcia.Psychotherapy.Models.FormsModel>)
                             {%>
                                 <li>
                                      <%=item.FormName %><%=Html.Hidden("fomrs", item.FormID, new { id = item.FormID })%>
                                 </li>
                            <% } %>
                   </ul>
             </td>
             <td align="center">
                   <input type="button" id="addforms" value="  >>  " class="btn-style" style="font-size:13px" /><br /><br />
                   <input type="button" id="removeforms" value="  <<  " class="btn-style"  style="font-size:13px" />
             </td>
             <td>
                    <ul id="ulslforms">
                            <% foreach (var item in ViewData["slforms"] as IEnumerable<Insourcia.Psychotherapy.Model.Form>)
                               {%>
                                 <li>
                                      <%=item.FormName %><%=Html.Hidden("slfomrs", item.FormID, new { id =item.FormID})%>
                                 </li>
                              <% } %>
                    </ul>
             </td>
        </tr>
        <tr>
             <td colspan="3" align="center">
                  <input type="submit" value="Save" class="btn-style" />
                  <%: Html.ActionLink("Back to List >>", "Categories", "CategoryManage")%>
             </td>
        </tr>
</table>
<%} %>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="HeadContent" runat="server">
<style type="text/css">
     .layout
     {
         width:70%;
         margin:0 auto;
         border:1px solid #B8B8B9;
     }
     .layout th 
     {
         text-align:left;
         width:40%;
         padding:5px;
     }
     .layout td
     {
         padding:5px;   
     }
     .layout ul
    {
        list-style-type:decimal-leading-zero;
        list-style-position:inside;
        border:1px solid #B8B8B9;
        background-color:#FFF;
        overflow:hidden;
        margin:3px;
        height:300px;
        max-height:300px;
        font-size:12px;
    }
    .layout ul li
    {
        padding:4px 3px 4px 10px;
    }
    .layout ul li:hover
    {
        background-color:Yellow;
        color:Black;
        cursor:pointer;
    }
    .selected
    {
       background-color:Green;
       color:White;
    }
</style>
<script type="text/javascript">
    $(document).ready(function () {

        $('#ulforms li').click(function () {
            if ($(this).hasClass('selected')) {
                $(this).removeClass('selected');
            }
            else {
                $(this).addClass('selected');
            }
        });

        $('#ulslforms li').click(function () {
            if ($(this).hasClass('selected')) {
                $(this).removeClass('selected');
            }
            else {
                $(this).addClass('selected');
            }
        });

        //添加右边移除左边
        $('#addforms').click(function () {

            $('#ulforms li.selected').each(function () {
                $('#ulslforms').append($('<li></li>').append($(this).html()));
            });

            $('#ulforms li.selected').remove();
        });

        //添加左边边移除右边
        $('#removeforms').click(function () {

            $('#ulslforms li.selected').each(function () {
                $('#ulforms').append($('<li></li>').append($(this).html()));
            });

            $('#ulslforms li.selected').remove();
        });
    })
</script>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="phNavigation" runat="server">
    <%: Html.ActionLink("Categories", "Categories", "CategoryManage")%>
    > <%=Model.Name %>
    > Setting Form
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="phToolBar" runat="server">
</asp:Content>
