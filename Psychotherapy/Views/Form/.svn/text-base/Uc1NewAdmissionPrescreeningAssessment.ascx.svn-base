<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<Insourcia.Psychotherapy.Model.FormData>" %>
<h3 class="title">
     Admission Prescreening Assessment
</h3>
<table>
         <tr>
               <td>RiverValley Behavioral Health Hospital </td>
               <td>NAME:</td>
               <td><input type="text" name="AH0001T_NAME" class="inputTxt" /></td>
         </tr>
         <tr>
               <td></td>
               <td>DOB:</td>
               <td><input type="text" name="AH0002T_DOB" class="inputTxt"/></td>
         </tr>
         <tr>
               <td>Admissions Prescreening Assessment</td>
               <td>AGE:</td>
               <td><input type="text" name="AH0003T_AGE" class="inputTxt-min"/></td>
         </tr>
          <tr>
               <td></td>
               <td>ACCOMPANIED BY:</td>
               <td><input type="text" name="AH0004T_ACCOMPANIED" class="inputTxt"/></td>
         </tr>
         <tr>
               <td></td>
               <td>Date:</td>
               <td><input type="text" name="AH0005D_DATE_A" class="inputTxt datepicker3" /></td>
         </tr>
	<tr>
               <td></td>
               <td>Time:</td>
               <td><input type="text" name="AH0006T_TIME_A" class="inputTxt" /></td>
         </tr>
</table>
<ul class="beginItem">
     <li>REFERRAL INFORMATION
          <ul>
               <li>Primary Care Doctor: <input type="text" name="AH0007T_PRIMARY_CARE_DOCTOR" class="inputTxt"/></li>
               <li>Location: <input type="text" name="AH0008T_LOCATION" class="inputTxt"/></li>
               <li>Referred By: <input type="text" name="AH0009T_REFERRED" class="inputTxt"/></li>
               <li>Phone: <input type="text" name="AH0010T_PHONE" class="inputTxt"/></li>
               <li>Reason for Referral: <input type="text" name="AH0011T_REASON" class="inputTxt"/></li>
          </ul>
     </li>
     <li>NURSING ASSESSMENT
         <ul>
              <li>TB Questionnaire</li>
              <li>History of exposure to TB: <input type="text"  name="AH0012T_HISTORY_TB" class="inputTxt"/></li>
              <li>Date and results of last TB skin test: <input type="text" name="AH0013D_DATE_TB"  value="<%=DateTime.Now.ToShortDateString() %>" class="inputTxt datepicker3"/>   <input type="text" name="AH0014T_RESULTS_TB" class="inputTxt"/></li>
              <li>Documentation as time of admission:   <input type="radio" name="AH0015R_ADMISSION" value="Yes"/>Yes  <input type="radio" name="AH0015R_ADMISSION" value="No" />No</li>              <li>If last skin test positive: Date of last CXR: <input type="text" name="AH0016D_CXR_DATE" class="inputTxt" value="<%=DateTime.Now.ToShortDateString() %>"/></li>
              <li>Date prophylactic meds completed: <input type="text" name="AH0017D_PROPHYLACTIC_DATE" class="inputTxt" value="<%=DateTime.Now.ToShortDateString() %>"/></li>
              <li>Circle present symptoms: <input type="text" name="AH0018T_PRESENT_SYMPTOMS" class="inputTxt"/></li>
              <li>Other: <input type="text" name="AH0019T_SYMPTOMS_OTHERS" class="inputTxt"/></li>
              <li>Breath Sounds: <input type="text" name="AH0020T_BREATH_SOUNDS" class="inputTxt"/></li>
         </ul>
     </li>
	<li>CURRENT HEALTH CONDITIONS
          <ul>
               <li>Health Condition: <input type="text" name="AH0007T_PRIMARY_CARE_DOCTOR" class="inputTxt"/></li>
               <li>Treatment/Medication for conditon</li>
               <li>Have treatments/meds been given as prescribed in last 72 hours?  <input type="radio" name="AH0022R_ADMISSION" value="Yes"/>Yes  <input type="radio" name="AH0022R_ADMISSION" value="No" /
