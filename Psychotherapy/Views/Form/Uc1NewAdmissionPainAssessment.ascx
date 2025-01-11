<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<Insourcia.Psychotherapy.Model.FormData>" %>
<h3 class="title">
      Admission Pain Assessment
</h3>
<ul class="beginItem">
     <li>CONSUMER NAME: <input type="text" class="inputTxt" name="AP0001T_NAME" />  MR Number: <input type="text" class="inputTxt" name="AP0002T_NUMBER" /></li>
     <li>ADMISSION PAIN ASSESSMENT
         <ul>
             <li>Is the patient experiencing pain now? (circle answer)   <input type="radio" name="AP0003R_PAIN" value="Yes" />Yes  <input type="radio" name="AP0003R_PAIN" value="No"/>No</li>
              <li>Have patient point to the part of his/her body that hurts (type answer) <input type="text" class="inputTxt-max" name="AP0004T_ANSWER" /></li>
              <li>Have patient look at the faces, and point to the one that best describes how their pain makes them feel. (Use Wong-Baker FACES Pain Rating Scale)
                  <input type="text" class="inputTxt-max" name="AP0005T_ANSWER_FEEL" /></li>
              <li>When did the pain start? <input type="text" class="inputTxt-max" name="AP0006T_START_TIME" /></li>
              <li>How often does the patient feel the pain (circle answer)   <input type="radio" name="AP0007R_RATE" value="All The Time" />All The Time  <input type="radio" name="AP0007R_RATE" value="Comes and Goes" />Comes and Goes</li>
              <li>Have the patient tell about the pain (document patient's own words, note facial expression, gestures, etc.). <input type="text" class="inputTxt-max" name="AP0008T_ANSWER_DOCUMENT" /></li>
              <li>How is the pain currently being treated (seeing physician, OTC meds, list any measures to alleviate pain). <input type="text" class="inputTxt-max" name="AP0009T_ANSWER_WAY" /></li>
              <li>Physical exam and observation of pain site: <input type="text" class="inputTxt-max" name="AP0010T_SITE" /></li>
              <li>Referral: <input type="text" class="inputTxt-max" name="AP0011T_REFERRAL" /></li>
         </ul>
     </li>
     <li>NURSE SIGNATURE: <input type="text" class="inputTxt-max" name="AP0012T_NURSE_SIGNATURE" /> DATE: <input type="text" class="inputTxt datepicker3" name="AP0013D_DATE"/></li>
     <li><hr style=" border:1px dotted #000;" /></li>
     <li>ONGOING PAIN ASSESSMENT&nbsp;&nbsp;&nbsp; DISCHARGE PAIN ASSESSMENT
         <ul>
              <li>Is the patient experiencing pain now? (circle answer)   <input type="radio" name="AP0014R_EXPERIENCE" value="Yes" />Yes  <input type="radio" name="AP0014R_EXPERIENCE" value="No" />No</li>              <li>Have patient point to the part of his/her body that hurts (Nurse list areas). <input type="text" class="inputTxt-max" name="AP0015R_ANSWER_ON" /></li>
              <li>Have patient look at the faces, and point to the one that best describes how their pain makes them feel. (Use Wong-Baker FACES Pain Rating Scale)
                  <input type="text" class="inputTxt-max" name="AP0016T_ANSWER_FEEL_ON" /></li>
              <li>When did the pain start? <input type="text" class="inputTxt-max" name="AP0017T_START_TIME_ON" /></li>
              <li>Have the patient tell about the pain (document patient's own words, note facial expression, gestures, etc.) <input type="text" class="inputTxt-max" name="AP0018T_ANSWER_DOCUMENT_ON" /></li>
              <li>Is the pain currently being treated (seeing physician, OTC meds, list any measures to alleviate pain): <input type="text" class="inputTxt-max" name="AP0019T_ANSWER_LIST_ON" /></li>
              <li>Physical exam and observation of pain site: <input type="text" class="inputTxt-max" name="AP0020T_SITE_ON" /></li>
              <li>Pain re-assessment: If treated, was pain relieved?   <input type="radio" name="AP0021R_RELIEVED" value="Yes" />Yes  <input type="radio" name="AP0021R_RELIEVED" value="No" />No</li>
              <li>Referral: <input type="text" class="inputTxt-max" name="AP0022T_REFERRAL_ON" /></li>
         </ul>
     </li>
     <li>NURSE SIGNATURE: <input type="text" class="inputTxt-max" name="AP0023T_NURSE_SIGNATURE_ON" /> DATE: <input type="text" class="inputTxt datepicker3" name="AP0024D_DATE_ON" /></li>
</ul>
<table class="APA-TABLE">
      <tr><th></th>
            <td>0</td>
            <td>1</td>
            <td>2</td>
            <td>3</td>
            <td>4</td>
            <td>5</td></tr>
      <tr><th></th>
            <td>No Hurt</td>
            <td>Hurts Little Bit</td>
            <td>Hurts Little More</td>
            <td>Hurts Even More</td>
            <td>Hurts Whole Lot</td>
            <td>Hurts Worst</td></tr>
      <tr><th>ALTERNATE CODING</th>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td></tr>
</table>