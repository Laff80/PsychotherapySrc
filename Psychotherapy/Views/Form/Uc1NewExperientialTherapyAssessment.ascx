<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<Insourcia.Psychotherapy.Model.FormData>" %>
<h3 class="title">
    RiverValley Behavioral Health<br />
    Experiential Therapy Assessment
</h3>
<h3>Leisure Inventory Questionnaire</h3>
<table>
        <tr>
             <th>Patient Name:</th>
             <td><input type="text" class="inputTxt" name="ETA_PatientName" /></td>
        </tr>
        <tr>
            <th>DOB:</th>
            <td><input type="text" class="inputTxt" name="ETA_DOB" value="<%=DateTime.Now.ToShortDateString() %>" /></td>
        </tr>
</table>

<ul class="beginItem">
    <li>1. What do you do in your free time? <br /><input type="text" class="inputTxt-max" name="ETA_1" /></li>
    <li>2. What do you like to do by yourself?<br /><input type="text" class="inputTxt-max" name="ETA_2" /></li>
    <li>3. What do you do with your family?<br /><input type="text" class="inputTxt-max" name="ETA_3" /> </li>
    <li>4. What is your favorite activity/game?<br /><input type="text" class="inputTxt-max" name="ETA_4" /> </li>
    <li>5. When are you proud of yourself?<br /><input type="text" class="inputTxt-max" name="ETA_5" /></li>
    <li>6. The happiest day of my life was <input type="text" class="inputTxt-max" name="ETA_6" /> </li>
    <li>7. I am best at <input type="text" class="inputTxt-max" name="ETA_7" /></li>
    <li>8. I wish my parents would <input type="text" class="inputTxt-max" name="ETA_8" /></li>
    <li>9. I am happy with the way I look. (0 not happy and 10 being totally happy)
        <ul>
             <li>0</li>
             <li>1</li>
             <li>2</li>
             <li>3</li>
             <li>4</li>
             <li>5</li>
             <li>6</li>
             <li>7</li>
             <li>8</li>
             <li>9</li>
             <li>10</li>
        </ul>
    </li>
    <li>10. What would you like to change about yourself?<br /><input type="text" class="inputTxt-max" name="ETA_10" /> </li>
    <li>11. I am angry or irritated when <input type="text" class="inputTxt-max" name="ETA_11" /></li>
    <li>12. Things that make me happy are <input type="text" class="inputTxt-max" name="ETA_12" /></li>
    <li>13. I am sad when <input type="text" class="inputTxt-max" name="ETA_13" /></li>
    <li>14. Where in your community (home) do you go for fun? <br /><input type="text" class="inputTxt-max" name="ETA_14" /></li>
    <li>15. What is something new you would like to learn to do? <br /><input type="text" class="inputTxt-max" name="ETA_15" /></li>
    <li>16. What personal goals would you like to achieve while you are here? <br /><input type="text" class="inputTxt-max" name="ETA_16" /></li>
    <li>17. If I had three wishes, I would wish for <input type="text" class="inputTxt-max" name="ETA_17" /></li>
    <li>18. What do you think you will be doing six months from now?<br /><input type="text" class="inputTxt-max" name="ETA_18" /> </li>
    <li>
         <table>
                   <tr>
                         <th>Comments: <input type="text" class="inputTxt-max" name="ETA_19_Comments" /></th>
                   </tr>
                   <tr>
                         <th>Age: <input type="text" class="inputTxt-min" name="ETA_19_Age" /></th>
                   </tr> 
                   <tr>
                         <th>Diagnosis upon admission: <input type="text" class="inputTxt-max" name="ETA_19_Diagnosis" /></th>
                   </tr>
                   <tr>
                         <th>Reason for admission: <input type="text" class="inputTxt-max" name="ETA_19_Reason" /></th>
                   </tr>
                   <tr>
                         <th>History of Socialization: <input type="text" class="inputTxt-max" name="ETA_19_History" /></th>
                   </tr>
                   <tr>
                          <th>Receptive Skills: <input type="text" class="inputTxt-max" name="ETA_19_Receptive" /></th>
                   </tr>
                   <tr>
                          <th>Leisure Interests: <input type="text" class="inputTxt-max" name="ETA_19_Interests" /></th>
                   </tr>
                   <tr>
                          <th>Leisure Barriers <input type="text" class="inputTxt-max" name="ETA_19_Barriers" /></th>
                   </tr>
         </table>
    </li>
    <li>Interaction with therapist:
         <ul>
             <li><table>
                <tr>
                     <td>1. Cooperative</td>
                     <td><input type="radio" name="ETA_InteractionWithTherapist_1" value="Yes" />Yes  <input type="radio" name="ETA_InteractionWithTherapist_1" value="No" />No</td>
                </tr>
                <tr>
                     <td>2. Receptive</td>
                     <td><input type="radio" name="ETA_InteractionWithTherapist_2" value="Yes" />Yes  <input type="radio" name="ETA_InteractionWithTherapist_2" value="No" />No</td>
                </tr>
                <tr>
                     <td>3. Manipulative</td>
                     <td><input type="radio" name="ETA_InteractionWithTherapist_3" value="Yes" />Yes  <input type="radio" name="ETA_InteractionWithTherapist_3" value="No" />No</td>
                </tr>
                <tr>
                     <td>4. Anxious</td>
                     <td><input type="radio" name="ETA_InteractionWithTherapist_4" value="Yes" />Yes  <input type="radio" name="ETA_InteractionWithTherapist_4" value="No" />No</td>
                </tr>
                <tr>
                     <td>5. Withdrawn</td>
                     <td><input type="radio" name="ETA_InteractionWithTherapist_5" value="Yes" />Yes  <input type="radio" name="ETA_InteractionWithTherapist_5" value="No" />No</td>
                </tr>
                <tr>
                     <td>6. Oppositional</td>
                     <td><input type="radio" name="ETA_InteractionWithTherapist_6" value="Yes" />Yes  <input type="radio" name="ETA_InteractionWithTherapist_6" value="No" />No</td>
                </tr>
             </table></li>
        </ul>
    </li>
    <li>Interaction with peers:
        <ul>
             <li><table>
                <tr>
                     <td>1. Passive</td>
                     <td><input type="radio" name="ETA_InteractionWithPeers_1" value="Yes" />Yes  <input type="radio" name="ETA_InteractionWithPeers_1" value="No" />No</td>
                </tr>
                <tr>
                     <td>2. Responsive</td>
                     <td><input type="radio" name="ETA_InteractionWithPeers_2" value="Yes" />Yes  <input type="radio" name="ETA_InteractionWithPeers_2" value="No" />No</td>
                </tr>
                <tr>
                     <td>3. Withdrawn</td>
                     <td><input type="radio" name="ETA_InteractionWithPeers_3" value="Yes" />Yes  <input type="radio" name="ETA_InteractionWithPeers_3" value="No" />No</td>
                </tr>
                <tr>
                     <td>4. Aggressive</td>
                     <td><input type="radio" name="ETA_InteractionWithPeers_4" value="Yes" />Yes  <input type="radio" name="ETA_InteractionWithPeers_4" value="No" />No</td>
                </tr>
                <tr>
                     <td>5. Assertive</td>
                     <td><input type="radio" name="ETA_InteractionWithPeers_5" value="Yes" />Yes  <input type="radio" name="ETA_InteractionWithPeers_5" value="No" />No</td>
                </tr>
                <tr>
                     <td>6. Dominant</td>
                     <td><input type="radio" name="ETA_InteractionWithPeers_6" value="Yes" />Yes  <input type="radio" name="ETA_InteractionWithPeers_6" value="No" />No</td>
                </tr>             
             </table></li>
        </ul>
    </li>
    <li>Affect:
        <ul>
             <li>Bright</li>
             <li>Flat</li>
             <li>Even</li>
             <li>Angry</li>
             <li>Sad</li>
             <li>Labile</li>
             <li>Comments: <input type="text" class="inputTxt-max" name="ETA_Affect_Comments" /></li>
        </ul>
    </li>
    <li>Motor Skills:
        <ul>
             <li>GROSS</li>
             <li>WFL</li>
             <li>Poor</li>
             <li>FINE</li>
             <li>WFL</li>
        </ul>
    </li>
    <li>
         <table>
                   <tr>
                         <th>Functional Strengths: <input type="text" class="inputTxt-max" name="ETA_24_FunctionalStrengths" /></th>
                   </tr>
                   <tr>
                         <th>Functional Deficits: <input type="text" class="inputTxt-max" name="ETA_24_FunctionalDeficits" /></th>
                   </tr> 
                   <tr>
                         <th>Recommendations: <input type="text" class="inputTxt-max" name="ETA_24_Recommendations" /></th>
                   </tr>
                   <tr>
                         <th>Preliminary Discharge Recommendations: <input type="text" class="inputTxt-max" name="ETA_24_Preliminary" /></th>
                   </tr>
                   <tr>
                         <th>Signature: <input type="text" class="inputTxt-max" name="ETA_24_Signature" /></th>
                   </tr>
                   <tr>
                          <th>Date: <input type="text" class="inputTxt datepicker3" name="ETA_24_Date" value="<%=DateTime.Now.ToShortDateString() %>" /></th>
                   </tr>
         </table>
    </li>
</ul>
