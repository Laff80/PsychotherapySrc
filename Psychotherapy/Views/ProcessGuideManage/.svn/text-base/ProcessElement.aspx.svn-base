<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/ManagerSite.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<Insourcia.Psychotherapy.Model.ProcessGuide>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Process Element
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<div class="table">
       <div id="list-box">
                <%Html.RenderPartial("UcProcessElement",Model); %>
       </div>
</div>
<div id="process_box" style="display:none"></div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="HeadContent" runat="server">
<script type="text/javascript">
    $(document).ready(function () {

        $('#btSetting').click(function () {
            var selectedOBJ = $('input[name="ckbProcess"]:checked');
            if (selectedOBJ.length != 1) { alert("Can't choose zero or more!"); return false; }
            var Title = selectedOBJ.parent().next().text();

            $.ajax({
                type: "POST",
                dataType: 'html',
                url: "/ProcessGuideManage/GetQuestions/" + selectedOBJ.val(),
                cache: false,
                beforeSend: function () {
                    $('#process_box').html('<div style="text-align:center;">loading...</div>')
                        .dialog({ autoOpen: false,
                            title: "Setting Questionnaires",
                            modal: true,
                            width: 670,
                            maxWidth: 600,
                            height: 460,
                            maxHeight: 375,
                            buttons: { 
                                "Save": function () {
                                    var options = {
                                        dataType: 'json',
                                        beforeSubmit: function () {

                                        },
                                        success: function (result) {
                                            if (result && result.Success) {
                                                alert(result.Message);
                                            }
                                            else if (result) {
                                                alert(result.Message);
                                            }
                                        }
                                    };
                                    $('#ProcessElementForm').ajaxSubmit(options);
                                },
                                'Cancel': function () {
                                    $(this).dialog('close');
                                }
                            }
                        }).dialog("open");
                },
                data: "",
                success: function (result) {
                    $('#process_box').html(result);
                }
            });
        });
    });
</script>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="phNavigation" runat="server">
	Process Element
</asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="phToolBar" runat="server">
<input type="text" class="search-style" id="txtValue"/>
<input type="button" class="btn-style" id="btnSearch" value="Search" />
|
<input type="button" class="btn-style" value="New Process Element" onclick="document.location = '/ProcessGuideManage/NewProcessElement';" />
|
<input type="button" class="btn-style" value="Edit" onclick="SelectedAction('/ProcessGuideManage/EditProcessElement/','ckbProcess',false);" />
|
<input type="button" class="btn-style" value="Setting q&a" id="btSetting" />
</asp:Content>

