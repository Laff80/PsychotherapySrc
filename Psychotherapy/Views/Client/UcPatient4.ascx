<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<dynamic>" %>
<%@ Import Namespace="Insourcia.Common" %>
<span class="title_bold"><img src="../../Content/images/tree/tree_less.gif" id="img18" width="9" height="9" />&nbsp;&nbsp;XVIII.	SEXUAL HISTORY</span><a name="menu18" id="menu18"></a>

    <div id="ch18" class="con_padding">
      <span class="red_color">Have you ever been sexually active? <input name="YesNo18_01" type="radio" value="1" <%:"1".Equals(XMLBean.getValue("YesNo18_01")) ? "checked=\"checked\"" : "" %> />Yes<input name="YesNo18_01" type="radio" value="0" <%:"0".Equals(XMLBean.getValue("YesNo18_01")) ? "checked=\"checked\"" : "" %> />No</span>
      <div id="ch18_01" class="green_color con_padding <%:!"1".Equals(XMLBean.getValue("YesNo18_01")) ? "hide" : "" %>">
        <div>Are you currently sexually active? <input name="YesNo18_01_01" type="radio" value="1" <%:"1".Equals(XMLBean.getValue("YesNo18_01_01")) ? "checked=\"checked\"" : "" %> />Yes<input name="YesNo18_01_01" type="radio" value="0" <%:"0".Equals(XMLBean.getValue("YesNo18_01_01")) ? "checked=\"checked\"" : "" %> />No</div>
        <div>Do you have a history of sexually transmitted diseases? <input name="YesNo18_01_02" type="radio" value="1" <%:"1".Equals(XMLBean.getValue("YesNo18_01_02")) ? "checked=\"checked\"" : "" %> />Yes<input name="YesNo18_01_02" type="radio" value="0" <%:"0".Equals(XMLBean.getValue("YesNo18_01_02")) ? "checked=\"checked\"" : "" %> />No</div>
        <div>Are you aware of the "high risk" diseases associated with drinking and using drugs such as HIV, STD, and TB? <input name="YesNo18_01_03" type="radio" value="1" <%:"1".Equals(XMLBean.getValue("YesNo18_01_03")) ? "checked=\"checked\"" : "" %> />Yes<input name="YesNo18_01_03" type="radio" value="0" <%:"0".Equals(XMLBean.getValue("YesNo18_01_03")) ? "checked=\"checked\"" : "" %> />No</div>
        <div>How many sexual partners have you had in the past six months? <input name="ch18_01_04" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch18_01_04") %>" /></div>
        </div>
    </div><br/>
    <span class="title_bold"><img src="../../Content/images/tree/tree_less.gif" id="img19" width="9" height="9" />&nbsp;&nbsp;XIX.	MENTAL STATUS EXAM</span><a name="menu19" id="menu19"></a>
    <div id="ch19" class="con_padding">
                <div class="green_color con_padding">Appearance/grooming:
                    <div><input type="checkbox" value="1" name="ch19_01_01" <%:"1".Equals(XMLBean.getValue("ch19_01_01")) ? "checked=\"checked\"" : "" %>/> Neat</div> 
                    <div><input type="checkbox" value="1" name="ch19_01_02" <%:"1".Equals(XMLBean.getValue("ch19_01_02")) ? "checked=\"checked\"" : "" %>/> Unkempt</div> 
                    <div><input type="checkbox" value="1" name="ch19_01_03" <%:"1".Equals(XMLBean.getValue("ch19_01_03")) ? "checked=\"checked\"" : "" %>/> Good hygiene</div> 
                    <div><input type="checkbox" value="1" name="ch19_01_04" <%:"1".Equals(XMLBean.getValue("ch19_01_04")) ? "checked=\"checked\"" : "" %>/> Fair hygiene</div> 
                    <div><input type="checkbox" value="1" name="ch19_01_05" <%:"1".Equals(XMLBean.getValue("ch19_01_05")) ? "checked=\"checked\"" : "" %>/> Bad hygiene</div> 
                    <div><input type="checkbox" value="1" name="ch19_01_06" <%:"1".Equals(XMLBean.getValue("ch19_01_06")) ? "checked=\"checked\"" : "" %>/> Appropriate dress</div> 
                    <div><input type="checkbox" value="1" name="ch19_01_07" <%:"1".Equals(XMLBean.getValue("ch19_01_07")) ? "checked=\"checked\"" : "" %>/> Unusual/inappropriate dress</div> 
                    <div><input type="checkbox" value="1" name="ch19_01_08" <%:"1".Equals(XMLBean.getValue("ch19_01_08")) ? "checked=\"checked\"" : "" %>/> Recent significant weight gain</div> 
                    <div><input type="checkbox" value="1" name="ch19_01_09" <%:"1".Equals(XMLBean.getValue("ch19_01_09")) ? "checked=\"checked\"" : "" %>/> Recent significant weight loss</div> 
                    <div><input type="checkbox" value="1" name="ch19_01_10" <%:"1".Equals(XMLBean.getValue("ch19_01_10")) ? "checked=\"checked\"" : "" %>/> Other<span id="ch19_01_10" class="<%:!"1".Equals(XMLBean.getValue("ch19_01_10")) ? "hide" : "" %>">
                           <input name="ch19_01_10_01" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch19_01_10_01") %>" />
                    </span></div>
                    </div>
                <div class="green_color con_padding">Interaction quality:
                    <div><input type="checkbox" value="1" name="ch19_02_01" <%:"1".Equals(XMLBean.getValue("ch19_02_01")) ? "checked=\"checked\"" : "" %>/> Friendly</div> 
                    <div><input type="checkbox" value="1" name="ch19_02_02" <%:"1".Equals(XMLBean.getValue("ch19_02_02")) ? "checked=\"checked\"" : "" %>/> Cooperative</div> 
                    <div><input type="checkbox" value="1" name="ch19_02_03" <%:"1".Equals(XMLBean.getValue("ch19_02_03")) ? "checked=\"checked\"" : "" %>/> Hostile</div> 
                    <div><input type="checkbox" value="1" name="ch19_02_04" <%:"1".Equals(XMLBean.getValue("ch19_02_04")) ? "checked=\"checked\"" : "" %>/> Belligerent</div> 
                    <div><input type="checkbox" value="1" name="ch19_02_05" <%:"1".Equals(XMLBean.getValue("ch19_02_05")) ? "checked=\"checked\"" : "" %>/> Guarded</div> 
                    <div><input type="checkbox" value="1" name="ch19_02_06" <%:"1".Equals(XMLBean.getValue("ch19_02_06")) ? "checked=\"checked\"" : "" %>/> Evasive</div> 
                    <div><input type="checkbox" value="1" name="ch19_02_07" <%:"1".Equals(XMLBean.getValue("ch19_02_07")) ? "checked=\"checked\"" : "" %>/> Flippant</div> 
                    <div><input type="checkbox" value="1" name="ch19_02_08" <%:"1".Equals(XMLBean.getValue("ch19_02_08")) ? "checked=\"checked\"" : "" %>/> Detached</div> 
                    <div><input type="checkbox" value="1" name="ch19_02_09" <%:"1".Equals(XMLBean.getValue("ch19_02_09")) ? "checked=\"checked\"" : "" %>/> Passive</div> 
                    <div><input type="checkbox" value="1" name="ch19_02_10" <%:"1".Equals(XMLBean.getValue("ch19_02_10")) ? "checked=\"checked\"" : "" %>/> Other<span id="ch19_02_10" class="<%:!"1".Equals(XMLBean.getValue("ch19_02_10")) ? "hide" : "" %>">
                           <input name="ch19_02_10_01" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch19_02_10_01") %>"/>
                    </span></div>
                </div>
                <div class="green_color con_padding">Attention/concentration:
                    <div><input type="checkbox" value="1" name="ch19_03_01" <%:"1".Equals(XMLBean.getValue("ch19_03_01")) ? "checked=\"checked\"" : "" %>/> Alert</div> 
                    <div><input type="checkbox" value="1" name="ch19_03_02" <%:"1".Equals(XMLBean.getValue("ch19_03_02")) ? "checked=\"checked\"" : "" %>/> Attentive</div> 
                    <div><input type="checkbox" value="1" name="ch19_03_03" <%:"1".Equals(XMLBean.getValue("ch19_03_03")) ? "checked=\"checked\"" : "" %>/> Focused</div> 
                    <div><input type="checkbox" value="1" name="ch19_03_04" <%:"1".Equals(XMLBean.getValue("ch19_03_04")) ? "checked=\"checked\"" : "" %>/> Bored</div> 
                    <div><input type="checkbox" value="1" name="ch19_03_05" <%:"1".Equals(XMLBean.getValue("ch19_03_05")) ? "checked=\"checked\"" : "" %>/> Confused</div> 
                    <div><input type="checkbox" value="1" name="ch19_03_06" <%:"1".Equals(XMLBean.getValue("ch19_03_06")) ? "checked=\"checked\"" : "" %>/> Listless</div> 
                    <div><input type="checkbox" value="1" name="ch19_03_07" <%:"1".Equals(XMLBean.getValue("ch19_03_07")) ? "checked=\"checked\"" : "" %>/> Distractible</div> 
                    <div><input type="checkbox" value="1" name="ch19_03_08" <%:"1".Equals(XMLBean.getValue("ch19_03_08")) ? "checked=\"checked\"" : "" %>/> Needed redirection</div> 
                    <div><input type="checkbox" value="1" name="ch19_03_09" <%:"1".Equals(XMLBean.getValue("ch19_03_09")) ? "checked=\"checked\"" : "" %>/> Other<span id="ch19_03_09" class="<%:!"1".Equals(XMLBean.getValue("ch19_03_09")) ? "hide" : "" %>">
                           <input name="ch19_03_09_01" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch19_03_09_01") %>"/>
                    </span></div>
                </div>
                <div class="green_color con_padding">Psychomotor activity:
                    <div><input type="checkbox" value="1" name="ch19_04_01" <%:"1".Equals(XMLBean.getValue("ch19_04_01")) ? "checked=\"checked\"" : "" %>/> Normal</div> 
                    <div><input type="checkbox" value="1" name="ch19_04_02" <%:"1".Equals(XMLBean.getValue("ch19_04_02")) ? "checked=\"checked\"" : "" %>/> Overactive</div> 
                    <div><input type="checkbox" value="1" name="ch19_04_03" <%:"1".Equals(XMLBean.getValue("ch19_04_03")) ? "checked=\"checked\"" : "" %>/> Slowed</div> 
                    <div><input type="checkbox" value="1" name="ch19_04_04" <%:"1".Equals(XMLBean.getValue("ch19_04_04")) ? "checked=\"checked\"" : "" %>/> Fidgety</div> 
                    <div><input type="checkbox" value="1" name="ch19_04_05" <%:"1".Equals(XMLBean.getValue("ch19_04_05")) ? "checked=\"checked\"" : "" %>/> Facial tics/twitches</div>  
                    <div><input type="checkbox" value="1" name="ch19_04_06" <%:"1".Equals(XMLBean.getValue("ch19_04_06")) ? "checked=\"checked\"" : "" %>/> Other<span id="ch19_04_06" class="<%:!"1".Equals(XMLBean.getValue("ch19_04_06")) ? "hide" : "" %>">
                           <input name="ch19_04_06_01" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch19_04_06_01") %>"/>
                    </span></div>
                </div>
                <div class="green_color con_padding">Observed affect:
                    <div><input type="checkbox" value="1" name="ch19_05_01" <%:"1".Equals(XMLBean.getValue("ch19_05_01")) ? "checked=\"checked\"" : "" %>/> Full range</div> 
                    <div><input type="checkbox" value="1" name="ch19_05_02" <%:"1".Equals(XMLBean.getValue("ch19_05_02")) ? "checked=\"checked\"" : "" %>/> Flat</div> 
                    <div><input type="checkbox" value="1" name="ch19_05_03" <%:"1".Equals(XMLBean.getValue("ch19_05_03")) ? "checked=\"checked\"" : "" %>/> Appropriate</div> 
                    <div><input type="checkbox" value="1" name="ch19_05_04" <%:"1".Equals(XMLBean.getValue("ch19_05_04")) ? "checked=\"checked\"" : "" %>/> Labile</div> 
                    <div><input type="checkbox" value="1" name="ch19_05_05" <%:"1".Equals(XMLBean.getValue("ch19_05_05")) ? "checked=\"checked\"" : "" %>/> Blunted</div> 
                    <div><input type="checkbox" value="1" name="ch19_05_06" <%:"1".Equals(XMLBean.getValue("ch19_05_06")) ? "checked=\"checked\"" : "" %>/> Constricted</div> 
                    <div><input type="checkbox" value="1" name="ch19_05_07" <%:"1".Equals(XMLBean.getValue("ch19_05_07")) ? "checked=\"checked\"" : "" %>/> Intense/reactive</div> 
                    <div><input type="checkbox" value="1" name="ch19_05_08" <%:"1".Equals(XMLBean.getValue("ch19_05_08")) ? "checked=\"checked\"" : "" %>/> Incongruent</div> 
                    <div><input type="checkbox" value="1" name="ch19_05_09" <%:"1".Equals(XMLBean.getValue("ch19_05_09")) ? "checked=\"checked\"" : "" %>/> Other<span id="ch19_05_09" class="<%:!"1".Equals(XMLBean.getValue("ch19_05_09")) ? "hide" : "" %>">
                           <input name="ch19_05_09_01" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch19_05_09_01") %>"/>
                    </span></div>
                </div>
                <div class="green_color con_padding">Report of mood:
                    <div><input type="checkbox" value="1" name="ch19_06_01" <%:"1".Equals(XMLBean.getValue("ch19_06_01")) ? "checked=\"checked\"" : "" %>/> Euthymic</div> 
                    <div><input type="checkbox" value="1" name="ch19_06_02" <%:"1".Equals(XMLBean.getValue("ch19_06_02")) ? "checked=\"checked\"" : "" %>/> Depressed</div> 
                    <div><input type="checkbox" value="1" name="ch19_06_03" <%:"1".Equals(XMLBean.getValue("ch19_06_03")) ? "checked=\"checked\"" : "" %>/> Anxious</div> 
                    <div><input type="checkbox" value="1" name="ch19_06_04" <%:"1".Equals(XMLBean.getValue("ch19_06_04")) ? "checked=\"checked\"" : "" %>/> Irritable</div> 
                    <div><input type="checkbox" value="1" name="ch19_06_05" <%:"1".Equals(XMLBean.getValue("ch19_06_05")) ? "checked=\"checked\"" : "" %>/> Angry</div> 
                    <div><input type="checkbox" value="1" name="ch19_06_06" <%:"1".Equals(XMLBean.getValue("ch19_06_06")) ? "checked=\"checked\"" : "" %>/> Euphoric</div> 
                    <div><input type="checkbox" value="1" name="ch19_06_07" <%:"1".Equals(XMLBean.getValue("ch19_06_07")) ? "checked=\"checked\"" : "" %>/> Other<span id="ch19_06_07" class="<%:!"1".Equals(XMLBean.getValue("ch19_06_07")) ? "hide" : "" %>">
                           <input name="ch19_06_07_01" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch19_06_07_01") %>"/>
                    </span></div>
                </div>
                <div class="green_color con_padding">Perceptions/thought content:
                    <div><input type="checkbox" value="1" name="ch19_07_01" <%:"1".Equals(XMLBean.getValue("ch19_07_01")) ? "checked=\"checked\"" : "" %>/> Hallucinations</div> 
                    <div><input type="checkbox" value="1" name="ch19_07_02" <%:"1".Equals(XMLBean.getValue("ch19_07_02")) ? "checked=\"checked\"" : "" %>/> Delusions</div> 
                    <div><input type="checkbox" value="1" name="ch19_07_03" <%:"1".Equals(XMLBean.getValue("ch19_07_03")) ? "checked=\"checked\"" : "" %>/> Circumstantiality</div> 
                    <div><input type="checkbox" value="1" name="ch19_07_04" <%:"1".Equals(XMLBean.getValue("ch19_07_04")) ? "checked=\"checked\"" : "" %>/> Tangentiality</div> 
                    <div><input type="checkbox" value="1" name="ch19_07_05" <%:"1".Equals(XMLBean.getValue("ch19_07_05")) ? "checked=\"checked\"" : "" %>/> Paucity</div> 
                    <div><input type="checkbox" value="1" name="ch19_07_06" <%:"1".Equals(XMLBean.getValue("ch19_07_06")) ? "checked=\"checked\"" : "" %>/> Illogical</div> 
                    <div><input type="checkbox" value="1" name="ch19_07_07" <%:"1".Equals(XMLBean.getValue("ch19_07_07")) ? "checked=\"checked\"" : "" %>/> Grandiose</div> 
                    <div><input type="checkbox" value="1" name="ch19_07_08" <%:"1".Equals(XMLBean.getValue("ch19_07_08")) ? "checked=\"checked\"" : "" %>/> Suspicious</div>
                    <div><input type="checkbox" value="1" name="ch19_07_09" <%:"1".Equals(XMLBean.getValue("ch19_07_09")) ? "checked=\"checked\"" : "" %>/> Other<span id="ch19_07_09" class="<%:!"1".Equals(XMLBean.getValue("ch19_07_09")) ? "hide" : "" %>">
                           <input name="ch19_07_09_01" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch19_07_09_01") %>"/>
                    </span></div>
               </div>
                <div class="green_color con_padding">Speech:
                    <div><input type="checkbox" value="1" name="ch19_08_01" <%:"1".Equals(XMLBean.getValue("ch19_08_01")) ? "checked=\"checked\"" : "" %>/> Clear</div> 
                    <div><input type="checkbox" value="1" name="ch19_08_02" <%:"1".Equals(XMLBean.getValue("ch19_08_02")) ? "checked=\"checked\"" : "" %>/> Coherent</div> 
                    <div><input type="checkbox" value="1" name="ch19_08_03" <%:"1".Equals(XMLBean.getValue("ch19_08_03")) ? "checked=\"checked\"" : "" %>/> Relevant</div> 
                    <div><input type="checkbox" value="1" name="ch19_08_04" <%:"1".Equals(XMLBean.getValue("ch19_08_04")) ? "checked=\"checked\"" : "" %>/> Loud</div> 
                    <div><input type="checkbox" value="1" name="ch19_08_05" <%:"1".Equals(XMLBean.getValue("ch19_08_05")) ? "checked=\"checked\"" : "" %>/> Verbose</div> 
                    <div><input type="checkbox" value="1" name="ch19_08_06" <%:"1".Equals(XMLBean.getValue("ch19_08_06")) ? "checked=\"checked\"" : "" %>/> Soft</div> 
                    <div><input type="checkbox" value="1" name="ch19_08_07" <%:"1".Equals(XMLBean.getValue("ch19_08_07")) ? "checked=\"checked\"" : "" %>/> Incoherent</div> 
                    <div><input type="checkbox" value="1" name="ch19_08_08" <%:"1".Equals(XMLBean.getValue("ch19_08_08")) ? "checked=\"checked\"" : "" %>/> Pressured</div> 
                    <div><input type="checkbox" value="1" name="ch19_08_09" <%:"1".Equals(XMLBean.getValue("ch19_08_09")) ? "checked=\"checked\"" : "" %>/> Impoverished</div>
                    <div><input type="checkbox" value="1" name="ch19_08_10" <%:"1".Equals(XMLBean.getValue("ch19_08_10")) ? "checked=\"checked\"" : "" %>/> Word salad</div>
                    <div><input type="checkbox" value="1" name="ch19_08_11" <%:"1".Equals(XMLBean.getValue("ch19_08_11")) ? "checked=\"checked\"" : "" %>/> Neologisms</div>
                    <div><input type="checkbox" value="1" name="ch19_08_12" <%:"1".Equals(XMLBean.getValue("ch19_08_12")) ? "checked=\"checked\"" : "" %>/> Unusual content</div>
                    <div><input type="checkbox" value="1" name="ch19_08_13" <%:"1".Equals(XMLBean.getValue("ch19_08_13")) ? "checked=\"checked\"" : "" %>/> Other<span id="ch19_08_13" class="<%:!"1".Equals(XMLBean.getValue("ch19_08_13")) ? "hide" : "" %>">
                           <input name="ch19_08_13_01" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch19_08_13_01") %>"/>
                    </span></div>
                </div>
                <div class="green_color con_padding">Reliability:
                    <div><input type="checkbox" value="1" name="ch19_09_01" <%:"1".Equals(XMLBean.getValue("ch19_09_01")) ? "checked=\"checked\"" : "" %>/> Reliable/honest</div> 
                    <div><input type="checkbox" value="1" name="ch19_09_02" <%:"1".Equals(XMLBean.getValue("ch19_09_02")) ? "checked=\"checked\"" : "" %>/> Unable to establish</div> 
                    <div><input type="checkbox" value="1" name="ch19_09_03" <%:"1".Equals(XMLBean.getValue("ch19_09_03")) ? "checked=\"checked\"" : "" %>/> Questionable</div> 
                    <div><input type="checkbox" value="1" name="ch19_09_04" <%:"1".Equals(XMLBean.getValue("ch19_09_04")) ? "checked=\"checked\"" : "" %>/> Unreliable</div> 
                    <div><input type="checkbox" value="1" name="ch19_09_05" <%:"1".Equals(XMLBean.getValue("ch19_09_05")) ? "checked=\"checked\"" : "" %>/> Other<span id="ch19_09_05" class="<%:!"1".Equals(XMLBean.getValue("ch19_09_05")) ? "hide" : "" %>">
                           <input name="ch19_09_05_01" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch19_09_05_01") %>"/>
                    </span></div>
                </div>
                <div class="green_color con_padding">Orientation:
                    <div><input type="checkbox" value="1" name="ch19_10_01" <%:"1".Equals(XMLBean.getValue("ch19_10_01")) ? "checked=\"checked\"" : "" %>/> Person</div> 
                    <div><input type="checkbox" value="1" name="ch19_10_02" <%:"1".Equals(XMLBean.getValue("ch19_10_02")) ? "checked=\"checked\"" : "" %>/> Place</div> 
                    <div><input type="checkbox" value="1" name="ch19_10_03" <%:"1".Equals(XMLBean.getValue("ch19_10_03")) ? "checked=\"checked\"" : "" %>/> Time</div> 
                    <div><input type="checkbox" value="1" name="ch19_10_04" <%:"1".Equals(XMLBean.getValue("ch19_10_04")) ? "checked=\"checked\"" : "" %>/> Date</div> 
                    <div><input type="checkbox" value="1" name="ch19_10_05" <%:"1".Equals(XMLBean.getValue("ch19_10_05")) ? "checked=\"checked\"" : "" %>/> Season</div>
               </div>
                <div class="green_color con_padding">Memory:
                    <div><input type="checkbox" value="1" name="ch19_11_01" <%:"1".Equals(XMLBean.getValue("ch19_11_01")) ? "checked=\"checked\"" : "" %>/> Immediate intact</div> 
                    <div><input type="checkbox" value="1" name="ch19_11_02" <%:"1".Equals(XMLBean.getValue("ch19_11_02")) ? "checked=\"checked\"" : "" %>/> Recent intact</div> 
                    <div><input type="checkbox" value="1" name="ch19_11_03" <%:"1".Equals(XMLBean.getValue("ch19_11_03")) ? "checked=\"checked\"" : "" %>/> Remote intact</div> 
                    <div><input type="checkbox" value="1" name="ch19_11_04" <%:"1".Equals(XMLBean.getValue("ch19_11_04")) ? "checked=\"checked\"" : "" %>/> Deficit of immediate recall</div> 
                    <div><input type="checkbox" value="1" name="ch19_11_05" <%:"1".Equals(XMLBean.getValue("ch19_11_05")) ? "checked=\"checked\"" : "" %>/> Deficit of recent recall</div> 
                    <div><input type="checkbox" value="1" name="ch19_11_06" <%:"1".Equals(XMLBean.getValue("ch19_11_06")) ? "checked=\"checked\"" : "" %>/> Deficit of remote recall</div> 
                    <div><input type="checkbox" value="1" name="ch19_11_07" <%:"1".Equals(XMLBean.getValue("ch19_11_07")) ? "checked=\"checked\"" : "" %>/> Other<span id="ch19_11_07" class="<%:!"1".Equals(XMLBean.getValue("ch19_11_07")) ? "hide" : "" %>">
                           <input name="ch19_11_07_01" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch19_11_07_01") %>"/>
                    </span></div>
                    <div><input type="checkbox" value="1" name="ch19_11_08" <%:"1".Equals(XMLBean.getValue("ch19_11_08")) ? "checked=\"checked\"" : "" %>/> Mode of testing used by interviewer<span id="ch19_11_08" class="hide">
                            <input name="ch19_11_08_01" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch19_11_08_01") %>"/>
                    </span></div>
                </div> 
                <div class="green_color con_padding">Intelligence:
                    <div><input type="checkbox" value="1" name="ch19_12_01" <%:"1".Equals(XMLBean.getValue("ch19_12_01")) ? "checked=\"checked\"" : "" %>/> Below average</div> 
                    <div><input type="checkbox" value="1" name="ch19_12_02" <%:"1".Equals(XMLBean.getValue("ch19_12_02")) ? "checked=\"checked\"" : "" %>/> Average</div> 
                    <div><input type="checkbox" value="1" name="ch19_12_03" <%:"1".Equals(XMLBean.getValue("ch19_12_03")) ? "checked=\"checked\"" : "" %>/> Above average</div> 
                    <div><input type="checkbox" value="1" name="ch19_12_04" <%:"1".Equals(XMLBean.getValue("ch19_12_04")) ? "checked=\"checked\"" : "" %>/> Unable to determine</div> 
                    <div><input type="checkbox" value="1" name="ch19_12_05" <%:"1".Equals(XMLBean.getValue("ch19_12_05")) ? "checked=\"checked\"" : "" %>/> Other<span id="ch19_12_05" class="<%:!"1".Equals(XMLBean.getValue("ch19_12_05")) ? "hide" : "" %>">
                           <input name="ch19_12_05_01" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch19_12_05_01") %>"/>
                    </span></div>
                </div>
                <div class="green_color con_padding">Insight:
                    <div><input type="checkbox" value="1" name="ch19_13_01" <%:"1".Equals(XMLBean.getValue("ch19_13_01")) ? "checked=\"checked\"" : "" %>/> Understands nature of problem</div> 
                    <div><input type="checkbox" value="1" name="ch19_13_02" <%:"1".Equals(XMLBean.getValue("ch19_13_02")) ? "checked=\"checked\"" : "" %>/> In denial</div> 
                    <div><input type="checkbox" value="1" name="ch19_13_03" <%:"1".Equals(XMLBean.getValue("ch19_13_03")) ? "checked=\"checked\"" : "" %>/> Blames others</div> 
                    <div><input type="checkbox" value="1" name="ch19_13_04" <%:"1".Equals(XMLBean.getValue("ch19_13_04")) ? "checked=\"checked\"" : "" %>/> Unaware of difficulty</div> 
                    <div><input type="checkbox" value="1" name="ch19_13_05" <%:"1".Equals(XMLBean.getValue("ch19_13_05")) ? "checked=\"checked\"" : "" %>/> Other<span id="ch19_13_05" class="<%:!"1".Equals(XMLBean.getValue("ch19_13_05")) ? "hide" : "" %>">
                           <input name="ch19_13_05_01" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch19_13_05_01") %>"/>
                    </span></div>
                </div>
                <div class="green_color con_padding">Judgment:
                    <div><input type="checkbox" value="1" name="ch19_14_01" <%:"1".Equals(XMLBean.getValue("ch19_14_01")) ? "checked=\"checked\"" : "" %>/> Appreciates consequences of behavior</div> 
                    <div><input type="checkbox" value="1" name="ch19_14_02" <%:"1".Equals(XMLBean.getValue("ch19_14_02")) ? "checked=\"checked\"" : "" %>/> Marginal</div> 
                    <div><input type="checkbox" value="1" name="ch19_14_03" <%:"1".Equals(XMLBean.getValue("ch19_14_03")) ? "checked=\"checked\"" : "" %>/> Doesn't understand consequences</div> 
                    <div><input type="checkbox" value="1" name="ch19_14_04" <%:"1".Equals(XMLBean.getValue("ch19_14_04")) ? "checked=\"checked\"" : "" %>/> Poor</div> 
                    <div><input type="checkbox" value="1" name="ch19_14_05" <%:"1".Equals(XMLBean.getValue("ch19_14_05")) ? "checked=\"checked\"" : "" %>/> Intact</div>
                    <div><input type="checkbox" value="1" name="ch19_14_06" <%:"1".Equals(XMLBean.getValue("ch19_14_06")) ? "checked=\"checked\"" : "" %>/> Other<span id="ch19_14_06" class="<%:!"1".Equals(XMLBean.getValue("ch19_14_06")) ? "hide" : "" %>">
                           <input name="ch19_14_06_01" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch19_14_06_01") %>"/>
                    </span></div>
                </div>
     </div>
     <br />
    <span class="title_bold"><img src="../../Content/images/tree/tree_less.gif" id="img20" width="9" height="9" />&nbsp;&nbsp;XX.	CLINICAL IMPRESSION</span><a name="menu20" id="menu20"></a>
    <div id="ch20" class="con_padding">
      <span class="red_color">(DSM-IV diagnosis) Note any diagnosis to be ruled out (do not describe, use numeric code)<br/><br/>
        <p>AXIS I:   <input name="ch20_01" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch20_01") %>" /></p>
        <p>AXIS I:   <input name="ch20_02" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch20_02") %>" /></p>
        <p>AXIS I:   <input name="ch20_03" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch20_03") %>" /></p>
        <p>AXIS I:   <input name="ch20_04" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch20_04") %>" /></p>
        <p>AXIS I:   <input name="ch20_05" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch20_05") %>" /></p>
        <p>AXIS I:   <input name="ch20_06" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch20_06") %>" /></p>
        <p>AXIS I:   <input name="ch20_07" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch20_07") %>" /></p>
        <p>AXIS I:   <input name="ch20_08" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch20_08") %>" /></p>
        <br/>
        <p>AXIS II: <input name="ch20_09" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch20_09") %>" /></p>
        <p>AXIS II: <input name="ch20_10" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch20_10") %>" /></p>
        <p>AXIS II: <input name="ch20_11" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch20_11") %>" /></p>
        <br/>
        <p>AXIS III: <input name="ch20_12" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch20_12") %>" /></p>
        <p>AXIS III: <input name="ch20_13" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch20_13") %>" /></p>
        <p>AXIS III: <input name="ch20_14" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch20_14") %>" /></p>
        <p>AXIS III: <input name="ch20_15" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch20_15") %>" /></p>
        <p>AXIS III: <input name="ch20_16" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch20_16") %>" /></p>
        
        <p>AXIS IV:
          <div id="ch20_17" class="green_color con_padding">
            <div><input name="ch20_17_01" type="checkbox" value="1" <%:"1".Equals(XMLBean.getValue("ch20_17_01")) ? "checked=\"checked\"" : "" %> />Problem with primary support group 
              <div id="ch20_17_01" class="blue_color con_padding <%:!"1".Equals(XMLBean.getValue("ch20_17_01")) ? "hide" : "" %>">Specify <input name="ch20_17_01_01" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch20_17_01_01") %>" /></div>
            </div>
            <div><input name="ch20_17_02" type="checkbox" value="1" <%:"1".Equals(XMLBean.getValue("ch20_17_02")) ? "checked=\"checked\"" : "" %> />Problem related to social environment 
              <div id="ch20_17_02" class="blue_color con_padding <%:!"1".Equals(XMLBean.getValue("ch20_17_02")) ? "hide" : "" %>">Specify <input name="ch20_17_02_01" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch20_17_02_01") %>" /></div>
            </div>
            <div><input name="ch20_17_03" type="checkbox" value="1" <%:"1".Equals(XMLBean.getValue("ch20_17_03")) ? "checked=\"checked\"" : "" %> />Educational problem
              <div id="ch20_17_03" class="blue_color con_padding <%:!"1".Equals(XMLBean.getValue("ch20_17_03")) ? "hide" : "" %>">Specify <input name="ch20_17_03_01" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch20_17_03_01") %>" /></div>
            </div>
            <div><input name="ch20_17_04" type="checkbox" value="1" <%:"1".Equals(XMLBean.getValue("ch20_17_04")) ? "checked=\"checked\"" : "" %> />Occupational problem
              <div id="ch20_17_04" class="blue_color con_padding <%:!"1".Equals(XMLBean.getValue("ch20_17_04")) ? "hide" : "" %>">Specify <input name="ch20_17_04_01" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch20_17_04_01") %>" /></div>
            </div>
            <div><input name="ch20_17_05" type="checkbox" value="1" <%:"1".Equals(XMLBean.getValue("ch20_17_05")) ? "checked=\"checked\"" : "" %> />Housing problem:  
              <div id="ch20_17_05" class="blue_color con_padding <%:!"1".Equals(XMLBean.getValue("ch20_17_05")) ? "hide" : "" %>">Specify <input name="ch20_17_05_01" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch20_17_05_01") %>" /></div>
            </div>
            <div><input name="ch20_17_06" type="checkbox" value="1" <%:"1".Equals(XMLBean.getValue("ch20_17_06")) ? "checked=\"checked\"" : "" %> />Economic problem
              <div id="ch20_17_06" class="blue_color con_padding <%:!"1".Equals(XMLBean.getValue("ch20_17_06")) ? "hide" : "" %>">Specify <input name="ch20_17_06_01" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch20_17_06_01") %>" /></div>
            </div>
            <div><input name="ch20_17_07" type="checkbox" value="1" <%:"1".Equals(XMLBean.getValue("ch20_17_07")) ? "checked=\"checked\"" : "" %> />Problem with access to health care: 
              <div id="ch20_17_07" class="blue_color con_padding <%:!"1".Equals(XMLBean.getValue("ch20_17_07")) ? "hide" : "" %>">Specify <input name="ch20_17_07_01" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch20_17_07_01") %>" /></div>
            </div>
            <div><input name="ch20_17_08" type="checkbox" value="1" <%:"1".Equals(XMLBean.getValue("ch20_17_08")) ? "checked=\"checked\"" : "" %> />Problem related to interaction with legal system
              <div id="ch20_17_08" class="blue_color con_padding <%:!"1".Equals(XMLBean.getValue("ch20_17_08")) ? "hide" : "" %>">Specify <input name="ch20_17_08_01" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch20_17_08_01") %>" /></div>
            </div>
            <div><input name="ch20_17_09" type="checkbox" value="1" <%:"1".Equals(XMLBean.getValue("ch20_17_09")) ? "checked=\"checked\"" : "" %> />Other psychosocial and environmental problem
              <div id="ch20_17_09" class="blue_color con_padding <%:!"1".Equals(XMLBean.getValue("ch20_17_09")) ? "hide" : "" %>">Specify <input name="ch20_17_09_01" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch20_17_09_01") %>" /></div>
            </div>
          </div>
        </p><br/>
        <p>AXIS V:  Initial GAF <input name="ch20_18_01" type="text" class="inputTxt" value="<%=XMLBean.getValue("ch20_18_01") %>" /> Highest GAF past year <input name="ch20_18_02" type="text" class="inputTxt" value="<%=XMLBean.getValue("ch20_18_02") %>" /> Current GAF <input name="ch20_18_03" type="text" class="inputTxt" value="<%=XMLBean.getValue("ch20_18_03") %>" /></p>
        </span>
    </div><br/>
    <span class="title_bold"><img src="../../Content/images/tree/tree_less.gif" id="img21" width="9" height="9" />&nbsp;&nbsp;XXI.	RECENT STRESSFUL LIFE SITUATIONS</span><a name="menu21" id="menu21"></a>
    <div id="ch21" class="con_padding">
      <span class="red_color">Please check any of the following that have occurred in the last two (2) years: </span>
      <div class="green_color">
        <div><input name="ch21_01_01" type="checkbox" value="1" <%:"1".Equals(XMLBean.getValue("ch21_01_01")) ? "checked=\"checked\"" : "" %> />Recently married</div>
        <div><input name="ch21_01_02" type="checkbox" value="1" <%:"1".Equals(XMLBean.getValue("ch21_01_02")) ? "checked=\"checked\"" : "" %> />Recently divorce</div>
        <div><input name="ch21_01_03" type="checkbox" value="1" <%:"1".Equals(XMLBean.getValue("ch21_01_03")) ? "checked=\"checked\"" : "" %> />Legal issues</div>
        <div><input name="ch21_01_04" type="checkbox" value="1" <%:"1".Equals(XMLBean.getValue("ch21_01_04")) ? "checked=\"checked\"" : "" %> />Engagement</div>
        <div><input name="ch21_01_05" type="checkbox" value="1" <%:"1".Equals(XMLBean.getValue("ch21_01_05")) ? "checked=\"checked\"" : "" %> />Separation</div>
        <div><input name="ch21_01_06" type="checkbox" value="1" <%:"1".Equals(XMLBean.getValue("ch21_01_06")) ? "checked=\"checked\"" : "" %> />Break-up of important relationship</div>
        <div><input name="ch21_01_07" type="checkbox" value="1" <%:"1".Equals(XMLBean.getValue("ch21_01_07")) ? "checked=\"checked\"" : "" %> />Child left home</div>
        <div><input name="ch21_01_08" type="checkbox" value="1" <%:"1".Equals(XMLBean.getValue("ch21_01_08")) ? "checked=\"checked\"" : "" %> />Serious argument</div>
        <div><input name="ch21_01_09" type="checkbox" value="1" <%:"1".Equals(XMLBean.getValue("ch21_01_09")) ? "checked=\"checked\"" : "" %> />Personal injury/illness</div>
        <div><input name="ch21_01_10" type="checkbox" value="1" <%:"1".Equals(XMLBean.getValue("ch21_01_10")) ? "checked=\"checked\"" : "" %> />Bad health</div>
        <div><input name="ch21_01_11" type="checkbox" value="1" <%:"1".Equals(XMLBean.getValue("ch21_01_11")) ? "checked=\"checked\"" : "" %> />Death of a loved one</div>
        <div><input name="ch21_01_12" type="checkbox" value="1" <%:"1".Equals(XMLBean.getValue("ch21_01_12")) ? "checked=\"checked\"" : "" %> />Retired/lost job</div>
        <div><input name="ch21_01_13" type="checkbox" value="1" <%:"1".Equals(XMLBean.getValue("ch21_01_13")) ? "checked=\"checked\"" : "" %> />Negative behavior of family member</div>
        <div><input name="ch21_01_14" type="checkbox" value="1" <%:"1".Equals(XMLBean.getValue("ch21_01_14")) ? "checked=\"checked\"" : "" %> />Significant changes at work/school</div>
        <div><input name="ch21_01_15" type="checkbox" value="1" <%:"1".Equals(XMLBean.getValue("ch21_01_15")) ? "checked=\"checked\"" : "" %> />Moved</div>
        <div><input name="ch21_01_16" type="checkbox" value="1" <%:"1".Equals(XMLBean.getValue("ch21_01_16")) ? "checked=\"checked\"" : "" %> />In too much debt</div>
        <div><input name="ch21_01_17" type="checkbox" value="1" <%:"1".Equals(XMLBean.getValue("ch21_01_17")) ? "checked=\"checked\"" : "" %> />Sexual issues</div>
        <div><input name="ch21_01_18" type="checkbox" value="1" <%:"1".Equals(XMLBean.getValue("ch21_01_18")) ? "checked=\"checked\"" : "" %> />Physical/sexual/emotional abuse</div>
        <div><input name="ch21_01_19" type="checkbox" value="1" <%:"1".Equals(XMLBean.getValue("ch21_01_19")) ? "checked=\"checked\"" : "" %> />Homelessness</div>
        <div><input name="ch21_01_21" type="checkbox" value="1" <%:"1".Equals(XMLBean.getValue("ch21_01_21")) ? "checked=\"checked\"" : "" %> />Birth of child</div>
        <div><input name="ch21_01_22" type="checkbox" value="1" <%:"1".Equals(XMLBean.getValue("ch21_01_22")) ? "checked=\"checked\"" : "" %> />Hospitalizations</div>
        <div><input name="ch21_01_23" type="checkbox" value="1" <%:"1".Equals(XMLBean.getValue("ch21_01_23")) ? "checked=\"checked\"" : "" %> />Other <span id="ch21_01_23" class="<%:!"1".Equals(XMLBean.getValue("ch21_01_23")) ? "hide" : "" %>">&nbsp;&nbsp;<input name="ch21_01_23_01" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch21_01_23_01") %>" /></span></div>
        </div>
    </div><br/>
    <span class="title_bold"><img src="../../Content/images/tree/tree_less.gif" id="img22" width="9" height="9" />&nbsp;&nbsp;XXII.	CLIENT STRENGTHS (identified by clinician)</span><a name="menu22" id="menu22"></a>
    <div id="ch22" class="con_padding">
      <span class="red_color">Client Strengths: </span>	
      <div class="green_color">			
        <div><input name="ch22_01_01" type="checkbox" value="1" <%:"1".Equals(XMLBean.getValue("ch22_01_01")) ? "checked=\"checked\"" : "" %> />Average/above functioning</div>
        <div><input name="ch22_01_02" type="checkbox" value="1" <%:"1".Equals(XMLBean.getValue("ch22_01_02")) ? "checked=\"checked\"" : "" %> />Has transportation</div>
        <div><input name="ch22_01_03" type="checkbox" value="1" <%:"1".Equals(XMLBean.getValue("ch22_01_03")) ? "checked=\"checked\"" : "" %> />Family/other support</div>
        <div><input name="ch22_01_04" type="checkbox" value="1" <%:"1".Equals(XMLBean.getValue("ch22_01_04")) ? "checked=\"checked\"" : "" %> />Good physical health</div>
        <div><input name="ch22_01_05" type="checkbox" value="1" <%:"1".Equals(XMLBean.getValue("ch22_01_05")) ? "checked=\"checked\"" : "" %> />Maintains employment/school responsibilities</div>
        <div><input name="ch22_01_06" type="checkbox" value="1" <%:"1".Equals(XMLBean.getValue("ch22_01_06")) ? "checked=\"checked\"" : "" %> />Good self care</div>
        <div><input name="ch22_01_07" type="checkbox" value="1" <%:"1".Equals(XMLBean.getValue("ch22_01_07")) ? "checked=\"checked\"" : "" %> />Good insight re: problems</div>
        <div><input name="ch22_01_08" type="checkbox" value="1" <%:"1".Equals(XMLBean.getValue("ch22_01_08")) ? "checked=\"checked\"" : "" %> />Good self esteem</div>
        <div><input name="ch22_01_09" type="checkbox" value="1" <%:"1".Equals(XMLBean.getValue("ch22_01_09")) ? "checked=\"checked\"" : "" %> />Good verbal skills</div>
        <div><input name="ch22_01_10" type="checkbox" value="1" <%:"1".Equals(XMLBean.getValue("ch22_01_10")) ? "checked=\"checked\"" : "" %> />Cooperative/motivated</div>
        <div><input name="ch22_01_11" type="checkbox" value="1" <%:"1".Equals(XMLBean.getValue("ch22_01_11")) ? "checked=\"checked\"" : "" %> />Other <span id="ch22_01_11" class="<%:!"1".Equals(XMLBean.getValue("ch22_01_11")) ? "hide" : "" %>">&nbsp;&nbsp;<input name="ch22_01_11_01" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch22_01_11_01") %>" /></span></div>
        </div><br/>
      <span class="red_color">Barriers to treatment: </span>
      <div class="green_color">
        <div><input name="ch22_02_01" type="checkbox" value="1" <%:"1".Equals(XMLBean.getValue("ch22_02_01")) ? "checked=\"checked\"" : "" %> />None</div>
        <div><input name="ch22_02_02" type="checkbox" value="1" <%:"1".Equals(XMLBean.getValue("ch22_02_02")) ? "checked=\"checked\"" : "" %> />Family</div>
        <div><input name="ch22_02_03" type="checkbox" value="1" <%:"1".Equals(XMLBean.getValue("ch22_02_03")) ? "checked=\"checked\"" : "" %> />Work/school interference</div>
        <div><input name="ch22_02_04" type="checkbox" value="1" <%:"1".Equals(XMLBean.getValue("ch22_02_04")) ? "checked=\"checked\"" : "" %> />Spouse interference</div>
        <div><input name="ch22_02_05" type="checkbox" value="1" <%:"1".Equals(XMLBean.getValue("ch22_02_05")) ? "checked=\"checked\"" : "" %> />Transportation problems</div>
        <div><input name="ch22_02_06" type="checkbox" value="1" <%:"1".Equals(XMLBean.getValue("ch22_02_01")) ? "checked=\"checked\"" : "" %> />Health problems</div>
        <div><input name="ch22_02_07" type="checkbox" value="1" <%:"1".Equals(XMLBean.getValue("ch22_02_07")) ? "checked=\"checked\"" : "" %> />Financial problems</div>
        <div><input name="ch22_02_08" type="checkbox" value="1" <%:"1".Equals(XMLBean.getValue("ch22_02_08")) ? "checked=\"checked\"" : "" %> />Below average functioning</div>
        <div><input name="ch22_02_09" type="checkbox" value="1" <%:"1".Equals(XMLBean.getValue("ch22_02_09")) ? "checked=\"checked\"" : "" %> />Limited insight</div>
        <div><input name="ch22_02_10" type="checkbox" value="1" <%:"1".Equals(XMLBean.getValue("ch22_02_10")) ? "checked=\"checked\"" : "" %> />Poor judgment</div>
        <div><input name="ch22_02_11" type="checkbox" value="1" <%:"1".Equals(XMLBean.getValue("ch22_02_11")) ? "checked=\"checked\"" : "" %> />Low self esteem</div>
        <div><input name="ch22_02_12" type="checkbox" value="1" <%:"1".Equals(XMLBean.getValue("ch22_02_12")) ? "checked=\"checked\"" : "" %> />Low frustration tolerance</div>
        <div><input name="ch22_02_13" type="checkbox" value="1" <%:"1".Equals(XMLBean.getValue("ch22_02_13")) ? "checked=\"checked\"" : "" %> />Other <span id="ch22_02_13" class="<%:!"1".Equals(XMLBean.getValue("ch22_02_13")) ? "hide" : "" %>">&nbsp;&nbsp;<input name="ch22_02_13_01" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch22_02_13_01") %>" /></span></div>
        </div>
    </div><br/>
    <span class="title_bold"><img src="../../Content/images/tree/tree_less.gif" id="img23" width="9" height="9" />&nbsp;&nbsp;XXIII.	TREATMENT MODALITY/ISSUES</span><a name="menu23" id="menu23"></a>
    <div id="ch23" class="con_padding">
      <span class="red_color">TREATMENT MODALITY/ISSUES</span>
      <div class="green_color">
        <div><input name="ch23_01_01" type="checkbox" value="1" <%:"1".Equals(XMLBean.getValue("ch23_01_01")) ? "checked=\"checked\"" : "" %> />Individual</div>
        <div><input name="ch23_01_02" type="checkbox" value="1" <%:"1".Equals(XMLBean.getValue("ch23_01_02")) ? "checked=\"checked\"" : "" %> />Family </div>
        <div><input name="ch23_01_03" type="checkbox" value="1" <%:"1".Equals(XMLBean.getValue("ch23_01_03")) ? "checked=\"checked\"" : "" %> />Group  </div>
        <div><input name="ch23_01_04" type="checkbox" value="1" <%:"1".Equals(XMLBean.getValue("ch23_01_04")) ? "checked=\"checked\"" : "" %> />Marital </div>
        <div><input name="ch23_01_05" type="checkbox" value="1" <%:"1".Equals(XMLBean.getValue("ch23_01_05")) ? "checked=\"checked\"" : "" %> />Collateral</div>
        <div><input name="ch23_01_06" type="checkbox" value="1" <%:"1".Equals(XMLBean.getValue("ch23_01_06")) ? "checked=\"checked\"" : "" %> />Medication</div>
        <div><input name="ch23_01_07" type="checkbox" value="1" <%:"1".Equals(XMLBean.getValue("ch23_01_07")) ? "checked=\"checked\"" : "" %> />Other<span id="ch23_01_07"
                            class="<%:!"1".Equals(XMLBean.getValue("ch23_01_07")) ? "hide" : "" %>">&nbsp;&nbsp;<input name="ch23_01_07_01" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch23_01_07_01") %>" /></span></div>
        </div>
    </div><br/>
    <span class="title_bold"><img src="../../Content/images/tree/tree_less.gif" id="img24" width="9" height="9" />&nbsp;&nbsp;XXIV.	DISCHARGE</span><a name="menu24" id="menu24"></a>
    <div id="ch24" class="con_padding">
      <span class="red_color">CRITERIA FOR DISCHARGE:
            <select id="ch24_01_01" name="ch24_01_01">
                <option value="Achievement" <%:"Achievement".Equals(XMLBean.getValue("ch24_01_01")) ? "selected=\"selected\"" : "" %>>Achievement of patient's stated goals</option>
                <option value="Treatment" <%:"Treatment".Equals(XMLBean.getValue("ch24_01_01")) ? "selected=\"selected\"" : "" %>>Treatment termination by mutual agreement between patient and clinician</option>
                <option value="Other" <%:"Other".Equals(XMLBean.getValue("ch24_01_01")) ? "selected=\"selected\"" : "" %>>Other</option>
            </select>
            <span id="ch24_01_01_hide" class="<%:!"Other".Equals(XMLBean.getValue("ch24_01_01")) ? "hide" : "" %>"><br />&nbsp;&nbsp;Other:
                <input name="ch24_01_01_01" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch24_01_01_01") %>" /></span> 
      </span>
      <br/>
      <br/>
      <span class="red_color">DISCHARGE PLANS:
        <select id="ch24_02" name="ch24_02">
          <option value="inpatient" <%:"inpatient".Equals(XMLBean.getValue("ch24_02")) ? "selected=\"selected\"" : "" %>>Transfer to inpatient</option>
          <option value="outpatient" <%:"outpatient".Equals(XMLBean.getValue("ch24_02")) ? "selected=\"selected\"" : "" %>>Transfer to outpatient</option>
          <option value="residential" <%:"residential".Equals(XMLBean.getValue("ch24_02")) ? "selected=\"selected\"" : "" %>>Transfer to residential</option>
          <option value="current" <%:"current".Equals(XMLBean.getValue("ch24_02")) ? "selected=\"selected\"" : "" %>>Discharge to current home setting</option>
          <option value="different" <%:"different".Equals(XMLBean.getValue("ch24_02")) ? "selected=\"selected\"" : "" %>>Discharge to different home setting</option>
          <option value="Other" <%:"Other".Equals(XMLBean.getValue("ch24_02")) ? "selected=\"selected\"" : "" %>>Other</option>
          </select>
        <span id="ch24_02_hide" class="<%:!"Other".Equals(XMLBean.getValue("ch24_02")) ? "hide" : "" %>">&nbsp;&nbsp;Other: <input name="ch24_02_01" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch24_02_01") %>" /></span>
        </span>
    </div><br/><br/>
    <div class="title_bold">INTERPRETIVE SUMMARY/FORMULATION (Treatment teams'comprehensive, holistic view of the client and what problems/needs to address in treatment based on all psychiatric, medical, and psychosocial and psychological assessments.)<a name="menu25" id="menu25"></a><br/><br/>
       <textarea name="ch25_01" cols="100" rows="8" class="textarea"><%=XMLBean.getValue("ch25_01") %></textarea>
    </div><br />
    <div class="title_bold">What problems/needs will not be addressed in treatment:<br/><br/>
       <textarea name="ch26_01" cols="100" rows="4" class="textarea"><%=XMLBean.getValue("ch26_01") %></textarea>
    </div><br/>