why: <input type="text" name="AH0023T_REASON_STATE" class="inputTxt"/></li>
          </ul>
     </li>
     <li>CURRENT HEALTH STATUS
          <ul>
              <li>Medication & Food Allergies: <input type="text" name="AH0024T_ALLERGIES" class="inputTxt"/></li>
              <li>If female, LMP: <input type="text" name="AH0025T_LMP_FEMALE" class="inputTxt"/></li>
              <li>If pregnant, EDC: <input type="text" name="AH0026T_EDC_PREGNANT" class="inputTxt"/></li>
              <li>Vital Signs: <input type="text" name="AH0027T_VITAL_SIGNS" class="inputTxt"/></li>
              <li>Temp: <input type="text" name="AH0028T_TEMP" class="inputTxt"/></li>
              <li>Pulse: <input type="text" name="AH0029T_PULSE" class="inputTxt"/></li>
              <li>Resp: <input type="text" name="AH0030T_RESP" class="inputTxt"/></li>
              <li>BP: <input type="text" name="AH0031T_BP" class="inputTxt"/></li>
              <li>Other: <input type="text" name="AH0032T_HEALTH_OTHER" class="inputTxt"/></li>
              <li>Obvious wounds or s/s of health care needs: <input type="text" name="AH0033T_CARE_NEEDS" class="inputTxt"/></li>
              <li>Pain Screening (circle one)   <input type="radio" name="AH0034R_SCREENING" value="1" />1  <input type="radio" name="AH0034R_SCREENING" value="2"/>2  <input type="radio" name="AH0034R_SCREENING" value="3"/>3</li>
              <li>Location of pain: <input type="text" name="AH0035T_LOCATION_PAIN" class="inputTxt"/></li>
              <li>What is done for report of pain? <input type="text" name="AH0036T_REPORT_PAIN" class="inputTxt"/></li>
          </ul>
     </li>
     <li>CURRENT MENTAL STATUS
         <ul>
              <li>Orientation status: <input type="text" name="AH0037T_ORIENTATION_STATUS" class="inputTxt"/></li>
              <li>time <input type="text" name="AH0038T_MENTAL_TIME" class="inputTxt" value="<%=DateTime.Now.ToLongTimeString() %>"/>(HH:MM:SS)</li>
              <li>date <input type="text" name="AH0039D_ENTAL_DATE" class="inputTxt" value="<%=DateTime.Now.ToShortDateString() %>"/></li>
              <li>place <input type="text" name="AH0040T_MENTAL_PLACE" class="inputTxt datepicker3"/></li>
              <li>person <input type="text" name="AH0041T_MENTAL_PERSON" class="inputTxt"/></li>
              <li>situation <input type="text" name="AH0042T_MENTAL_SITUATION" class="inputTxt"/></li>
              <li>alert <input type="text" name="AH0043T_MENTAL_ALERT" class="inputTxt"/></li>
         </ul>
     </li>
     <li>ASSESSMENT SUMMARY
         <ul>
              <li>Medically stable for admission: <input type="text" name="AH0044T_MEDICALLY_ADMISSION" class="inputTxt"/></li>
              <li>YES If yes, patient must be searched before unit admission. Admitted to Room: <input type="text" name="AH0045T_ROOM" class="inputTxt"/></li>
              <li>NO If no, state why: <input type="text" name="AH0046T_REASON_NO" class="inputTxt"/></li>
              <li>If not medically stable for transfer or admission, contact physician on call for instructions. If life threatening emergency, call 911.</li>
              <li>Physician contacted: <input type="text" name="AH0047T_PHYSICIAN_CONTACTED" class="inputTxt"/></li>
              <li>Time <input type="text" name="AH0048T_TIME_B" class="inputTxt" value="<%=DateTime.Now.ToLongTimeString() %>"/>(HH:MM:SS)</li>
              <li>Instructions: <input type="text" name="AH0049T_INSTRUCTIONS" class="inputTxt"/></li>
              <li>State treatment provided: <input type="text" name="AH0050T_TREATMENT_PROVIDED" class="inputTxt"/></li>
              <li>Nurse Signature: <input type="text" name="AH0051T_NURSE_SIGNATURE" class="inputTxt"/></li>
              <li>Date: <input type="text" name="AH0052D_DATE_B" class="inputTxt datepicker3" value="<%=DateTime.Now.ToShortDateString() %>"/></li>
              <li>Time: <input type="text" name="AH0053T_TIME_C" class="inputTxt" value="<%=DateTime.Now.ToLongTimeString() %>"/></li>
         </ul>
     </li>
</ul>