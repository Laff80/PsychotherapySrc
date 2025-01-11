﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Clintcal Service Info
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<h3 class="title">RiverValley Behavioral Health<br />Clinical Service Note</h3>
     <% Insourcia.Psychotherapy.Model.ClinicalService Model = ViewData["ClinicalService"] as Insourcia.Psychotherapy.Model.ClinicalService; %>
     <%:Html.HiddenFor(C=>Model.ClinicalServiceID)%>
    <table class="cs">
        <tr>
            <th>
                GRID#:
            </th>
            <td><%:Html.TextBoxFor(C => Model.GRID, new { @class = "inputTxt-underline" })%></td>
            <th>
                Client Name:
            </th>
            <td colspan="3"><%:Html.TextBox("ClientName", Html.Encode(Session["ClientName"]), new { @class = "inputTxt-underline" })%></td>
        </tr>
        <tr>
            <th>
                Prof#:
            </th>
            <td><%:Html.TextBoxFor(C => Model.Prof, new { @class = "inputTxt-underline" })%></td>
            <th>
                Prof Name:
            </th>
            <td colspan="3"><%:Html.TextBoxFor(C => Model.ProfName, new { @class = "inputTxt-underline" })%></td>
        </tr>
        <tr>
            <th>
                Date:
            </th>
            <td><%:Html.TextBox("CreateTime", DateTime.Now.ToShortDateString(), new { @class = "inputTxt-underline datepicker3" })%></td>
            <th>
                Cost Center:
            </th>
            <td><%:Html.TextBoxFor(C => Model.CostCenter, new { @class = "inputTxt-underline" })%></td>
             <th>
                Scheduled Service:
            </th>
            <td><%:Html.TextBoxFor(C => Model.ScheduledService, new { @class = "inputTxt-underline" })%></td>
        </tr>
    </table>
    <div style="margin:10px" id="tb1">
       <form id="ClintcalServiceForm" action="/TreatmentPlan/NewRating?treatmentplanID=<%=Request.QueryString["tpid"]%>&clinicalserviceID=<%=Model.ClinicalServiceID%>" method="post" onkeydown="if(event.keyCode==13){return false;}">
     <%Html.RenderPartial("UcRating"); %>
     </form>
    </div>
   <div style="margin:10px" id="tb2">
    <%Html.RenderPartial("UcTreatmentPlanItem"); %>
   </div>
    <table class="cs" cellspacing="1" border="0" cellpadding="0" id="tb3">
           <tr>
                <th>Mood:<%:Html.Hidden("hdMood", Model.Mood)%></th>
                <td>
                    <ul>
                       <li><input type="radio" value="Euthymic" name="Mood" /> Euthymic</li>
                       <li><input type="radio" value="Depressed" name="Mood" /> Depressed</li>
                       <li><input type="radio" value="Anxious" name="Mood" /> Anxious</li>
                       <li><input type="radio" value="Irritable" name="Mood" /> Irritable</li>
                       <li><input type="radio" value="Angry" name="Mood" /> Angry</li>
                       <li><input type="radio" value="Euphoricangry" name="Mood" />Euphoricangry</li>
                    </ul>
                </td>
                <th>Affect:<%:Html.Hidden("hdAffect", Model.Affect)%></th>
                <td>
                     <ul>
                          <li><input type="radio" value="FullRange" name="Affect" />Full range</li>
                          <li><input type="radio" value="Flat" name="Affect" />Flat</li>
                          <li><input type="radio" value="Appropriate" name="Affect" />Appropriate</li>
                          <li><input type="radio" value="Labile" name="Affect" />Labile</li>
                          <li><input type="radio" value="Blunted" name="Affect" />Blunted</li>
                          <li><input type="radio" value="Constricted" name="Affect" />Constricted</li>
                          <li><input type="radio" value="Intense/reactive" name="Affect" />Intense/reactive</li>
                          <li><input type="radio" value="Incongruent" name="Affect" />Incongruent</li>
                     </ul>
                </td>
                <th>Thought Processes:<%:Html.Hidden("hdThoughtProcesses", Model.ThoughtProcesses)%></th>
                <td>
                     <ul>
                          <li><input type="radio" value="Hallucinations" name="ThoughtProcesses" />Hallucinations</li>
                          <li><input type="radio" value="Delusions" name="ThoughtProcesses" />Delusions</li>
                          <li><input type="radio" value="Circumstantiality" name="ThoughtProcesses" />Circumstantiality</li>
                          <li><input type="radio" value="Tangentiality" name="ThoughtProcesses" />Tangentiality</li>
                          <li><input type="radio" value="Paucity" name="ThoughtProcesses" />Paucity</li>
                          <li><input type="radio" value="Illogical" name="ThoughtProcesses" />Illogical</li>
                          <li><input type="radio" value="Grandiose" name="ThoughtProcesses" />Grandiose</li>
                          <li><input type="radio" value="Suspicious" name="ThoughtProcesses" />Suspicious</li>
                     </ul>
                </td>
               <th>Sleep:<%:Html.Hidden("hdSleep", Model.Sleep)%></th>
                <td>
                     <ul>
                          <li><input type="radio" value="initial insomnia" name="Sleep" />initial insomnia</li>
                          <li><input type="radio" value="Hallucinations" name="Sleep" />Hallucinations</li>
                          <li><input type="radio" value="midcycleAwakenings" name="Sleep" />midcycle awakenings</li>
                          <li><input type="radio" value="poor sleepQuality" name="Sleep" />poor sleep quality</li>
                          <li><input type="radio" value="excessiveSleep" name="Sleep" />excessive sleep</li>
                          <li><input type="radio" value="excessiveDreaming/nightmares" name="Sleep" />excessive dreaming/nightmares</li>
                          <li><input type="radio" value="restlesshypermotoricSleep" name="Sleep" />restless/hypermotoric sleep</li
                     </ul>
                </td>
           </tr>
           <tr>
                <th>Perceptions:<%:Html.Hidden("hdPerceptions", Model.Perceptions)%></th>
                <td>
                     <ul>
                          <li><input type="radio" value="Hallucinations" name="Perceptions" />Hallucinations</li>
                          <li><input type="radio" value="Delusions" name="Perceptions" />Delusions</li>
                          <li><input type="radio" value="Circumstantiality" name="Perceptions" />Circumstantiality</li>
                          <li><input type="radio" value="Tangentiality" name="Perceptions" />Tangentiality</li>
                          <li><input type="radio" value="Paucity" name="Perceptions" />Paucity</li>
                          <li><input type="radio" value="Illogical" name="Perceptions" />Illogical</li>
                          <li><input type="radio" value="Grandiose" name="Perceptions" />Grandiose</li>
                          <li><input type="radio" value="Suspicious asdfszd" name="Perceptions" />Suspicious asdfszd</li>
                     </ul>
                </td>
                <th>Speech:<%:Html.Hidden("hdSpeech", Model.Speech)%></th>
                <td>
                     <ul>
                          <li><input type="radio" value="Clear" name="Speech" />Clear</li>
                          <li><input type="radio" value="Coherent" name="Speech" />Coherent</li>
                          <li><input type="radio" value="Relevant" name="Speech" />Relevant</li>
                          <li><input type="radio" value="Loud" name="Speech" />Loud</li>
                          <li><input type="radio" value="Verbose" name="Speech" />Verbose</li>
                          <li><input type="radio" value="Soft" name="Speech" />Soft</li>
                          <li><input type="radio" value="Incoherent" name="Speech" />Incoherent</li>
                          <li><input type="radio" value="Pressured" name="Speech" />Pressured</li>
                          <li><input type="radio" value="Impoverished" name="Speech" />Impoverished</li>
                          <li><input type="radio" value="Word " name="Speech" />Word </li>
                          <li><input type="radio" value="Neologisms" name="Speech" />Neologisms</li>
                          <li><input type="radio" value="Unusual " name="Speech" />Unusual</li>
                     </ul>
                </td>
               <th>Participat:<%:Html.Hidden("hdParticipat", Model.Participat)%></th>
                <td colspan="3">
                     <ul>
                          <li><input type="radio" value="none" name="Participat" />none</li>
                          <li><input type="radio" value="Cooperative" name="Participat" />Cooperative</li>
                          <li><input type="radio" value="Evasive" name="Participat" />Evasive</li>
                          <li><input type="radio" value="minimal" name="Participat" />minimal</li>
                          <li><input type="radio" value="Friendly" name="Participat" />Friendly</li>
                          <li><input type="radio" value="Flippant" name="Participat" />Flippant</li>
                          <li><input type="radio" value="fair" name="Participat" />fair</li>
                          <li><input type="radio" value="Hostile" name="Participat" />Hostile</li>
                          <li><input type="radio" value="Detached" name="Participat" />Detached</li>
                          <li><input type="radio" value="good" name="Participat" />good</li>
                          <li><input type="radio" value="Belligerent" name="Participat" />Belligerent</li>
                          <li><input type="radio" value="Passive" name="Participat" />Passive</li>
                          <li><input type="radio" value="excellent" name="Participat" />excellent</li>
                          <li><input type="radio" value="Guarded" name="Participat" />Guarded</li>
                     </ul>
                </td>
           </tr>
           <tr>
               <th>Comments:</th>
                <td colspan="6">
                     <%:Html.TextAreaFor(C => Model.Comments, new { @class = "textarea", disabled="disabled"})%>
                </td>
           </tr>
    </table>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="HeadContent" runat="server">
