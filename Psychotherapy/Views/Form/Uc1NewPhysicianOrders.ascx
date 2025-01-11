<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<Insourcia.Psychotherapy.Model.FormData>" %>
<%@ Import Namespace="Insourcia.Psychotherapy.Model" %>

<h3 class="title">
        RIVERVALLEY BEHAVIORAL HEALTH HOSPITAL<br />
        PHYSICIAN ORDERS
</h3>
<table>
        <tr>
            <th>DRUG ALLERGIES: </th>
            <td colspan="3"><input type="text" name="PO0001T_DRUG_ALLERGIES" class="inputTxt-max" /></td>
        </tr>
        <tr>
            <th align="right">DATE:</th>
            <td><input type="text" name="PO0002D_DATE" class="inputTxt datepicker3" value="<%=Html.Encode(DateTime.Now.ToShortDateString()) %>" /></td>
            <th align="right">TIME: </th>
            <td><input type="text" name="PO0003T_TIME" class="inputTxt-min" value="<%=Html.Encode(DateTime.Now.ToLongTimeString()) %>" /> (HH:MM:SS)</td>
        </tr>
</table>
<ul class="beginItem">
    <li>1) Admit to RVBH Hospital UNIT/PHYSICIAN: <input type="text" name="PO0101T_PHYSICIAN" class="inputTxt-max" /></li>
    <li>2) Admission/Provisional Diagnoses: <input type="text" name="PO0201T_ADMISSION_PROVISIONAL_DIAGNOSES" class="inputTxt-max" />
        <ul>
                <li>AXIS I: <input type="text" name="PO0202T_AXIS_I" class="inputTxt-max" /></li>
                <li>AXIS II: <input type="text" name="PO0203T_AXIS_II" class="inputTxt-max" /></li>
                <li>AXIS III: <input type="text" name="PO0204T_AXIS_III" class="inputTxt-max" /></li>
                <li>AXIS IV: <input type="text" name="PO0205T_AXIS_IV" class="inputTxt-max" /></li>
                <li>AXIS V: <input type="text" name="PO0206T_AXIS_V" class="inputTxt-max" /></li>
        </ul>
    </li>
    <li>3) LABS:  
            <ul>
                <li>
		    <input type="checkbox" name="PO0301C_DRUG" />Urine/Serum DRUG Screen
                    <input type="checkbox" name="PO0302C_ETOH" />Urine/Serum ETOH Screen
                    <input type="checkbox" name="PO0303C_BHCG" />Urine/Serum BHCG
                    <input type="checkbox" name="PO0304C_CBC" />CBC w/ MD
                    <input type="checkbox" name="PO0305C_UA" />UA
                    <input type="checkbox" name="PO0306C_T3" />T3 Uptake
                    <input type="checkbox" name="PO0307C_T4" />T4
                    </li>
                <li>
                    <input type="checkbox" name="PO0308C_FREE" />Free T4
                    <input type="checkbox" name="PO0309C_TSH" />TSH
                    <input type="checkbox" name="PO0310C_CMP" />CMP
                    <input type="checkbox" name="PO0311C_BMP" />BMP
                    <input type="checkbox" name="PO0312C_LFT" />LFT
                    <input type="checkbox" name="PO0313C_UACS" />UA C&S
                    <input type="checkbox" name="PO0314C_OTHER" />Other: <input type="text" name="PO0301T_LABS_A_OTHER" class="inputTxt-max" />
                    </li>
                <li>
                    <input type="checkbox" name="PO0315C_DEPAKOTE" />Depakote Level
                    <input type="checkbox" name="PO0316C_PROTOCOL" />Depakote Protocol
                    <input type="checkbox" name="PO0317C_LITHIUM" />Lithium Level
                    <input type="checkbox" name="PO0318C_LITHIUM_PROTOCOL" />Lithium Protocol
                    <input type="checkbox" name="PO0319C_OTHER" />Other: <input type="text" name="PO0302T_LABS_B_OTHER" class="inputTxt-max" />
                    </li>
                <li>
                    <input type="checkbox" name="PO0320C_TRILEPTAL" />Trileptal Level
                    <input type="checkbox" name="PO0321C_TEGRETOL" />Tegretol Level
                    <input type="checkbox" name="PO0322C_TEGRETOL_PROTOCOL" />Tegretol Protocol
                    <input type="checkbox" name="PO0323C_OTHER" />Other: <input type="text" name="PO0303T_LABS_C_OTHER" class="inputTxt-max" />
                    </li>
            </ul>
    </li>
    <li>4) OTHER TEST/STUDIES: 
            <ul>
                <li>
                    <input type="checkbox" name="PO0401C_EKG" />EKG
                    <input type="checkbox" name="PO0402C_EEG" />EEG
                    <input type="checkbox" name="PO0403C_SDEEG" />SDEEG
                    <input type="checkbox" name="PO0404C_TB" />TB Skin Test (if not done past year)
                    <input type="checkbox" name="PO0405C_OTHER" />Other: <input type="text" name="PO0401T_TEST_STUDIES_OTHER" class="inputTxt-max" />
                    </li>
            </ul>
    </li>
    <li>5) PSYCHOMETRICS: 
            <ul>
                <li>
                    <input type="checkbox" name="PO0501C_IQ" />IQ
                    <input type="checkbox" name="PO0502C_PROJECTIVE" />Projective
                    <input type="checkbox" name="PO0503C_PERSONALITY" />Personality
                    <input type="checkbox" name="PO0504C_PSYCHO" />Psycho-Ed
                    <input type="checkbox" name="PO0505C_OTHER" />Other: <input type="text" name="PO0501T_PSYCHOMETRICS_OTHER" class="inputTxt-max" />
                    </li>
            </ul>
    </li>
    <li>6) DIET: 
            <ul>
                <li>
                    <input type="radio" name="PO0601R_ROUTINE" value="Routine" />Routine x 30 days
                    <input type="radio" name="PO0601R_ROUTINE" value="Restricted" />Restricted x 30 
                    days: <input type="text" name="PO0601T_DIET_OTHER" class="inputTxt-max" />
                    </li>
            </ul>
    </li>
    <li>7) PEDIATRICIAN TO EVALUATE FOR: 
            <ul>
                <li>
                    <input type="radio" name="PO0701R_HP" value="H&P" />H&P
                    <input type="radio" name="PO0701R_HP" value="Other" />Other: <input type="text" name="PO0701T_PEDIATRICIAN_OTHER" class="inputTxt-max" />
                    </li>
            </ul>
    </li>
    <li>8) NURSING: 
            <ul>
                <li>
                    <input type="radio" name="PO0801R_NURSING" value="PO0801R_DAILY_VS" />Daily VS 
                    <input type="radio" name="PO0801R_NURSING" value="PO0802R_DAILY_WT" />Daily WT x 3 then weekly 
                    <input type="radio" name="PO0801R_NURSING" value="PO0803R_MONITOR" />Monitor Encopresis/Enuresis
                    <input type="radio" name="PO0801R_NURSING" value="PO0804R_WOUND" />Wound Care
                    <input type="radio" name="PO0801R_NURSING" value="PO0805R_IO" />I&O
                    <input type="radio" name="PO0801R_NURSING" value="PO0806R_PURGING" />Purging
                    <input type="radio" name="PO0801R_NURSING" value="Other" />Other: <input type="text" name="PO0807R_OTHER" class="inputTxt-max" />
                    </li>
            </ul>
    </li>
    <li>9) SPECIAL OBSERVATIONS FOR <input type="radio" name="PO0901R_SPECIAL" value="24HOURS" />24 HOURS <input type="radio" name="PO0902R_72" value="72HOURS" />72 HOURS FOR: 
            <ul>
                <li>
                    <input type="radio" name="PO0901R_SPECIAL" value="Q" />Q 15 Min 
                    <input type="radio" name="PO0901R_SPECIAL" value="Line" />Line of Sight 
                    <input type="radio" name="PO0901R_SPECIAL" value="1:1" />1:1
                    <input type="radio" name="PO0901R_SPECIAL" value="At" />At all times 
                    <input type="radio" name="PO0901R_SPECIAL" value="While" />While Awake
                    </li>
            </ul>
            <ul>
                <li>
                    <span style=" padding-right: 40px">Self-Injury</span> 
                    <input type="checkbox" name="PO0901C_SUICIDAL" />Suicidal  
                    <input type="checkbox" name="PO0902C_SELF_MINIMAL" />Minimal 
                    <input type="checkbox" name="PO0903C_SELF_STRICAL" />Strict   
                    <input type="checkbox" name="PO0904C_SELF_HOSPITAL" />Hospital Clothing
                    </li>
                <li>
                    <span style=" padding-right: 40px">Combative/Dangerous</span>   
                    <input type="checkbox" name="PO0905C_COMBATIVE_HI" />HI   
                    <input type="checkbox" name="PO0906C_COMBATIVE_MINIMAL" />Minimal  
                    <input type="checkbox" name="PO0907C_COMBATIVE_STRICT" />Strict    
                    <input type="checkbox" name="PO0908C_COMBATIVE_PRIVATE" /> Private Room
                    </li>
                <li>
                    <span style=" padding-right: 40px">Sexual Acting Out</span>  
                    <input type="checkbox" name="PO0909C_SEXUAL" />Minimal   
                    <input type="checkbox" name="PO0910C_SEXUAL_PRIVATE" />Private Room
                    </li>
                <li>
                    <span style=" padding-right: 40px">Elopement</span>   
                    <input type="checkbox" name="PO0911C_ELOPEMENT" />  
                    </li>
		<li>
                    <span style=" padding-right: 40px">Contraband</span>    
                    <input type="checkbox" name="PO0912C_CONTRABAND_MINIMAL" />Minimal  
                    <input type="checkbox" name="PO0913C_CONTRABAND_STRICT" />Strict    
                    <input type="checkbox" name="PO0914C_CONTRABAND_HOSPITAL" />Hospital Clothing
                    </li>
                <li>
                    <span style=" padding-right: 40px">Unit Restriction</span>     
                    <input type="checkbox" name="PO0915C_UNIT_MINIMAL" />Minimal     
                    <input type="checkbox" name="PO0916C_UNIT_STRICT" />Strict
                    <input type="checkbox" name="PO0917C_PSYCHOSIS" />Psychosis   
                    <input type="checkbox" name="PO0919C_UNPREDICTABLE" />Unpredictable  
                    <input type="checkbox" name="PO0920C_EXPLOSIVE" />Explosive<br />
                    <input type="checkbox" name="PO0921C_PROPERTY" />Property Destruction 
                    <input type="checkbox" name="PO0922C_CRUELTY" />Cruelty to Animals 
                    <input type="checkbox" name="PO_9_Unit_Property" />Property Destruction
                    <input type="checkbox" name="PO0923C_SEIZURE" />Seizure/Fall 
                    <input type="checkbox" name="PO0924C_OTHER" />Other: 
                    <input type="text" name="PO0901T_SPECIAL_OTHER" class="inputTxt-max" />
                    </li>
            </ul>
    </li>
    <li>10) MEDICATION: 
        <ul>
            <li>A: <input type="text" name="PO1001T_MEDICATION_A" class="inputTxt-max" /></li>
            <li>B: <input type="text" name="PO1002T_MEDICATION_B" class="inputTxt-max" /></li>
            <li>C: <input type="text" name="PO1003T_MEDICATION_C" class="inputTxt-max" /></li>
            <li>D: <input type="text" name="PO1004T_MEDICATION_D" class="inputTxt-max" /></li>
            <li>E: <input type="text" name="PO1005T_MEDICATION_E" class="inputTxt-max" /></li>
            <li>Other: <input type="text" name="PO1006T_MEDICATION_OTHER" class="inputTxt-max" /></li> 
        </ul>
    </li>
    <li>11) MEDICATION CONSENT FOR: 
            <ul>
                <li>
                    <input type="checkbox" name="PO1101C_ANTIDEPRENSSANTS" />Antidepressants  
                    <input type="checkbox" name="PO1102C_MOOD" />Mood Stabilizers
                    <input type="checkbox" name="PO1103C_ANTIPSYCHOTICS" />Antipsychotics  
                    <input type="checkbox" name="PO1104C_ANXIOLYTICS" />Anxiolytics/Hypnotics 
                    <input type="checkbox" name="PO1105C_STIMULANTS" />Stimulants
                    <input type="checkbox" name="PO1106C_ANTICHOLINERGICS" />Anticholinergics
                    <input type="checkbox" name="PO1107C_OTHER" />Other: <input type="text" name="PO1101T_MEDICATION_OTHER" class="inputTxt-max" />
                    </li>
            </ul>
    </li>
    <li>12) [ ] OTHER MEDICATION/WORK UP OR INTERVENTIONS AS PER TREATING PHYSICIAN
        <ul>
                <li>
                    <table>
                            <tr>
                                <td><input type="text" name="PO1201T_LICENSED_NURSE" class="inputTxt-underline" /></td>
                                <td style=" padding-left: 60px"><input type="text" name="PO1202T_PHYSICIAN_LP" class="inputTxt-underline"/></td>
                            </tr>
                            <tr>
                                <td>LICENSED NURSE</td>
                                <td style=" padding-left: 60px">PHYSICIAN/LIP </td>
                            </tr>
                    </table>
                </li>
                <li>

                    <% Patient patient=ViewData["Patient"] as Patient;
                       if (patient == null) patient = new Patient();
                       string patientname = patient.FirstName + "," + patient.LastName + " " + patient.MiddleName;
                        %>
                    PATIENT NAME: <input type="text" name="PO0004T_PATIENT_NAME" readonly="readonly" class="inputTxt" value="<%=patientname %>"/> AGE: <input type="text" name="PO0005T_AGE" class="inputTxt-min" readonly="readonly" value="<%:patient.Age %>"/>
                    SEX: <input type="radio" name="PO0006R_SEX"  value="Male" <%=patient.Gender.Equals("Male") ? "checked='checked'" : string.Empty%> />Male<input type="radio" name="PO0006R_SEX" value="Female" <%=patient.Gender.Equals("Female") ? "checked='checked'" : string.Empty%>/>Female 
                    ROOM: <input type="text" name="PO0007T_ROOM" readonly="readonly" class="inputTxt-max" value="<%:patient.Address %>" />
                </li>
        </ul>
    </li>
</ul>