<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<Insourcia.Psychotherapy.Model.File>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Files
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="table">
        <div id="list-box">
            <%Html.RenderPartial("UcFiles"); %>
        </div>
        <%=Html.Hidden("hdPatientID",ViewData["PatientID"]) %>
    </div>
    <div id="shareForm" style="display: none;">
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="HeadContent" runat="server">
    <script src="../../Scripts/plug-in/jQuery.fn.extend.js" type="text/javascript"></script>
    <script type="text/javascript">

        //搜索文件列表
        $(document).ready(function () {
            $('.files').toTrEven();
            $('#btnSearch').click(function () {
                var value = $('#txtValue').val();
                var page = $('#hdPage').val();
                if (value == "") { alert('Please enter the file name.'); return false; }

                $.ajax({
                    url: '/Client/FilesPagedList/' + page + "?patientID=" + '<%=Request.QueryString["patientID"]%>',
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
                        $('.files').toTrEven();
                    }
                });
            });

            $('#UploadFile').click(function () {
                var page = $('#hdPage').val();
                document.location = '/Files/Upload?page=' + page + '&patientID=<%=Request.QueryString["patientID"] %>';
            });

            $('#btShare').click(function () {
                if ($('input[name="chkbFile"]:checked').length == 0) {
                    alert('please select one or more item.');
                    return false;
                }
                var data = $('input[name="chkbFile"]').serialize() + '&patientID=' + $('#hdPatientID').val();
                
                $.ajax({
                    type: "POST",
                    dataType: 'html',
                    url: "/Files/ShareFiles",
                    cache: false,
                    beforeSend: function () {
                        $('#shareForm').html('<div style="text-align:center;">loading...</div>')
                        .dialog({ autoOpen: false,
                            title: "Setting File's permission",
                            modal: true,
                            width: 760,
                            height: 400,
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

                                    $('input[name="chkbDownload"]').each(function (i) {
                                        download.push(this.checked);

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
                    data: data,
                    success: function (result) {
                        $('#shareForm').html(result);
                    }
                });
            }); //end share
        });
    </script>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="phToolBar" runat="server">
    <input type="text" class="search-style" id="txtValue" />
    <input type="button" class="btn-style" value="Search Files" id="btnSearch" />
    <%if ((bool)ViewData["Write"])
      { %>
    |
    <input type="button" class="btn-style" id="UploadFile" value="Upload File" />
    <%}if((bool)ViewData["IsOwner"]){ %>
    |
    <input type="button" value="Permission" class="btn-style" id="btShare" />
    <%} %>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="phNavigation" runat="server">
    <%:Html.ActionLink("Client list", "list", "Client")%>
    >
    <%:Html.ActionLink(Html.Encode(Session["ClientName"]), "Info", "Client", new { id = Request.QueryString["patientID"] }, null)%>
    > Files
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="phfootBar" runat="server">
</asp:Content>
