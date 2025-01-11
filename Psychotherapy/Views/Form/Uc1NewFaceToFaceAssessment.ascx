<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<Insourcia.Psychotherapy.Model.FormData>" %>
<%@ Import Namespace="Insourcia.Psychotherapy.Model" %>

<h3 class="title">
        Psychiatric Residential Treatment Facility<br />
        Face to Face Assessment
</h3>

<ul class="beginItem">
    <li>Client Name:  <input type="text" name="CLIENT_NAME" class="inputTxt-max" /></li>
    <li>Date and Time of Restraint:  <input type="text" name="FTF_DATE_1" class="inputTxt datepicker3" value="<%=Html.Encode(DateTime.Now.ToShortDateString()) %>" />&nbsp;&nbsp;<input type="text" name="FTF_TIME_1" class="inputTxt-min" value="<%=Html.Encode(DateTime.Now.ToLongTimeString()) %>" /> (HH:MM:SS) </li>
    <li>1. Physical and psychological status of resident: 
        <ul><li><input type="text" name="FTF_STATUS" class="inputTxt-max" /></li></ul>
    </li>
    <li>2. Current Behavior of resident: 
        <ul><li><input type="text" name="FTF_BEHAVIOR" class="inputTxt-max" /></li></ul>
    </li>
    <li>3. Appropriateness of restraint: 
        <ul><li><input type="text" name="FTF_APPROPRIATENESS" class="inputTxt-max" /></li></ul>
    </li>
    <li>4. Complications resulting from restraint: 
        <ul><li><input type="text" name="FTF_COMPLICATIONS" class="inputTxt-max" /></li></ul>
    </li>
    <li>5. Medical Skin Integrity:  Contusions  Abrasions  Lacerations Other __________  N/A<br /> 
        <ul>
            <li>If checked describe: <input type="text" name="FTF_DESCRIBE" class="inputTxt-max" /></li>
            <li>Assess Vital Signs:  Within Normal Limits     Not within Normal Limits     N/A</li>
            <li>Assess Respiratory:  Within Normal Limits     Not within Normal Limits     N/A</li>
            <li>Assess Circulatory:  Within Normal Limits     Not within Normal Limits     N/A</li>
        </ul>
    </li>
    <li>6.  Assess the Need to Continue or Terminate Seclusion/Restraint:
        <ul>
            <li>Terminate  Patient is free from aggression, anger, agitation, verbal threats of harm to self or other</li>
            <li>Terminate  Patient agrees to Inform staff when having difficulty with controlling own behavior Other</li>
            <li><input type="text" name="FTF_TERMINATE" class="inputTxt-max" /></li>
        </ul>
    </li>
    <li>Continue seclusion/restraint due to Patient not meeting criteria for release as indicated in the Physicians/LIP order</li>
    <li>Progress Note:
        <ul><li><input type="text" name="FTF_PROGRESS_NOTE" class="inputTxt-max" /></li></ul>
    </li>
    <li>Signature of person conducting assessment:
        <ul><li><input type="text" name="FTF_SIGNATURE" class="inputTxt-max" /></li></ul>
    </li> 
    <li>Date & Time:
        <ul><li><input type="text" name="FTF_DATE_2" class="inputTxt datepicker3" value="<%=Html.Encode(DateTime.Now.ToShortDateString()) %>" />&nbsp;&nbsp;<input type="text" name="FTF_TIME_2" class="inputTxt-min" value="<%=Html.Encode(DateTime.Now.ToLongTimeString()) %>" /> (HH:MM:SS) </li></ul>
    </li>
    <li>Contacted Physician/LIP responsible for Patient care  Date & Time: 
        <ul><li><input type="text" name="FTF_DATE_3" class="inputTxt datepicker3" value="<%=Html.Encode(DateTime.Now.ToShortDateString()) %>" />&nbsp;&nbsp;<input type="text" name="FTF_TIME_3" class="inputTxt-min" value="<%=Html.Encode(DateTime.Now.ToLongTimeString()) %>" /> (HH:MM:SS) </li></ul>
    </li>
    <li>Special Measures Debriefing (Lifespace Interview)</li>
    
    <li>Attach a copy of the flow sheet and describe below the resident's response to staff members'interventions and staff members'response to the resident's behavior/responses. Include thoughts, feelings, and behaviors of each involved staff member.
        <ul><li><input type="text" name="FTF_RESIDENT_INVOLVED_B" class="inputTxt-max" /></li></ul>
    </li>
    <li>Resident's response to questions regarding their thoughts, feelings, and behaviors described during the debriefing (lifespace interview)?
        <ul><li><input type="text" name="FTF_RESIDENT_RESPONSE" class="inputTxt-max" /></li></ul>
    </li>
    <li>List the interventions used in the order that they were used (include NOW and medications): 
        <ul><li><input type="text" name="FTF_INTERVENTIONS_LIST" class="inputTxt-max" /></li></ul>
    </li>
    <li>After the debriefing (lifespace interview) with the resident and staff members, what goal/objectives did the resident and debriefing team need to recommend to the treatment team to increase community success AND what do staff members need to do to assist resident in reaching these goals/objectives?
        <ul><li><input type="text" name="FTF_GOAL_WAY" class="inputTxt-max" /></li></ul>
    </li>
    <li>Resident listed coping skills as:
        <ul><li><input type="text" name="FTF_RESIDENT_LIST_SKILL" class="inputTxt-max" /></li></ul>
    </li>
    <li>Staff involved:
        <ul>
            <li><input type="text" name="FTF_STAFF_INVOLVED_A" class="inputTxt-max" /><span style="margin-left:30px;"><input type="text" name="FTF_STAFF_INVOLVED_B" class="inputTxt-max" /></span></li>
            <li><input type="text" name="FTF_STAFF_INVOLVED_C" class="inputTxt-max" /><span style="margin-left:30px;"><input type="text" name="FTF_STAFF_INVOLVED_D" class="inputTxt-max" /></span></li>
        </ul>
    </li>
    <li>Resident Involved:
        <ul><li><input type="text" name="FTF_RESIDENT_INVOLVED_A" class="inputTxt-max" /></li></ul>
    </li>
    <li>Parent/Guardian Notification:
        <ul><li><input type="text" name="FTF_GUARDIAN_NOTIFICATION" class="inputTxt-max" /></li></ul>
    </li>
     <li>Date & Time:
        <ul><li><input type="text" name="FTF_DATE_4" class="inputTxt datepicker3" value="<%=Html.Encode(DateTime.Now.ToShortDateString()) %>" />&nbsp;&nbsp;<input type="text" name="FTF_TIME_4" class="inputTxt-min" value="<%=Html.Encode(DateTime.Now.ToLongTimeString()) %>" /> (HH:MM:SS) </li></ul>
    </li>
    <li>Patient Informed of the criteria for release
        <ul><li><input name="FTF_CRITERIA" type="radio" value="Yes" />&nbsp;&nbsp;Yes&nbsp;&nbsp;&nbsp;&nbsp;<input name="FTF_CRITERIA" type="radio" value="No" />No</li></ul>
    </li>
    <li>Verbalized Understanding
        <ul><li><input name="FTF_UNDERSTANDING" type="radio" value="Yes" />&nbsp;&nbsp;Yes&nbsp;&nbsp;&nbsp;&nbsp;<input name="FTF_UNDERSTANDING" type="radio" value="No" />No</li></ul>
    </li>
    <li>Does the patient have physical, psychosocial or emotional conditions, which may preclude the use of restrictive behaviors?
        <ul><li><input name="FTF_EMOTIONAL" type="radio" value="Yes" />&nbsp;&nbsp;Yes&nbsp;&nbsp;&nbsp;&nbsp;<input name="FTF_EMOTIONAL" type="radio" value="No" />No</li></ul>
    </li>
    <li>If Yes, Precautionary measures used
        <ul><li><input type="text" name="FTF_MEASURES" class="inputTxt-max" /></li></ul>
    </li>
    <li>Plan of Care:</li>
    <li>Fluids/Bathroom priviledges:  Q  1Hr</li>
    <li>Continuous Observation of face/breathing monitored: (Supine and Prone Floor Techniques)</li>
    <li>Circulation Checks:  Q 15 minutes (Mechanical restraints only)</li>
    <li>Range of Motion:  Q 1 HR for 10 minutes (Mechanical restraints only)</li>

    <li>RN Signature: <input type="text" name="FTF_RN_SIGNATURE" class="inputTxt-max" /></li>
    <li>Date: <input type="text" name="FTF_DATE_5" class="inputTxt datepicker3" value="<%=Html.Encode(DateTime.Now.ToShortDateString()) %>" />&nbsp;&nbsp;Time: <input type="text" name="FTF_TIME_5" class="inputTxt-min" value="<%=Html.Encode(DateTime.Now.ToLongTimeString()) %>" /> (HH:MM:SS)</li>
    <li>Continue/Change to:   Restraint   Seclusion  Mechanical Restratint    For up to 
        <ul><li><input type="text" name="FTF_CHANGE" class="inputTxt-max" /></li></ul>
    </li>
    <li>(Maximum of two hours for children/adolscents (Age 9-17); one hour for children under age of 9)Reason: 
        <ul><li><input type="text" name="FTF_REASON" class="inputTxt-max" /></li></ul>
    </li>
    <li>T.O.: 
        <ul><li><input type="text" name="FTF_T_O" class="inputTxt-max" /></li></ul> 
    </li>
    <li>Date: <input type="text" name="FTF_DATE_6" class="inputTxt datepicker3" value="<%=Html.Encode(DateTime.Now.ToShortDateString()) %>" />&nbsp;&nbsp;&nbsp;&nbsp; Time: <input type="text" name="FTF_TIME_6" class="inputTxt-min" value="<%=Html.Encode(DateTime.Now.ToLongTimeString()) %>" /> (HH:MM:SS)  </li>
    <li>Physician/LIP Signature: 
        <ul><li><input type="text" name="FTF_SIGNATURE" class="inputTxt-max" /></li></ul> 
    </li>
    <li>Date: <input type="text" name="FTF_DATE_7" class="inputTxt datepicker3" value="<%=Html.Encode(DateTime.Now.ToShortDateString()) %>" />&nbsp;&nbsp;&nbsp;&nbsp;  Time: <input type="text" name="FTF_TIME_7" class="inputTxt-min" value="<%=Html.Encode(DateTime.Now.ToLongTimeString()) %>" /> (HH:MM:SS) </li>
</ul>
