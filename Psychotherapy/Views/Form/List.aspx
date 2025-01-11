<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<Insourcia.Psychotherapy.Model.FormData>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Form
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="table">
        <div id="list-box">
            <%Html.RenderPartial("UcFormList"); %>
        </div>
    </div>
    <div id="shareForm" style="display: none;">
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="HeadContent" runat="server">
    <link rel="Stylesheet" type="text/css" href="../../Content/style/MENUStyle.css" />
    <script type="text/javascript" src="../../Scripts/View/newformMenu.js"></script>
    <script type="text/javascript">


        //Search Form
        $(document).ready(function () {
            $('#btnSearch').click(function () {
                var value = $('#txtValue').val();
                var page = $('#hdPage').val();
                var param = $('#patientID').val();
                if (value == "") { alert('Please enter the Form Name.'); return false; }
                var url = '/form/formlist/' + page + '?cid=' + param;
                var data = 'keyword=' + value;
                CreateSearch(url, data, this);
            });
            //start share
            $('#btnShare').click(function () {
                $.ajax({
                    type: "POST",
                    dataType: 'html',
                    url: "/Form/ShareForms",
                    cache: false,
                    beforeSend: function () {
                        $('#shareForm').html('<div style="text-align:center;">loading...</div>')
                        .dialog({ autoOpen: false,
                            title: "Setting form's permission",
                            modal: true,
                            width: 460,
                            height: 300,
                            buttons: {
                                "Save": function () {
                                    var read = [], write = [];
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
                                        data: { canRead: read, canWrite: write },
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
                                },
                                'Cancel': function () {
                                    $(this).dialog('close');
                                }
                            }
                        }).dialog("open");
                    },
                    data: 'PatientID=<%=Request.QueryString["cid"]%>',
                    success: function (result) {
                        $('#shareForm').html(result);
                    }
                });
            }); //end share
        });
 
    </script>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="phToolBar" runat="server">
    <div style="float: left;">
        <%:Html.Hidden("patientID", Request.QueryString["cid"])%>
        <input type="text" class="search-style" id="txtValue" />
        <input type="button" class="btn-style" value="Search" id="btnSearch" />
    </div>
    <%if ((bool)ViewData["CanWrite"])
      { %>
    <div style="float: left;">
        <%Html.RenderPartial("UcNewFormMenu", ViewData["categories"] as IEnumerable<Insourcia.Psychotherapy.Model.Category>); %>
    </div>
    <%} %>
    <%
        if ((bool)ViewData["CanShare"])
        { %>
    <div style="float: left;">
        &nbsp;|
        <input type="button" class="btn-style" value="Permission" id="btnShare" />
    </div>
    <%} %>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="phNavigation" runat="server">
    <%:Html.ActionLink("Client list", "list", "Client")%>
    >
    <%:Html.ActionLink(Html.Encode(Session["ClientName"]), "Info", "Client", new { id = Request.QueryString["cid"] }, null)%>
    > Forms
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="phfootBar" runat="server">
</asp:Content>
