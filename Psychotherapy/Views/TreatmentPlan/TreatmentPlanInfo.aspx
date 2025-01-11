<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<Insourcia.Psychotherapy.Model.TreatmentPlan>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Treatment Plan Info
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <%Html.RenderPartial("UcTreatmentPlanTree"); %>
    <div id="shareForm" style="display: none;" >
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="HeadContent" runat="server">
    <link href="../../Content/style/UcItem.css" rel="stylesheet" type="text/css" />
    <script language="javascript" type="text/javascript">

        $(function () {
            //$(".main-content").css("min-height", "400px"); 
            var ObjectiveAnswer = '<%:Model.ObjectiveAnswer%>';

            var subObjectiveAnswer = ObjectiveAnswer.substring(1, ObjectiveAnswer.length - 3).split(",");

            for (var i = 0; i < subObjectiveAnswer.length; i++) {
                var selOBJ = document.getElementsByName(subObjectiveAnswer[i].split(":")[0]);
                if (selOBJ.length > 0) {
                    checkSelectByValue(selOBJ[0], subObjectiveAnswer[i].split(":")[1], true);
                }
            }

            $('#planItem select').each(function (i) {
                $(this).hide().after('<b style="color:Red">' + $(this).val() + '</b>');
            });


            $('#btShare').click(function () {
                $.ajax({
                    type: "POST",
                    dataType: 'html',
                    url: "/TreatmentPlan/ShareTreatmentPlan",
                    cache: false,
                    beforeSend: function () {
                        $('#shareForm').html('<div style="text-align:center;">loading...</div>')
                        .dialog({ autoOpen: false,
                            title: "Setting TreatmentPlan's permission",
                            modal: true,
                            width: 460,
                            height: 300,
                            buttons: {
                                "Save": function () {
                                    var read = [], write = [], download = [];
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
                    data: "PatientID=<%=Model.PatientID%>&TreatmentPlanID=<%=Model.TreatmentPlanID %>",
                    success: function (result) {
                        $('#shareForm').html(result);
                    }
                });
            });
        });

        function treatmentPlanStutasUpdate(id) {
            var url = "/TreatmentPlan/UpdateStatus/" + id;
            url += "?patientID=<%=Model.PatientID %>&treatmentPlanID=<%=Model.TreatmentPlanID %>"; //  + TreatmentPlanID;
            $.ajax({
                type: "POST",
                url: url,
                cache: false,
                success: function (message) {
                    //alertMessge("", message);
                    alert(message)
                    document.location = "/TreatmentPlan/TreatmentPlanList/1?patientID=<%=Model.PatientID %>";
                }
            });
        }

    </script>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="phToolBar" runat="server">
    <%--<input type="button" value="Back to List" class="btn-style" onclick="actionLink('/TreatmentPlan/TreatmentPlanList/<%:Request.QueryString["page"] %>?patientID=<%:Request.QueryString["patientID"] %>')" /> | --%>
    <%if ((bool)ViewData["Write"])
      { %>
     <%if (Model.Status.Equals("In development"))
       { %>
    <input type="button" value="Edit" class="btn-style" onclick="document.location = '/TreatmentPlan/UpdateItem/<%=Model.TreatmentPlanID %>?page=<%:Request.QueryString["page"] %>&patientID=<%:Request.QueryString["patientID"] %>';" />
     |
    <%} %>
   
    <%if (Model.Status.Equals("In development"))
      {
    %>
    <input type="button" value="Send for approval" class="btn-style" onclick="treatmentPlanStutasUpdate(1)" />
    <%
      }
      else if (Model.Status.Equals("Send for approval") && (int)Session["UserTypeID"] < 4)
      {
    %>
    <input type="button" value="Active" class="btn-style" onclick="treatmentPlanStutasUpdate(2)" />
    <%
      }
      else if (Model.Status.Equals("Active") && (int)Session["UserTypeID"] < 4)
      {
    %>
    <input type="button" value="Archived" class="btn-style" onclick="treatmentPlanStutasUpdate(3)" />
    <%
      }
      else if (Model.Status.Equals("Archived") && (int)Session["UserTypeID"] < 4)
      {
    %>
    <input type="button" value="Archived" class="btn-style" disabled="disabled" />
    <%
      }
    %>
    <%} %>
    <%if ((bool)ViewData["IsOwner"])
      { %>
    |
    <input type="button" value="Permission" class="btn-style" id="btShare" />
    <%} %>
    <%if (Model.Status.Equals("Active"))
      { %>
    |
    <input type="button" value="Service Note" class="btn-style" onclick="actionLink('/TreatmentPlan/ClintcalService/1?tpid=<%:Model.TreatmentPlanID %>&page=<%=Request.QueryString["page"]%>&patientID=<%=Request.QueryString["patientID"]%>')" />
    <%} %>
    <%if (Model.TreatmentPlanItems.Count() > 0)
      { %>
    |
    <input type="button" id="print" value="Print" class="btn-style" onclick="OpenPdf('/TreatmentPlan/PrintTreatmentPlant?tpid=<%:Model.TreatmentPlanID %>&patientID=<%=Request.QueryString["patientID"]%>')" />
    <%} %>
    <%else
      { %>
    |
      <input type="button" value="Print" class="btn-style" disabled="disabled" />
    <%} %>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="phNavigation" runat="server">
    <%:Html.ActionLink("Client list","list","Client")%>
    >
    <%:Html.ActionLink(Html.Encode(Session["ClientName"]), "Info", "Client", new { id = Request.QueryString["patientID"] }, null)%>
    >
    <%:Html.ActionLink("Treatment Plan List", "TreatmentPlanList", "TreatmentPlan", new { id = Request.QueryString["page"], patientID = Request.QueryString["patientID"]}, null)%>
    >Treatment Plan Info
</asp:Content>