<style type="text/css">
table.tpItem{ margin-bottom:20px; width:100%}
table.tpItem{border-collapse: collapse; }
table.tpItem th,table.tpItem td{ padding:8px 30px;border:1px solid #CCC;} 
table.cs{ width:100%;border-collapse: collapse; }
table.cs tr{ border-top:1px solid #CCC;}
table.cs th{ vertical-align:top; text-align:right; padding:4px;}
table.cs td{ vertical-align:top;padding:4px;}
.ui-datepicker-trigger{ display:none;}
</style>
<script type="text/javascript">
    $(document).ready(function () {

        var CSDdataObj = '<%=ViewData["ClinicalServiceDiagnosisItem"] %>'; //转换为json对象
        var CSDobj = eval('(' + CSDdataObj + ')');
        $.each(CSDobj.CSDJson, function (ids, item) {
            if (item.StrategyID != "") {
                var Strategy_pANDa_Name = 'StrategyIsWorkdeOn_' + item.SymptomID + ',' + item.LongTermGoalID + ',' + item.ObjectiveID + ',' + item.StrategyID;
                if (item.StrategyIsWorkdeOn == "True") {
                    checkRadioByValue(Strategy_pANDa_Name, "Yes");
                } else {
                    checkRadioByValue(Strategy_pANDa_Name, "No");
                }
            }
            else {
                var Objective_W_pANDa_Name = "ObjectiveIsWorkedOn_" + item.SymptomID + "," + item.LongTermGoalID + "," + item.ObjectiveID;
                var Objective_C_pANDa_Name = "ObjectiveIsComplete_" + item.SymptomID + "," + item.LongTermGoalID + "," + item.ObjectiveID;
                if (item.ObjectiveIsComplete == "True") {
                    checkRadioByValue(Objective_C_pANDa_Name, "Yes");
                } else {
                    checkRadioByValue(Objective_C_pANDa_Name, "No");
                }
                if (item.ObjectiveIsWorkedOn == "True") {
                    checkRadioByValue(Objective_W_pANDa_Name, "Yes");
                } else {
                    checkRadioByValue(Objective_W_pANDa_Name, "No");
                }
            }
        });

        var CSNRdataObj = '<%=ViewData["ClinicalServiceNoteRateItem"] %>'; //转换为json对象

        var CSNRobj = eval('(' + CSNRdataObj + ')');
        if (CSNRobj.CSNRJson == "") {
            $('#print').attr("disabled", true);
        }
        $.each(CSNRobj.CSNRJson, function (ids, item) {
            disabledRadioBySelector('#tb1');
            checkRadioByValue("Client_" + item.symptomId, item.clientRate);
            checkRadioByValue("Therapist_" + item.symptomId, item.therapistRate);
        });

        disabledRadioBySelector('#tb2');
        disabledRadioBySelector('#tb3');
        checkRadioByValue("Mood", $('#hdMood').val());
        checkRadioByValue("Affect", $('#hdAffect').val());
        checkRadioByValue("Participat", $('#hdParticipat').val());
        checkRadioByValue("ThoughtProcesses", $('#hdThoughtProcesses').val());
        checkRadioByValue("Speech", $('#hdSpeech').val());
        checkRadioByValue("Perceptions", $('#hdPerceptions').val());
        checkRadioByValue("Sleep", $('#hdSleep').val());

        $('#qANDa select').each(function (i) {
            $(this).hide().after('<b style="color:Red">' + $(this).val() + '</b>');
        });


        $('input[type=submit]').click(function () {
            var options = {
                dataType: 'json',
                beforeSubmit: function () {
                    $('input[type=submit]').attr('disabled', true);

                },
                success: function (JsonResult) {
                    if (JsonResult.Success) {
                        alert(JsonResult.Message);
                        document.location = $('#ClinicalServiceID').val() + '?tpid=<%=Request.QueryString["tpid"]%>&page=<%=Request.QueryString["page"]%>&patientID=<%=Request.QueryString["patientID"]%>';
                    }
                    else {
                        alert(JsonResult.Message);
                    }
                    $('input[type=submit]').attr('disabled', false);
                }
            };

            $('#ClintcalServiceForm').ajaxSubmit(options);

        });
    });
</script>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="phToolBar" runat="server">
<% Insourcia.Psychotherapy.Model.ClinicalService Model = ViewData["ClinicalService"] as Insourcia.Psychotherapy.Model.ClinicalService; %>
<input type="button" class="btn-style" value="Back to List" onclick="actionLink('/TreatmentPlan/ClintcalService/1?tpid=<%=Request.QueryString["tpid"] %>&page=<%=Request.QueryString["page"] %>&patientID=<%=Request.QueryString["patientID"] %>')" />
    |
    <input type="button" id="print" value="Print" class="btn-style" onclick="OpenPdf('/TreatmentPlan/PrintClintcalService/<%:Model.ClinicalServiceID %>?tpid=<%:Model.TreatmentPlanID %>&patientID=<%=Request.QueryString["patientID"]%>')"/>
</asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="phNavigation" runat="server">
    <%:Html.ActionLink("Client list", "list", "Client")%>
    >
    <%:Html.ActionLink(Html.Encode(Session["ClientName"]), "Info", "Client", new { id = Request.QueryString["patientID"] }, null)%>
    >
    <%:Html.ActionLink("Treatment Plan List", "TreatmentPlanList", "TreatmentPlan", new { id = Request.QueryString["page"], patientID = Request.QueryString["patientID"] }, null)%>
    >
    <%:Html.ActionLink("Treatment Plan Info", "TreatmentPlanInfo", "TreatmentPlan", new { id = Request.QueryString["tpid"], page = Request.QueryString["page"], patientID = Request.QueryString["patientID"] }, null)%>
    >
    <%:Html.ActionLink("Cinical Service", "ClintcalService", "TreatmentPlan", new { id = 1, tpid = Request.QueryString["tpid"], page = Request.QueryString["page"], patientID = Request.QueryString["patientID"] }, null)%>
    > Info
</asp:Content>

