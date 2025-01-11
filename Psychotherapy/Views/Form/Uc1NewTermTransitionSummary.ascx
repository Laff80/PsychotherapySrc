<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<Insourcia.Psychotherapy.Model.FormData>" %>
<h3 class="title">
        RIVERVALLEY BEHAVIORAL HEALTH
</h3>
<table>
        <tr>
             <th><input type="radio" name="TTS_Summary" value="Termination" />Termination Summary</th>
             <th><input type="radio" name="TTS_Summary" value="Transition" />Transition Summary</th>
             <th><input type="text" name="TTS_Summary_Date" class="datepicker3 inputTxt"/> Date of last contact</th>
        </tr>
        <tr>
             <th>Client Name <input type="text" name="TTS_ClientName" class="inputTxt"/></th>
             <th colspan="2">Date of Admission <input type="text" name="TTS_DateOfAdmission" class="datepicker3 inputTxt"/></th>
        </tr>
        <tr>
             <th>GRID <input type="text" name="TTS_GRID" class="inputTxt"/></th>
             <th colspan="2">Date of termination/transition <input type="text" name="TTS_DateOfTermination" class="datepicker3 inputTxt"/></th>
        </tr>
</table>
<ul class="beginItem">
     <li>PRESENTING PROBLEM (reason for treatment)<br />
         <textarea class="textarea" rows="6" cols="" name="TTS_PRESENTING_PROBLEM"></textarea></li>
     <li>COURSE OF TREATMENT
          <ul>
               <li>ASSESSMENTS: <input type="checkbox" name="TTS_ASSESSMENTS_Psychological" /> Psychological  <input type="checkbox" name="TTS_ASSESSMENTS_Psychiatric" /> Psychiatric</li>
               <li>SERVICES: <input type="checkbox" name="TTS_SERVICES_Case" /> Case Mgmt  <input type="checkbox" name="TTS_SERVICES_Personal" /> Personal Care Home  <input type="checkbox" name="TTS_SERVICES_Out" /> Out Patient  <input type="checkbox" name="TTS_SERVICES_Inpatient" /> Inpatient   <input type="checkbox" name="TTS_SERVICES_Residential" /> Residential</li>
               <li>THERAPIES: <input type="checkbox" name="TTS_THERAPIES_Individual" /> Individual   <input type="checkbox" name="TTS_THERAPIES_Group" /> Group   <input type="checkbox" name="TTS_THERAPIES_Family" /> Family  <input type="checkbox" name="TTS_THERAPIES_Martial" /> Martial   <input type="checkbox" name="TTS_THERAPIES_Psychopharmacology" /> Psychopharmacology</li>
          </ul>
     </li>
     <li>SIGNIFICANT FINDINGS<br />
          <textarea class="textarea" rows="6" cols="" name="TTS_SIGNIFICANTF_FINDINGS"></textarea></li>
     <li>STRENGTHS/ABILITIES, WEAKNESS, PREFERENCES<br />
          <textarea class="textarea" rows="6" cols="" name="TTS_STRENGTHS_ABILITIES"></textarea></li>
     <li>MEDICATIONS (at the time of termination/transition)<br />
          <textarea class="textarea" rows="6" cols="" name="TTS_MEDICATIONS"></textarea></li>
     <li>CLIENTS CONDITION ON TERMINATION/TRANSITION
           <div>
            <input type="radio" name="TTS_CLIENT_CONDITION" value="Improved" />Improved 
            <input type="radio" name="TTS_CLIENT_CONDITION" value="Unchangeed"/>Unchangeed  
            <input type="radio" name="TTS_CLIENT_CONDITION" value="Deteriorated"/>Deteriorated</div></li>
     <li>OUTCOME MEASUREMENTS
           <ul>
                 <li>Did client achieve goal as stated in his/her initial Psychosocial Assessment?   
                     <input type="radio" name="TTS_OUTCOME_MEASUREMENTS_1" value="Yes" />Yes  <input type="radio" name="TTS_OUTCOME_MEASUREMENTS_1" value="No" />No</li>
                 <li>Did client exceed the expected number of visits as anticipated on his/her initial Psychosocial Evaluation?   
                     <input type="radio" name="TTS_OUTCOME_MEASUREMENTS_2" value="Yes" />Yes  <input type="radio" name="TTS_OUTCOME_MEASUREMENTS_2" value="No" />No</li>
                 <li>Treatment Plan goal achieved?   
                     <input type="radio" name="TTS_OUTCOME_MEASUREMENTS_3" value="Poor" />Poor  <input type="radio" name="TTS_OUTCOME_MEASUREMENTS_3" value="Fair" />Fair  <input type="radio" name="TTS_OUTCOME_MEASUREMENTS_3" value="Good" />Good  <input type="radio" name="TTS_OUTCOME_MEASUREMENTS_3" value="Excellent" />Excellent</li>
                  <li>Investment in treatment?   
                     <input type="radio" name="TTS_OUTCOME_MEASUREMENTS_4" value="Poor" />Poor  <input type="radio" name="TTS_OUTCOME_MEASUREMENTS_4" value="Fair" />Fair  <input type="radio" name="TTS_OUTCOME_MEASUREMENTS_4" value="Good" />Good  <input type="radio" name="TTS_OUTCOME_MEASUREMENTS_4" value="Excellent" />Excellent</li>
            </ul>    
     </li>
     <li>REASON FOR TERMINATION/TRANSITION
          <ul>
               <li>____ Treatment goals met – Client will follow up as needed.</li>
               <li>____ Treatment goals not met – Client will follow up as needed.</li>
               <li>____ Client referred to self help group: <input type="text" name="TTS_REASON_1" class="inputTxt-max" /></li>
               <li>____ Client discontinued service without making formal discharge plans – Follow up letter sent on</li>
               <li>____ Client death</li>
               <li>____ Client incarcerated</li>
               <li>____ Client non-compliant</li>
               <li>____ Client referred to another healthcare provider: <input type="text" name="TTS_REASON_2" class="inputTxt-max" /></li>
               <li>____ Client discharged to another level of service: <input type="text" name="TTS_REASON_3" class="inputTxt-max" />
                   <ul>
                         <li>Program:Therapist: <input type="text" name="TTS_REASON_4" class="inputTxt-max" /></li>
                         <li>Date of Appt: <input type="text" name="TTS_REASON_5" class="inputTxt-max" /></li>
                         <li>Treatment recommendations for receiving professional: <input type="text" name="TTS_REASON_6" class="inputTxt-max" /></li>
                   </ul>
               </li>
               <li>____Other: <input type="text" name="TTS_REASON_7" class="inputTxt-max" /></li>
               <li>____Other: <input type="text" name="TTS_REASON_8" class="inputTxt-max" /></li>
          </ul>
     </li>
     <li>DIAGNOSIS: (at termination/transition)
         <ul>
              <li>
                   <table>
                             <tr>
                                 <th>AXIS I	</th>
                                 <td>Dx 1 Primary</td><td><input type="text" class="inputTxt" name="TTS_DIAGNOSIS_AXIS_I_DX1" /></td>
                                 <td>Code </td><td><input type="text" class="inputTxt" name="TTS_DIAGNOSIS_AXIS_I_Code1" /></td></tr>
                             <tr>
                                  <th></th>
                                  <td>Dx 2 Secondary </td><td><input type="text" class="inputTxt" name="TTS_DIAGNOSIS_AXIS_I_DX2" /></td>
                                  <td>Code </td><td><input type="text" class="inputTxt" name="TTS_DIAGNOSIS_AXIS_I_Code2" /></td></tr>
                             <tr>
                                   <th></th>
                                  <td>Dx 3</td><td><input type="text" class="inputTxt" name="TTS_DIAGNOSIS_AXIS_I_DX3" /></td>
                                  <td>Code </td><td><input type="text" class="inputTxt" name="TTS_DIAGNOSIS_AXIS_I_Code3" /></td></tr>
                             <tr>
                                  <th></th>
                                  <td>Dx 4</td><td><input type="text" class="inputTxt" name="TTS_DIAGNOSIS_AXIS_I_DX4"/></td>
                                  <td>Code </td><td><input type="text" class="inputTxt" name="TTS_DIAGNOSIS_AXIS_I_Code4"/></td></tr>
                             <tr>
                                   <th></th>
                                  <td>Dx 5</td><td><input type="text" class="inputTxt" name="TTS_DIAGNOSIS_AXIS_I_DX5"/></td>
                                  <td>Code </td><td><input type="text" class="inputTxt" name="TTS_DIAGNOSIS_AXIS_I_Code5"/></td></tr>
                            <tr>
                                 <th>AXIS II</th>
                                 <td>Dx 1 Primary</td><td><input type="text" class="inputTxt" name="TTS_DIAGNOSIS_AXIS_II_DX1"/></td>
                                 <td>Code </td><td><input type="text" class="inputTxt" name="TTS_DIAGNOSIS_AXIS_II_Code1"/></td></tr>
                             <tr>
                                  <th></th>
                                  <td>Dx 2 Secondary </td><td><input type="text" class="inputTxt" name="TTS_DIAGNOSIS_AXIS_II_DX2"/></td>
                                  <td>Code </td><td><input type="text" class="inputTxt" name="TTS_DIAGNOSIS_AXIS_II_Code2"/></td></tr>
                             <tr>
                                  <th></th>
                                  <td>Dx 3</td><td><input type="text" class="inputTxt" name="TTS_DIAGNOSIS_AXIS_II_DX3"/></td>
                                  <td>Code </td><td><input type="text" class="inputTxt" name="TTS_DIAGNOSIS_AXIS_II_Code3"/></td></tr>
                             <tr>
                                   <th></th>
                                  <td>Dx 4</td><td><input type="text" class="inputTxt" name="TTS_DIAGNOSIS_AXIS_II_DX4"/></td>
                                  <td>Code </td><td><input type="text" class="inputTxt" name="TTS_DIAGNOSIS_AXIS_II_Code4"/></td></tr>
                             <tr>
                                  <th></th>
                                  <td>Dx 5</td><td><input type="text" class="inputTxt" name="TTS_DIAGNOSIS_AXIS_II_DX5"/></td>
                                  <td>Code </td><td><input type="text" class="inputTxt" name="TTS_DIAGNOSIS_AXIS_II_Code5"/></td></tr>
                            <tr>
                                 <th>AXIS III</th>
                                 <td>Dx 1 First </td><td><input type="text" class="inputTxt" name="TTS_DIAGNOSIS_AXIS_III_DX1"/></td>
                                 <td>Code </td><td><input type="text" class="inputTxt" name="TTS_DIAGNOSIS_AXIS_I_Code1"/></td></tr>
                             <tr>
                                 <th></th>
                                 <td>Dx 2 Secondary </td><td><input type="text" class="inputTxt" name="TTS_DIAGNOSIS_AXIS_III_DX2"/></td>
                                 <td>Code </td><td><input type="text" class="inputTxt" name="TTS_DIAGNOSIS_AXIS_III_Code2"/></td></tr>
                   </table>
                   <table>
                            <tr>
                                 <th colspan="2">AXIS IV (check)</th>
                                </tr>
                             <tr>
                                  <th></th>
                                  <td>____ Problem with primary support group:</td><td><input type="text" class="inputTxt-max" name="TTS_DIAGNOSIS_AXIS_IV_1" /></td></tr>
                             <tr>
                                  <th></th>
                                  <td>____ Problem related to social environment:</td><td><input type="text" class="inputTxt-max" name="TTS_DIAGNOSIS_AXIS_IV_2"/></td></tr>
                             <tr>
                                  <th></th>
                                  <td>____ Educational problem:</td><td><input type="text" class="inputTxt-max" name="TTS_DIAGNOSIS_AXIS_IV_3"/></td></tr>
                             <tr>
                                  <th></th>
                                  <td>____ Occupational problem:</td><td><input type="text" class="inputTxt-max" name="TTS_DIAGNOSIS_AXIS_IV_4"/></td></tr>
                             <tr>
                                  <th></th>
                                  <td>____ Housing problem:</td><td><input type="text" class="inputTxt-max" name="TTS_DIAGNOSIS_AXIS_IV_5"/></td></tr>
                             <tr>
                                  <th></th>
                                  <td>____ Economic problem:</td><td><input type="text" class="inputTxt-max" name="TTS_DIAGNOSIS_AXIS_IV_6"/></td></tr>
                             <tr>
                                  <th></th>
                                  <td>____ Problem with access to healthcare services:</td><td><input type="text" class="inputTxt-max" name="TTS_DIAGNOSIS_AXIS_IV_7"/></td></tr>
                             <tr>
                                  <th></th>
                                  <td>____ Problem related to interaction with legal system:</td><td><input type="text" class="inputTxt-max" name="TTS_DIAGNOSIS_AXIS_IV_8"/></td></tr>
                             <tr>
                                  <th></th>
                                  <td>____ Other psychosocial and environmental problem:</td><td><input type="text" class="inputTxt-max" name="TTS_DIAGNOSIS_AXIS_IV_9"/></td></tr>
                             <tr>
                                 <th>AXIS V</th>
                                 <td>Current GAF at termination </td><td><input type="text" class="inputTxt-max" name="TTS_DIAGNOSIS_AXIS_V_1"/></td>
                                </tr>
                   </table>
                   <table>
                            <tr>
                                <td><input type="text" class="inputTxt-max" name="TTS_DIAGNOSIS_AXIS_V_Therapist"/></td>
                                <td><input type="text" class="inputTxt datepicker3" name="TTS_DIAGNOSIS_AXIS_V_Date"/></td>
                            </tr>
                            <tr>
                                <td>Therapist Signature</td>
                                <td>Date</td>
                            </tr>
                   </table>
              </li>
         </ul>
     </li>
</ul>