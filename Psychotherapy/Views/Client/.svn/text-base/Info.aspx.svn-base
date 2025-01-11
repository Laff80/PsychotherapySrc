<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<Insourcia.Psychotherapy.Model.Patient>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Client Information
</asp:Content>
<asp:Content ID="ctToolBar" runat="server" ContentPlaceHolderID="phToolBar">
    <%
        bool canWrite=(bool)ViewData["CanWrite"];
        bool isOwner = ViewData["IsOwner"] == null ? false : ((bool)ViewData["IsOwner"]);
         %>
    <%if (canWrite)
      { %>
    <input type="button" value="Edit Psychosocial" class="btn-style" onclick="document.location = '/Client/Edit/<%:Model.PatientID%>';" />
    <%} %>
    |
    <input type="button" value="Forms" class="btn-style" onclick="document.location='/Form/list/1?cid=<%:Model.PatientID %>';" />
    |
    <input type="button" value="Treatment Plans" class="btn-style" onclick="document.location = '/TreatmentPlan/TreatmentPlanList/1?patientID=<%:Model.PatientID %>';" />
    |
    <input type="button" value="Scanned Forms" class="btn-style" onclick="document.location = '/Client/Files/1?patientID=<%:Model.PatientID%>';" />
    |
    <input type="button" value="Chart" class="btn-style" onclick="document.location = '/Client/Chart/1?patientID=<%:Model.PatientID%>';" />
    <%if (isOwner)
      { %>
    |
    <input type="button" value="Permission" class="btn-style" id="btShare" />
    <%} %>
    |
    <input type="button" value="Print" class="btn-style" id="print" />
</asp:Content>
<asp:Content ID="ctNavigation" runat="server" ContentPlaceHolderID="phNavigation">
    <%:Html.ActionLink("Client list","list")%>
    >
    <%:Html.Encode(Session["ClientName"]) %>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="HeadContent" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            $('#print').click(function () {
                var steuel = "/Client/PrintClientInfo/<%:Model.PatientID%>";
                window.open(steuel, "_blank");
            });

            $('#btShare').click(function () {
                $.ajax({
                    type: "POST",
                    dataType: 'html',
                    url: "/Client/SharePatient",
                    cache: false,
                    beforeSend: function () {
                        $('#shareForm').html('<div style="text-align:center;">loading...</div>')
                        .dialog({ autoOpen: false,
                            title: "Set Permission",
                            modal: true,
                            width: 670,
                            maxWidth: 600,
                            height: 400,
                            maxHeight: 375,
                            buttons: { 
                                "Save": function () {
                                    var read = [], write = [], download = [], form = [], treatmentPlan = [], scannedForm = [], chart = [];
                                    $('input[name="chkbRead"]').each(function (n) {
                                        read.push(this.checked);
                                    });

                                    $('input[name="chkbWrite"]').each(function (i) {
                                        write.push(this.checked);
                                    });

                                    $('input[name="chkbDownload"]').each(function (i) {
                                        download.push(this.checked);

                                    });
                                    $('input[name="chkApplyForm"]').each(function (n) {
                                        form.push(this.checked);
                                    });

                                    $('input[name="chkApplyTreatmentPlan"]').each(function (i) {
                                        treatmentPlan.push(this.checked);
                                    });

                                    $('input[name="chkScannedForm"]').each(function (i) {
                                        scannedForm.push(this.checked);
                                    });

                                    $('input[name="chkApplyChart"]').each(function (i) {
                                        chart.push(this.checked);
                                    });
                                    //var data = read + write + download.replace(/[&]{1,}$/g, '');
                                    //alert(data); return false;
                                    var options = {
                                        dataType: 'json',
                                        beforeSubmit: function () {
                                            $('#btUserPmAdd').attr('disabled', true);
                                        },
                                        data: { canRead: read, canWrite: write, canDownload: download, isAppliedForm: form, isAppliedTreatmentPlan: treatmentPlan, isAppliedScannedForm: scannedForm, isAppliedChart: chart },
                                        success: function (result) {
                                            $('#btUserPmAdd').attr('disabled', false);
                                            $('#btSaveShare').attr('disabled', false);
                                            if (result && result.Success) {
                                                alert('Operation was successful!');
                                            }
                                            else if (result) {
                                                alert("Operation is failed!");
                                            }
                                        }
                                    };
                                    $('#permissionForm').ajaxSubmit(options);
                                }
                            },
                            'Cancel': function () {
                                $(this).dialog('close');
                            }
                        }).dialog("open");
                    },
                    data: "PatientID=<%=Model.PatientID%>",
                    success: function (result) {
                        $('#shareForm').html(result);
                    }
                });
            });
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="patient_title">
        <p>
            RIVERVALLEY BEHAVIORAL HEALTH</p>
        <p>
            ADMISSION/PSYCHOSOCIAL ASSESSMENT AND HISTORY</p>
    </div>
    <table class="style1">
        <tr>
            <th style="width: 30%">
                GRID
            </th>
            <td>
                <%: Model.GRID %>
            </td>
        </tr>
        <tr>
            <th>
                Client Name
            </th>
            <td>
               <%=(Model.LastName + "," + Model.FirstName + (!string.IsNullOrEmpty(Model.MiddleName) ? " " + Model.MiddleName + "." : ""))%>
            </td>
        </tr>
        <tr>
            <th>
                Sex
            </th>
            <td>
                <%: Model.Gender %>
            </td>
        </tr>
        <tr>
            <th>
                Age
            </th>
            <td>
                <%: Model.Age %>
            </td>
        </tr>
        <tr>
            <th>
                Birth Day
            </th>
            <td>
                <%: Model.BirthDay %>
            </td>
        </tr>
        <tr>
            <th>
                Admission Day
            </th>
            <td>
                <%: Model.AdmissionDay %>
            </td>
        </tr>
        <tr>
            <th valign="top">
                Address
            </th>
            <td style="word-wrap: break-word;">
                <%: Model.Address %>
            </td>
        </tr>
        <tr>
            <th>
                Ethnicity
            </th>
            <td>
                <%: Model.Ethnicity %>
            </td>
        </tr>
        <tr>
            <th>
                Marital Status
            </th>
            <td>
                <%: Model.MaritalStatus %>
            </td>
        </tr>
        <tr>
            <th>
                Living Situation
            </th>
            <td>
                <%: Model.LivingSituation %>
            </td>
        </tr>
        <tr>
            <th>
                Referral Source
            </th>
            <td>
                <%: Model.ReferralSource %>
            </td>
        </tr>
        <tr>
            <th>
                Relationship
            </th>
            <td>
                <%: Model.Relationship %>
            </td>
        </tr>
        <tr>
            <th>
                Legal Guardian
            </th>
            <td>
                <%: Model.LegalGuardian %>
            </td>
        </tr>
        <tr>
            <th>
                Treatment
            </th>
            <td>
                <%: Model.Treatment %>
            </td>
        </tr>
        <tr>
            <th>
                Household
            </th>
            <td>
                <%: Model.Household %>
            </td>
        </tr>
    </table>
    <div id="shareForm" style="display: none;">
    </div>
</asp:Content>
