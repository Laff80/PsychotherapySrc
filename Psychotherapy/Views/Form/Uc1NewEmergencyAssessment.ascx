<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<Insourcia.Psychotherapy.Model.FormData>" %>
<%@ Import Namespace="Insourcia.Psychotherapy.Model" %>

<h3 class="title">
       EMERGENCY ASSESSMENT
</h3>

<ul class="beginItem">
    <li>"An Emergency Assessment is an acute situation requiring immediate intervention to avoid life-threatening behavior, or further severe emotional decomposition.  Psychiatric consultation is obtained as needed in the judgment of the clinician except when the cases involves:  suicidal or homicidal attempt, gesture or threat; psychotic symptoms; adverse reactions to medications prescribed by GRCC physician."  (Written Plan for Professional Services).</li>
        
        <li>Name: <input type="text" name="EA_NAME" class="inputTxt-max" /></li>
        <li>DOB: <input type="text" name="EA_DOB" class="inputTxt-max" /></li>
        <li>Date: <input type="text" name="EA_DATE_1" class="inputTxt datepicker3" value="<%=Html.Encode(DateTime.Now.ToShortDateString()) %>" /></li>
        <li>Social Security Number: <input type="text" name="EA_NUMBER" class="inputTxt-max" /></li>
        <li>Age: <input type="text" name="EA_AGE" class="inputTxt-min" /></li>
        
        <li>************************************************************************************************************************************************</li>
        <li>If identified client is under the age of 18, legally responsible party:</li>
        <li>accompanied client & approved assessment</li>
        <li>was contracted by telephone during or immediately after assessment & approved</li>
        <li>was unavailable at time of assessment</li>
        <li>other circumstances</li>
        
        
        <li>I. Presenting Problem: <input type="text" name="EA_PRESENTING_PROBLEM" class="inputTxt-max" /></li>
        
        <li>&nbsp;&nbsp;&nbsp;Mental Status: <input type="text" name="EA_MENTAL_STATUS" class="inputTxt-max" /></li>
        <li>&nbsp;&nbsp;&nbsp;Appearance: <input type="text" name="EA_APPEARANCE" class="inputTxt-max" /></li>
        <li>&nbsp;&nbsp;&nbsp;Speech: <input type="text" name="EA_SPEECH" class="inputTxt-max" /></li>
        <li>&nbsp;&nbsp;&nbsp;Affect (Mood): <input type="text" name="EA_AFFECT" class="inputTxt-max" /></li>
        <li>&nbsp;&nbsp;&nbsp;Orientation: <input type="text" name="EA_ORIENTATION" class="inputTxt-max" /></li>
        
        <li>&nbsp;&nbsp;&nbsp;Thought Orientation:</li>
        <li>&nbsp;&nbsp;&nbsp;Memory:  Current: <input type="text" name="EA_MEMORY_CURRENT" class="inputTxt-max" /> &nbsp;&nbsp;&nbsp;&nbsp; Recent: <input type="text" name="EA_MEMORY_RECENT" class="inputTxt-max" /></li>
        <li>&nbsp;&nbsp;&nbsp;Estimated Intelligence Level:</li>
        <li>&nbsp;&nbsp;&nbsp;Influences (Drug, Alcohol, Head Injury, Meds) <input type="text" name="EA_INFLUENCES" class="inputTxt-max" /></li>
        <li>&nbsp;&nbsp;&nbsp;Predominant Mental Status Features: <input type="text" name="EA_MENTAL_FEATURES" class="inputTxt-max" /></li>
        <li>&nbsp;&nbsp;&nbsp;Diagnostic Impression:</li>
        <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Axis I: <input type="text" name="EA_AXIS_I" class="inputTxt-max" /></li>
        <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Axis II: <input type="text" name="EA_AXIS_II" class="inputTxt-max" /></li>
        <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Axis III: <input type="text" name="EA_AXIS_III" class="inputTxt-max" /></li>
        
        <li>III. Lethality Assessment (Danger to self or others)&nbsp;&nbsp;&nbsp;&nbsp;Self&nbsp;&nbsp;&nbsp;&nbsp;Others</li>
        <li>&nbsp;&nbsp;&nbsp;None</li>
         <li>&nbsp;&nbsp;&nbsp;Current Suicide Attempt/Gesture (w/in last 2 wks)</li>
        <li>&nbsp;&nbsp;&nbsp;Current Threat/Ideation (w/in last 2 wks)</li>
        <li>&nbsp;&nbsp;&nbsp;Past Attempt/Gesture</li>
         <li>&nbsp;&nbsp;&nbsp;Past Threat/Ideation</li>
        <li>&nbsp;&nbsp;&nbsp;Specified Victim</li>
        <li>&nbsp;&nbsp;&nbsp;Implied Victim</li>
         <li>&nbsp;&nbsp;&nbsp;Current Plan</li>
        <li>&nbsp;&nbsp;&nbsp;Current Means</li>
        <li>&nbsp;&nbsp;&nbsp;Recent Traumatic Loss</li>
         <li>&nbsp;&nbsp;&nbsp;Has Reasonable Supervision</li>
        <li>&nbsp;&nbsp;&nbsp;Possible Affective Disorder</li>
        <li>&nbsp;&nbsp;&nbsp;Possible Substance Abuse</li>
         <li>&nbsp;&nbsp;&nbsp;Reputation of "Evil" Acts</li>
         
        <li>&nbsp;&nbsp;&nbsp;Need for Emergency Legal Intervention/Advisory:</li>
        <li>&nbsp;&nbsp;&nbsp;None</li>
        <li>&nbsp;&nbsp;&nbsp;Reported Abuse/Neglect Victim</li>
        <li>&nbsp;&nbsp;&nbsp;Reported Abuse/Neglect Perpetrator</li>
        <li>&nbsp;&nbsp;&nbsp;Police Assistance Requested to Aid Client</li>
        <li>&nbsp;&nbsp;&nbsp;Police Assistance Requested to Control Client</li>
        <li>&nbsp;&nbsp;&nbsp;Other: <input type="text" name="EA_LEGAL_OTHER" class="inputTxt-max" /></li>
        
        <li>&nbsp;&nbsp;&nbsp;Need for Emergency Medical Attention:</li>
        <li>&nbsp;&nbsp;&nbsp;None</li>
        <li>&nbsp;&nbsp;&nbsp;Reported/Suspected Adverse Medication Reaction</li>
        <li>&nbsp;&nbsp;&nbsp;Current untreated physical injury</li>
        <li>&nbsp;&nbsp;&nbsp;Psychiatric Admission Assessment for Inpatient Care</li>
        <li>&nbsp;&nbsp;&nbsp;Ambulance</li>
        <li>&nbsp;&nbsp;&nbsp;Other: <input type="text" name="EA_ATTENTION_OTHER" class="inputTxt-max" /></li>
        
        <li>&nbsp;&nbsp;&nbsp;IV. Summary: <input type="text" name="EA_SUMMARY_EMERGENCY" class="inputTxt-max" /></li>
        
        <li>&nbsp;&nbsp;&nbsp;V. Actions Taken:</li>
        <li>&nbsp;&nbsp;&nbsp;None</li>
        <li>&nbsp;&nbsp;&nbsp;PT/Family/Legally Responsible Party Notified (Name):&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Time: <input type="text" name="EA_TIME_1" class="inputTxt-min" value="<%=Html.Encode(DateTime.Now.ToLongTimeString()) %>" /> (HH:MM:SS)</li>
        <li>&nbsp;&nbsp;&nbsp;Intended Victim Notified (Name):&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Time: <input type="text" name="EA_TIME_2" class="inputTxt-min" value="<%=Html.Encode(DateTime.Now.ToLongTimeString()) %>" /> (HH:MM:SS)</li>
        <li>&nbsp;&nbsp;&nbsp;Police Notified (Name):&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Time: <input type="text" name="EA_TIME_3" class="inputTxt-min" value="<%=Html.Encode(DateTime.Now.ToLongTimeString()) %>" /> (HH:MM:SS)</li>
        <li>&nbsp;&nbsp;&nbsp;DSS Notified (Name):&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Time: <input type="text" name="EA_TIME_4" class="inputTxt-min" value="<%=Html.Encode(DateTime.Now.ToLongTimeString()) %>" /> (HH:MM:SS)</li>
        <li>&nbsp;&nbsp;&nbsp;Physician Consulted (Name):&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Time: <input type="text" name="EA_TIME_5" class="inputTxt-min" value="<%=Html.Encode(DateTime.Now.ToLongTimeString()) %>" /> (HH:MM:SS)</li>
        <li>&nbsp;&nbsp;&nbsp;Other Actions Taken:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Time: <input type="text" name="EA_TIME_6" class="inputTxt-min" value="<%=Html.Encode(DateTime.Now.ToLongTimeString()) %>" /> (HH:MM:SS)</li>
        
        <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Time: <input type="text" name="EA_TIME_7" class="inputTxt-min" value="<%=Html.Encode(DateTime.Now.ToLongTimeString()) %>" /> (HH:MM:SS)</li>
        <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Time: <input type="text" name="EA_TIME_8" class="inputTxt-min" value="<%=Html.Encode(DateTime.Now.ToLongTimeString()) %>" /> (HH:MM:SS)</li>
        <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Time: <input type="text" name="EA_TIME_9" class="inputTxt-min" value="<%=Html.Encode(DateTime.Now.ToLongTimeString()) %>" /> (HH:MM:SS)</li>
        <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Time: <input type="text" name="EA_TIME_10" class="inputTxt-min" value="<%=Html.Encode(DateTime.Now.ToLongTimeString()) %>" /> (HH:MM:SS)</li>
        
        <li>VI. Plan for Follow-up Services:</li>
        <li>&nbsp;&nbsp;&nbsp;Rescheduled for:</li>
        <li>&nbsp;&nbsp;&nbsp;Will call for appointment</li>
        <li>&nbsp;&nbsp;&nbsp;No follow-up planned</li>
        
        <li>Primary Staff Involved: <input type="text" name="EA_PRIMARY_STAFF_INVOLVED" class="inputTxt-max" /></li>
        <li>Consulting Staff: <input type="text" name="EA_CONSULTING_STAFF" class="inputTxt-max" /></li>
         
         
        <li>Signature of Clinician Completing Report <input type="text" name="EA_SIGNATURE" class="inputTxt-max" /></li>
        <li>Date: <input type="text" name="EA_DATE_2" class="inputTxt datepicker3" value="<%=Html.Encode(DateTime.Now.ToShortDateString()) %>" /></li>
</ul>
