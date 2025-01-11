<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/ManagerSite.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<Insourcia.Psychotherapy.Model.User>>" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
   Users
</asp:Content>

<asp:Content ID="ctToolBar" runat="server" ContentPlaceHolderID="phToolBar">
<input type="text" class="search-style" id="txtValue"/>
<input type="button" class="btn-style" id="btnSearch" value="Search" />
|
<input type="button" class="btn-style" value="New User" onclick="document.location = '/UserManage/NewUser/';" />
|
<input type="button" class="btn-style" value="Edit User" onclick="SelectedAction('/UserManage/EditUser/','ckbUser',false);" />
|
<input type="button" class="btn-style" value="Permission" id="btPermission"  />

</asp:Content>

<asp:Content ID="ctNavigation" runat="server" ContentPlaceHolderID="phNavigation">
All Users
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<div class="table">
    <form id="list_userForm">
       <div id="list-box">
                <%Html.RenderPartial("UcUsers", Model); %>
       </div>
     </form>
</div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="HeadContent" runat="server">
<script type="text/javascript">
    $(document).ready(function () {
        $('#btnSearch').click(function () {
            var value = $('#txtValue').val();
            var page = $('#hdPage').val();
            if (value == "") { alert('Please enter the User FirstName or LastName!'); return false; }

            $.ajax({
                url: '/UserManage/GetUsers/' + page,
                data: 'keyword=' + value,
                type: 'POST',
                dataType: 'html',
                cache: false,
                beforeSubmit: function () {
                    $('#btnSearch').attr('disabled', true);
                },
                success: function (result) {
                    $('#list-box').html(result);
                    $('#btnSearch').attr('disabled', false);
                    $("table.list tr:even").addClass("row_color");
                }
            });
        });

        $('#btPermission').click(function () {
            var selectedItems = $('input[name="ckbUser"]:checked');
            if (selectedItems.length == 0||selectedItems.length>1) {
                alert("please select a user.");
                return false;
            }
            var data = $('#list_userForm').serialize();
            var url = "/RightsManager/ViewUserGroup?" + data+'&upage=ViewData["PageIndex"]';
            //requestPage('main_content', '/rightsmanager/assignrightstogroup', data, 'GET');
            window.location.href = url;
        });
    });
</script>
</asp:Content>