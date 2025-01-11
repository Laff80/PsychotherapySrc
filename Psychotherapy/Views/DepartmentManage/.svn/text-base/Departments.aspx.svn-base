<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/ManagerSite.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<Insourcia.Psychotherapy.Model.Department>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Departments
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
   <div id="list-box">
        <% Html.RenderPartial("UcDepartments",Model); %>
   </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="HeadContent" runat="server">
<script language="javascript" type="text/javascript">
    $(document).ready(function () {
        $('#btnSerach').click(function () {
            var value = $('#txtValue').val();
            var page = $('#hdPage').val();
            if (value == "") {
                alert("please enter the Department Name or Time");
                return false;
            }
            $.ajax({
                url: '/DepartmentManage/GetDpartments/'+page,
                data: 'keyword=' + value,
                type: 'POST',
                dataType: 'html',
                cache: false,
                beforeSubmit: function () {
                    $('#btnSerach').attr('disabled', true);
                },
                success: function (result) {
                    $('#list-box').html(result);
                    $('#btnSerach').attr('disabled', false);
                    $("table.list tr:even").addClass("row_color");
                }
            });
        });
    })
</script>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="phToolBar" runat="server">
    <input type ="text" class = "search-style" id="txtValue" title="Please enter the treatmentplan id." />
    <input type="button" class="btn-style" value="Serach" id="btnSerach" />
    |
    <input type ="button" value = "New Department" class="btn-style" onclick ="document.location = '/DepartmentManage/NewDepartment/';" />
    |
    <input type ="button" value = "Edit Department" class="btn-style" onclick ="SelectedAction('/DepartmentManage/EditDepartment/','ckbDepartment',false);" />
<%--    |
    <input type ="button" value = "Delete Department" class="btn-style" onclick ="SelectedAction('/Department/Delete/','ckbDepartment',true);"/>--%>
</asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="phNavigation" runat="server">
	Department List
</asp:Content>


