<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<dynamic>" %>
<%@ Import Namespace="Insourcia.Common" %>
<span class="title_bold"><img src="../../Content/images/tree/tree_less.gif" id="img01" width="9" height="9" />&nbsp;&nbsp;I.	CURRENT SYMPTOMS</span><a name="menu1" id="menu1"></a><br/>
    <div id="ch01" class="con_padding">
    <span id="ch01_01_02" class="green_color">Have you been thinking of death or suicide or have you been thinking of harming others?
         <input name="YesNo_01_02" type="radio" value="1" <%:XMLBean.getValue("YesNo_01_02").Equals("1") ? "checked='checked'":"" %> />Yes
         <input name="YesNo_01_02" type="radio" value="0" <%:XMLBean.getValue("YesNo_01_02").Equals("0") ? "checked='checked'":"" %> />No
         <br/>
        <span id="ch01_01_02_01" class="blue_color con_padding <%:XMLBean.getValue("YesNo_01_02").Equals("0") ? "hide":"" %> act">
            Have you thought of a plan for committing suicide or homicide?
            <input name="YesNo_01_02_01" type="radio" value="1" <%:XMLBean.getValue("YesNo_01_02_01").Equals("1") ? "checked='checked'":"" %> />Yes
            <input name="YesNo_01_02_01" type="radio" value="0" <%:XMLBean.getValue("YesNo_01_02_01").Equals("0") ? "checked='checked'":"" %> />No
            <br/>
            <span id="ch01_01_02_01_01" class="purple_color con_padding2 <%:XMLBean.getValue("YesNo_01_02_01").Equals("0") ? "hide":"" %> act">
                Have you acted on that plan?
                <input name="YesNo_01_02_01_01" type="radio" value="1" <%:"1".Equals(XMLBean.getValue("YesNo_01_02_01_01")) ? "checked='checked'":"" %> />Yes
                <input name="YesNo_01_02_01_01" type="radio" value="0" <%:"0".Equals(XMLBean.getValue("YesNo_01_02_01_01")) ? "checked='checked'":"" %> />No
                <br/>
                <span id="ch01_01_02_01_01_01" class="yellow_color con_padding3 <%:"0".Equals(XMLBean.getValue("YesNo_01_02_01_01")) ? "hide":"" %> act">
                    What was the result of those actions? 
                    <input id="txt01_01_02_01_01_01" name="ch01_01_02_01_01_01" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_01_02_01_01_01")%>" /></span>
            </span>
        </span>
        </span>
        <br/>
         <span id="ch01_01_03" class="green_color">
            Has your sleep been different from your normal pattern over this same period?
            <input name="YesNo_01_03" type="radio" value="1" <%:XMLBean.getValue("YesNo_01_03").Equals("1") ? "checked='checked'":"" %> />Yes
            <input name="YesNo_01_03" type="radio" value="0" <%:XMLBean.getValue("YesNo_01_03").Equals("0") ? "checked='checked'":"" %>/>No
            <br/>
        <span id="ch01_01_03_01" class="blue_color con_padding <%:XMLBean.getValue("YesNo_01_03").Equals("0") ? "hide":"" %> act">
              Describe your current sleeping pattern(s): 
              <input id="ch01_01_03_01" name="ch01_01_03_01" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_01_03_01") %>" /><br />
              <span style="padding-left:38px">
              Describe your typical sleeping pattern(s):
              <input id="ch01_01_03_02" name="ch01_01_03_02" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_01_03_02") %>" />
              </span>
        </span>
        </span>
        <br/>
      <span class="red_color">Have you been feeling any of the following (or has anyone observed or described you as):  Depressed, hopeless, without interest, without energy, without motivation?
      <br />
      <input name="YesNo_01" type="radio" value="1" <%:XMLBean.getValue("YesNo_01").Equals("1") ? "checked='checked'":"" %> />Yes
      <input name="YesNo_01" type="radio" value="0" <%:XMLBean.getValue("YesNo_01").Equals("0") ? "checked='checked'":"" %> />No
      </span>
      <br/>
      <div id="ch01_01" class="con_padding <%:XMLBean.getValue("YesNo_01").Equals("0") ? "hide":"" %>">
        <span id="ch01_01_01" class="green_color">Have these feelings lasted at least 2 weeks?
            <input name="YesNo_01_01" type="radio" value="1" <%:XMLBean.getValue("YesNo_01_01").Equals("1") ? "checked='checked'":"" %>/>Yes
            <input name="YesNo_01_01" type="radio" value="0" <%:XMLBean.getValue("YesNo_01_01").Equals("0") ? "checked='checked'":"" %> />No        
            <br/>
            <span id="ch01_01_01_01" class="blue_color con_padding <%:XMLBean.getValue("YesNo_01_01").Equals("0") ? "hide":"" %> act">
                Have they lasted at least 6 months and been present most days, most of the day?
                <input name="YesNo_01_01_01" type="radio" value="1" <%:XMLBean.getValue("YesNo_01_01_01").Equals("1") ? "checked='checked'":"" %> />Yes
                <input name="YesNo_01_01_01" type="radio" value="0" <%:"0".Equals(XMLBean.getValue("YesNo_01_01_01")) ? "checked='checked'":"" %> />No
            </span>
        </span>
        <br/>
        <span id="ch01_01_04" class="green_color">Have you been experiencing any chronic physical problems during this same period?
            <input name="YesNo_01_04" type="radio" value="1" <%:XMLBean.getValue("YesNo_01_04").Equals("1") ? "checked='checked'":"" %> />Yes
            <input name="YesNo_01_04" type="radio" value="0" <%:XMLBean.getValue("YesNo_01_04").Equals("0") ? "checked='checked'":"" %> />No        
            <br/>
            <span id="ch01_01_04_01" class="blue_color con_padding <%:XMLBean.getValue("YesNo_01_04").Equals("0") ? "hide":"" %> act">
                Describe these difficulties: <input id="ch01_01_04_01" name="ch01_01_04_01" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_01_04_01") %>" />
            </span>
        </span>
        <br/>
        <span id="ch01_01_05" class="green_color">Did you experience a traumatic event or negative situation around the time that these feelings first started  (e.g. loss of a loved one, divorce, trauma, disabling illness, job loss, significant financial loss, legal difficulties)?
            <input name="YesNo_01_05" type="radio" value="1" <%:XMLBean.getValue("YesNo_01_05").Equals("1") ? "checked='checked'":"" %> />Yes
            <input name="YesNo_01_05" type="radio" value="0" <%:XMLBean.getValue("YesNo_01_05").Equals("0") ? "checked='checked'":"" %> />No
            <br/>
            <span id="ch01_01_05_01" class="blue_color con_padding <%:XMLBean.getValue("YesNo_01_05").Equals("0") ? "hide":"" %> act">
                Describe what has occurred: <input id="ch01_01_05_01" name="ch01_01_05_01" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_01_05_01") %>" />
            </span>
        </span>
        <br/>
        <span id="ch01_01_06" class="green_color">
            Has there been any significant drug or alcohol use during this time period or during the time immediately preceding this time period?<br />           
            <input name="YesNo_01_06" type="radio" value="1" <%:XMLBean.getValue("YesNo_01_06").Equals("1") ? "checked='checked'":"" %> />Yes
            <input name="YesNo_01_06" type="radio" value="0" <%:XMLBean.getValue("YesNo_01_06").Equals("0") ? "checked='checked'":"" %> />No
            <br/>
            <span id="ch01_01_06_01" class="blue_color con_padding <%:XMLBean.getValue("YesNo_01_06").Equals("0") ? "hide":"" %> act">
                [offer to go to substance abuse cluster questions at this time.  If declined, clinician will need to return to this decision at some time during the assessment]
            </span>
        </span>
        <br/>
      </div>
      <br/>
      <span class="red_color">
            Have you been feeling/experiencing any of the following (or has anyone observed or described you as):  Unusually up mood or manic, needing much less sleep than normal, taking unusual risks, more preoccupied with religion, feeling of invincibility, hypersexual, unusually irresponsible, extremely agitated, unusually disorganized and scattered in your thinking?
            <input name="YesNo_02" type="radio" value="1" <%:XMLBean.getValue("YesNo_02").Equals("1") ? "checked='checked'":"" %> />Yes
            <input name="YesNo_02" type="radio" value="0" <%:XMLBean.getValue("YesNo_02").Equals("0") ? "checked='checked'":"" %> />No
       </span><br/>
      <div id="ch01_02" class="con_padding <%:XMLBean.getValue("YesNo_02").Equals("0") ? "hide":"" %>">
        <span id="ch01_02_01" class="green_color">
            How long have these symptoms or feelings been going on? 
            <input id="txt01_02_01" name="ch01_02_01" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_02_01") %>" />
        </span>
        <br/>
       <span id="ch01_02_02" class="green_color">Have you been thinking of death or suicide? 
            <input name="YesNo_02_02" type="radio" value="1" <%:XMLBean.getValue("YesNo_02_02").Equals("1") ? "checked='checked'":"" %> />Yes
            <input name="YesNo_02_02" type="radio" value="0" <%:XMLBean.getValue("YesNo_02_02").Equals("0") ? "checked='checked'":"" %> />No
            <br/>
            <span id="ch01_02_02_01" class="blue_color con_padding <%:XMLBean.getValue("YesNo_02_02").Equals("0") ? "hide":"" %> act">
                Have you thought of a plan for committing suicide? 
                <input name="YesNo_02_02_01" type="radio" value="1" <%:XMLBean.getValue("YesNo_02_02_01").Equals("1") ? "checked='checked'":"" %> />Yes
                <input name="YesNo_02_02_01" type="radio" value="0" <%:XMLBean.getValue("YesNo_02_02_01").Equals("0") ? "checked='checked'":"" %> />No
                <br/>
                <span id="ch01_02_02_01_01" class="purple_color con_padding2 <%:XMLBean.getValue("YesNo_02_02_01").Equals("0") ? "hide":"" %> act">Have you acted on that plan? <input name="YesNo_02_02_01_01" type="radio" value="1" />Yes<input name="YesNo_02_02_01_01" type="radio" value="0" checked="checked" />No<br/>
                	<span id="ch01_02_02_01_01_01" class="yellow_color con_padding3 <%:XMLBean.getValue("YesNo_02_02_01_01").Equals("0") ? "hide":"" %> act">What was the result of those actions? <input id="ch01_02_02_01_01_01" name="ch01_02_02_01_01_01" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_02_02_01_01_01") %>" /></span><br/>
                </span>
            </span>
        </span><br/>
        <span id="ch01_02_03" class="green_color">Has your sleep been different from your normal pattern over this same period? <input name="YesNo_02_03" type="radio" value="1" <%:XMLBean.getValue("YesNo_02_03").Equals("1") ? "checked='checked'":"" %> />Yes<input name="YesNo_02_03" type="radio" value="0" <%:XMLBean.getValue("YesNo_02_03").Equals("0") ? "checked='checked'":"" %> />No</span><br/>
        	<span id="ch01_02_03_01" class="blue_color con_padding <%:XMLBean.getValue("YesNo_02_03").Equals("0") ? "hide":"" %> act">
                  Describe your current sleeping pattern(s): 
                  <input id="ch01_02_03_01" name="ch01_02_03_01" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_02_03_01") %>" /><br />
                  <span style="padding-left:38px">
                  Describe your typical sleeping pattern(s):
                  <input id="ch01_02_03_02" name="ch01_02_03_02" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_02_03_02") %>" />
                  </span>
            </span><br/>
        <span id="ch01_02_04" class="green_color">Has there been any significant drug or alcohol use during this time period or during the time immediately preceding this time period? 
        <br />
        <input name="YesNo_02_04" type="radio" value="1" <%:XMLBean.getValue("YesNo_02_04").Equals("1") ? "checked='checked'":"" %> />Yes<input name="YesNo_02_04" type="radio" value="0" <%:XMLBean.getValue("YesNo_02_04").Equals("0") ? "checked='checked'":"" %> />No</span><br/>
        	<span id="ch01_02_04_01" class="blue_color con_padding <%:XMLBean.getValue("YesNo_02_04").Equals("0") ? "hide":"" %> act">[offer to go to substance abuse cluster questions at this time.  If declined, clinician will need to return to this decision at some time during the assessment]</span><br/>
        <span id="ch01_02_05" class="green_color">Have you made any significant life decisions during this time period (e.g. ended or began a relationship, spent an unusually large amount of money on a major purchase, moved, or began/ended a job/educational experience)? <input name="YesNo_02_05" type="radio" value="1" <%:XMLBean.getValue("YesNo_02_05").Equals("1") ? "checked='checked'":"" %> />Yes<input name="YesNo_02_05" type="radio" value="0" <%:XMLBean.getValue("YesNo_02_05").Equals("0") ? "checked='checked'":"" %>/>No</span><br/>
        	<span id="ch01_02_05_01" class="blue_color con_padding <%:XMLBean.getValue("YesNo_02_05").Equals("0") ? "hide":"" %> act">Describe this/these decisions: <input id="ch01_02_05_01" name="ch01_02_05_01" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_02_05_01") %>" /></span><br/>
        <span id="ch01_02_06" class="green_color">Have there been any legal problems during this time period? <input name="YesNo_02_06" type="radio" value="1" <%:XMLBean.getValue("YesNo_02_06").Equals("1") ? "checked='checked'":"" %> />Yes<input name="YesNo_02_06" type="radio" value="0" <%:XMLBean.getValue("YesNo_02_06").Equals("0") ? "checked='checked'":"" %> />No</span><br/>
        	<span id="ch01_02_06_01" class="blue_color con_padding <%:XMLBean.getValue("YesNo_02_06").Equals("0") ? "hide":"" %> act">Describe the problem(s): <input id="ch01_02_06_01" name="ch01_02_06_01" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_02_06_01") %>" /> </span><br/>
        </div>
        <br/>
        <span class="red_color">Have you ever used drugs, or prescription medication that was not prescribed for you, or used prescribed medication in a manner other than what your physician prescribed? <input name="YesNo_03" type="radio" value="1" <%:XMLBean.getValue("YesNo_03").Equals("1") ? "checked='checked'":"" %> />Yes<input name="YesNo_03" type="radio" value="0" <%:XMLBean.getValue("YesNo_03").Equals("0") ? "checked='checked'":"" %> />No</span><br/>
        <div id="ch01_03" class="con_padding <%:XMLBean.getValue("YesNo_03").Equals("0") ? "hide":"" %>">

        <div id="ch01_03_02"  class="green_color">Check all use that applies:<br/>
        	<div class="green_color con_padding"><input name="ch01_03_02_01" type="checkbox" value="1" <%:"1".Equals(XMLBean.getValue("ch01_03_02_01")) ? "checked='checked'":"" %> />Alcohol
            <div id="ch01_03_02_01"  class="green_color con_padding <%:!"1".Equals(XMLBean.getValue("ch01_03_02_01")) ? "hide":"" %>">
               <div class="blue_color"><input name="ch01_03_02_01_01" type="checkbox" value="1" <%:"1".Equals(XMLBean.getValue("ch01_03_02_01_01")) ? "checked='checked'":"" %> />Beer
               		<div id="ch01_03_02_01_01" class="purple_color con_padding <%:!"1".Equals(XMLBean.getValue("ch01_03_02_01_01")) ? "hide":"" %>">
                    <p>Age of first use <input id="ch01_03_02_01_01_01" name="ch01_03_02_01_01_01" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_01_01_01") %>" /></p>
                    <p>Age of continuous/regular use <input id="ch01_03_02_01_01_02" name="ch01_03_02_01_01_02" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_01_01_02") %>" /></p>
                    <p>Usual amount when using <input id="ch01_03_02_01_01_03" name="ch01_03_02_01_01_03" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_01_01_03") %>" /></p>
                    <p>How often used <input id="ch01_03_02_01_01_04" name="ch01_03_02_01_01_04" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_01_01_04") %>" /></p>
                    <p>Date of last use <input id="ch01_03_02_01_01_05" name="ch01_03_02_01_01_05" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_01_01_05") %>" /></p>
                    <p>Most ever used <input id="ch01_03_02_01_01_06" name="ch01_03_02_01_01_06" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_01_01_06") %>" /></p>
                    </div>
                </div>
              <div class="blue_color"><input name="ch01_03_02_01_02" type="checkbox" value="1" <%:"1".Equals(XMLBean.getValue("ch01_03_02_01_02")) ? "checked='checked'":"" %> />Wine<br/>
                        <div id="ch01_03_02_01_02" class="purple_color con_padding <%:!"1".Equals(XMLBean.getValue("ch01_03_02_01_02")) ? "hide":"" %>">
                        <p>Age of first use <input name="ch01_03_02_01_02_01" type="text" class="inputTxt-max" id="ch01_03_02_01_02_01" value="<%=XMLBean.getValue("ch01_03_02_01_02_01") %>" /></p>
                        <p>Age of continuous/regular use <input name="ch01_03_02_01_02_02" type="text" class="inputTxt-max" id="ch01_03_02_01_02_02" value="<%=XMLBean.getValue("ch01_03_02_01_02_02") %>" /></p>
                        <p>Usual amount when using <input name="ch01_03_02_01_02_03" type="text" class="inputTxt-max" id="ch01_03_02_01_02_03" value="<%=XMLBean.getValue("ch01_03_02_01_02_03") %>" /></p>
                        <p>How often used <input name="ch01_03_02_01_02_04" type="text" class="inputTxt-max" id="ch01_03_02_01_02_04" value="<%=XMLBean.getValue("ch01_03_02_01_02_04") %>" /></p>
                        <p>Date of last use <input name="ch01_03_02_01_02_05" type="text" class="inputTxt-max" id="ch01_03_02_01_02_05" value="<%=XMLBean.getValue("ch01_03_02_01_02_05") %>" /></p>
                        <p>Most ever used <input name="ch01_03_02_01_02_06" type="text" class="inputTxt-max" id="ch01_03_02_01_02_06" value="<%=XMLBean.getValue("ch01_03_02_01_02_06") %>" /></p>
                        </div>
                </div>
              <div class="blue_color"><input name="ch01_03_02_01_03" type="checkbox" value="1" <%:"1".Equals(XMLBean.getValue("ch01_03_02_01_03")) ? "checked='checked'":"" %> />Distilled liquor<br/>
                        <div id="ch01_03_02_01_03" class="purple_color con_padding <%:!"1".Equals(XMLBean.getValue("ch01_03_02_01_03")) ? "hide":"" %>">
                        <p>Age of first use <input name="ch01_03_02_01_03_01" type="text" class="inputTxt-max" id="ch01_03_02_01_03_01" value="<%=XMLBean.getValue("ch01_03_02_01_03_01") %>" /></p>
                        <p>Age of continuous/regular use <input name="ch01_03_02_01_03_02" type="text" class="inputTxt-max" id="ch01_03_02_01_03_02" value="<%=XMLBean.getValue("ch01_03_02_01_03_02") %>" /></p>
                        <p>Usual amount when using <input name="ch01_03_02_01_03_03" type="text" class="inputTxt-max" id="ch01_03_02_01_03_03" value="<%=XMLBean.getValue("ch01_03_02_01_03_03") %>" /></p>
                        <p>How often used <input name="ch01_03_02_01_03_04" type="text" class="inputTxt-max" id="ch01_03_02_01_03_04" value="<%=XMLBean.getValue("ch01_03_02_01_03_04") %>" /></p>
                        <p>Date of last use <input name="ch01_03_02_01_03_05" type="text" class="inputTxt-max" id="ch01_03_02_01_03_05" value="<%=XMLBean.getValue("ch01_03_02_01_03_05") %>" /></p>
                        <p>Most ever used <input name="ch01_03_02_01_03_06" type="text" class="inputTxt-max" id="ch01_03_02_01_03_06" value="<%=XMLBean.getValue("ch01_03_02_01_03_06") %>" /></p>
                        </div>
                </div>
              <div class="blue_color"><input name="ch01_03_02_01_04" type="checkbox" value="1" <%:"1".Equals(XMLBean.getValue("ch01_03_02_01_04")) ? "checked='checked'":"" %> />Other<br/>
                        <div id="ch01_03_02_01_04" class="purple_color con_padding <%:!"1".Equals(XMLBean.getValue("ch01_03_02_01_04")) ? "hide":"" %>">
                        <p>Age of first use <input name="ch01_03_02_01_04_01" type="text" class="inputTxt-max" id="ch01_03_02_01_04_01" value="<%=XMLBean.getValue("ch01_03_02_01_04_01") %>" /></p>
                        <p>Age of continuous/regular use <input name="ch01_03_02_01_04_02" type="text" class="inputTxt-max" id="ch01_03_02_01_04_02" value="<%=XMLBean.getValue("ch01_03_02_01_04_02") %>" /></p>
                        <p>Usual amount when using <input name="ch01_03_02_01_04_03" type="text" class="inputTxt-max" id="ch01_03_02_01_04_03" value="<%=XMLBean.getValue("ch01_03_02_01_04_03") %>" /></p>
                        <p>How often used <input name="ch01_03_02_01_04_04" type="text" class="inputTxt-max" id="ch01_03_02_01_04_04" value="<%=XMLBean.getValue("ch01_03_02_01_04_04") %>" /></p>
                        <p>Date of last use <input name="ch01_03_02_01_04_05" type="text" class="inputTxt-max" id="ch01_03_02_01_04_05" value="<%=XMLBean.getValue("ch01_03_02_01_04_05") %>" /></p>
                        <p>Most ever used <input name="ch01_03_02_01_04_06" type="text" class="inputTxt-max" id="ch01_03_02_01_04_06" value="<%=XMLBean.getValue("ch01_03_02_01_04_06") %>" /></p>
                        </div>
                </div>
            </div>
            </div>
            <span class="green_color con_padding"><input name="ch01_03_02_02" type="checkbox" value="1" <%:"1".Equals(XMLBean.getValue("ch01_03_02_02")) ? "checked='checked'":"" %>/>Marijuana
            	<div id="ch01_03_02_02" class="blue_color con_padding2 <%:!"1".Equals(XMLBean.getValue("ch01_03_02_02")) ? "hide":"" %>">
                <p>Age of first use <input id="ch01_03_02_02_01" name="ch01_03_02_02_01" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_02_01") %>" /></p>
                <p>Age of continuous/regular use <input id="ch01_03_02_02_02" name="ch01_03_02_02_02" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_02_02") %>" /></p>
                <p>How it's used/route of delivery <input id="ch01_03_02_02_03" name="ch01_03_02_02_03" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_02_03") %>" /></p>
                <p>Usual amount when using <input id="ch01_03_02_02_04" name="ch01_03_02_02_04" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_02_04") %>" /></p>
                <p>How often used <input id="ch01_03_02_02_05" name="ch01_03_02_02_05" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_02_05") %>" /></p>
                <p>Date of last use <input id="ch01_03_02_02_06" name="ch01_03_02_02_06" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_02_06") %>" /></p>
                <p>Most ever used <input id="ch01_03_02_02_07" name="ch01_03_02_02_07" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_02_07") %>" /></p>
                </div>
            </span><br/>
            <span class="green_color con_padding"><input name="ch01_03_02_03" type="checkbox" value="1" <%:"1".Equals(XMLBean.getValue("ch01_03_02_03")) ? "checked='checked'":"" %>/>Tranquilizers
            	<div id="ch01_03_02_03" class="blue_color con_padding2 <%:!"1".Equals(XMLBean.getValue("ch01_03_02_03")) ? "hide":"" %>">
                <p>Age of first use <input id="ch01_03_02_03_01" name="ch01_03_02_03_01" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_03_01") %>" /></p>
                <p>Age of continuous/regular use <input id="ch01_03_02_03_02" name="ch01_03_02_03_02" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_03_02") %>" /></p>
                <p>How it's used/route of delivery <input id="ch01_03_02_03_03" name="ch01_03_02_03_03" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_03_03") %>" /></p>
                <p>Usual amount when using <input id="ch01_03_02_03_04" name="ch01_03_02_03_04" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_03_04") %>" /></p>
                <p>How often used <input id="ch01_03_02_03_05" name="ch01_03_02_03_05" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_03_05") %>" /></p>
                <p>Date of last use <input id="ch01_03_02_03_06" name="ch01_03_02_03_06" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_03_06") %>" /></p>
                <p>Most ever used <input id="ch01_03_02_03_07" name="ch01_03_02_03_07" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_03_07") %>" /></p>
                </div>
            </span><br/>
            <span class="green_color con_padding"><input name="ch01_03_02_04" type="checkbox" value="1" <%:"1".Equals(XMLBean.getValue("ch01_03_02_04")) ? "checked='checked'":"" %> />PCP
            	<div id="ch01_03_02_04" class="blue_color con_padding2 <%:!"1".Equals(XMLBean.getValue("ch01_03_02_04")) ? "hide":"" %>">
                <p>Age of first use <input id="ch01_03_02_04_01" name="ch01_03_02_04_01" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_04_01") %>" /></p>
                <p>Age of continuous/regular use <input id="ch01_03_02_04_02" name="ch01_03_02_04_02" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_04_02") %>" /></p>
                <p>How it's used/route of delivery <input id="ch01_03_02_04_03" name="ch01_03_02_04_03" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_04_03") %>" /></p>
                <p>Usual amount when using <input id="ch01_03_02_04_04" name="ch01_03_02_04_04" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_04_04") %>" /></p>
                <p>How often used <input id="ch01_03_02_04_05" name="ch01_03_02_04_05" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_04_05") %>" /></p>
                <p>Date of last use <input id="ch01_03_02_04_06" name="ch01_03_02_04_06" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_04_06") %>" /></p>
                <p>Most ever used <input id="ch01_03_02_04_07" name="ch01_03_02_04_07" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_04_07") %>" /></p>
                </div>
            </span><br/>
            <span class="green_color con_padding"><input name="ch01_03_02_05" type="checkbox" value="1" <%:"1".Equals(XMLBean.getValue("ch01_03_02_05")) ? "checked='checked'":"" %> />Sedatives
            	<div id="ch01_03_02_05" class="blue_color con_padding2 <%:!"1".Equals(XMLBean.getValue("ch01_03_02_05")) ? "hide":"" %>">
                <p>Age of first use <input id="ch01_03_02_05_01" name="ch01_03_02_05_01" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_05_01") %>" /></p>
                <p>Age of continuous/regular use <input id="ch01_03_02_05_02" name="ch01_03_02_05_02" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_05_02") %>" /></p>
                <p>How it's used/route of delivery <input id="ch01_03_02_05_03" name="ch01_03_02_05_03" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_05_03") %>" /></p>
                <p>Usual amount when using <input id="ch01_03_02_05_04" name="ch01_03_02_05_04" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_05_04") %>" /></p>
                <p>How often used <input id="ch01_03_02_05_05" name="ch01_03_02_05_05" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_05_05") %>" /></p>
                <p>Date of last use <input id="ch01_03_02_05_06" name="ch01_03_02_05_06" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_05_06") %>" /></p>
                <p>Most ever used <input id="ch01_03_02_05_07" name="ch01_03_02_05_07" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_05_07") %>" /></p>
                </div>
            </span><br/>
            <span class="green_color con_padding"><input name="ch01_03_02_06" type="checkbox" value="1" <%:"1".Equals(XMLBean.getValue("ch01_03_02_06")) ? "checked='checked'":"" %> />Amphetamines
            	<div id="ch01_03_02_06" class="blue_color con_padding2 <%:!"1".Equals(XMLBean.getValue("ch01_03_02_06")) ? "hide":"" %>">
                <p>Age of first use <input id="ch01_03_02_06_01" name="ch01_03_02_06_01" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_06_01") %>" /></p>
                <p>Age of continuous/regular use <input id="ch01_03_02_06_02" name="ch01_03_02_06_02" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_06_02") %>" /></p>
                <p>How it's used/route of delivery <input id="ch01_03_02_06_03" name="ch01_03_02_06_03" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_06_03") %>" /></p>
                <p>Usual amount when using <input id="ch01_03_02_06_04" name="ch01_03_02_06_04" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_06_04") %>" /></p>
                <p>How often used <input id="ch01_03_02_06_05" name="ch01_03_02_06_05" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_06_05") %>" /></p>
                <p>Date of last use <input id="ch01_03_02_06_06" name="ch01_03_02_06_06" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_06_06") %>" /></p>
                <p>Most ever used <input id="ch01_03_02_06_07" name="ch01_03_02_06_07" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_06_07") %>" /></p>
                </div>
            </span><br/>
            <span class="green_color con_padding"><input name="ch01_03_02_07" type="checkbox" value="1" <%:"1".Equals(XMLBean.getValue("ch01_03_02_07")) ? "checked='checked'":"" %> />Opiates
            	<div id="ch01_03_02_07" class="blue_color con_padding2 <%:!"1".Equals(XMLBean.getValue("ch01_03_02_07")) ? "hide":"" %>">
                <p>Age of first use <input id="ch01_03_02_07_01" name="ch01_03_02_07_01" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_07_01") %>" /></p>
                <p>Age of continuous/regular use <input id="ch01_03_02_07_02" name="ch01_03_02_07_02" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_07_02") %>" /></p>
                <p>How it's used/route of delivery <input id="ch01_03_02_07_03" name="ch01_03_02_07_03" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_07_03") %>" /></p>
                <p>Usual amount when using <input id="ch01_03_02_07_04" name="ch01_03_02_07_04" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_07_04") %>" /></p>
                <p>How often used <input id="ch01_03_02_07_05" name="ch01_03_02_07_05" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_07_05") %>" /></p>
                <p>Date of last use <input id="ch01_03_02_07_06" name="ch01_03_02_07_06" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_07_06") %>" /></p>
                <p>Most ever used <input id="ch01_03_02_07_07" name="ch01_03_02_07_07" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_07_07") %>" /></p>
                </div>
            </span><br/>
            <span class="green_color con_padding"><input name="ch01_03_02_08" type="checkbox" value="1" <%:"1".Equals(XMLBean.getValue("ch01_03_02_08")) ? "checked='checked'":"" %> />Solvents
            	<div id="ch01_03_02_08" class="blue_color con_padding2 <%:!"1".Equals(XMLBean.getValue("ch01_03_02_08")) ? "hide":"" %>">
                <p>Age of first use <input id="ch01_03_02_08_01" name="ch01_03_02_08_01" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_08_01") %>" /></p>
                <p>Age of continuous/regular use <input id="ch01_03_02_08_02" name="ch01_03_02_08_02" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_08_02") %>" /></p>
                <p>How it's used/route of delivery <input id="ch01_03_02_08_03" name="ch01_03_02_08_03" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_08_03") %>" /></p>
                <p>Usual amount when using <input id="ch01_03_02_08_04" name="ch01_03_02_08_04" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_08_04") %>" /></p>
                <p>How often used <input id="ch01_03_02_08_05" name="ch01_03_02_08_05" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_08_05") %>" /></p>
                <p>Date of last use <input id="ch01_03_02_08_06" name="ch01_03_02_08_06" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_08_06") %>" /></p>
                <p>Most ever used <input id="ch01_03_02_08_07" name="ch01_03_02_08_07" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_08_07") %>" /></p>
                </div>
            </span><br/>
            <span class="green_color con_padding"><input name="ch01_03_02_09" type="checkbox" value="1" <%:"1".Equals(XMLBean.getValue("ch01_03_02_09")) ? "checked='checked'":"" %> />Hallucinogens
            	<div id="ch01_03_02_09" class="blue_color con_padding2 <%:!"1".Equals(XMLBean.getValue("ch01_03_02_09")) ? "hide":"" %>">
                <p>Age of first use <input id="ch01_03_02_09_01" name="ch01_03_02_09_01" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_09_01") %>" /></p>
                <p>Age of continuous/regular use <input id="ch01_03_02_09_02" name="ch01_03_02_09_02" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_09_02") %>" /></p>
                <p>How it's used/route of delivery <input id="ch01_03_02_09_03" name="ch01_03_02_09_03" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_09_03") %>" /></p>
                <p>Usual amount when using <input id="ch01_03_02_09_04" name="ch01_03_02_09_04" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_09_04") %>" /></p>
                <p>How often used <input id="ch01_03_02_09_05" name="ch01_03_02_09_05" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_09_05") %>" /></p>
                <p>Date of last use <input id="ch01_03_02_09_06" name="ch01_03_02_09_06" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_09_06") %>" /></p>
                <p>Most ever used <input id="ch01_03_02_09_07" name="ch01_03_02_09_07" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_09_07") %>" /></p>
                </div>
            </span><br/>
            <span class="green_color con_padding"><input name="ch01_03_02_10" type="checkbox" value="1" <%:"1".Equals(XMLBean.getValue("ch01_03_02_10")) ? "checked='checked'":"" %> />OTC medications (list)
            <div id="ch01_03_02_10" class="<%:!"1".Equals(XMLBean.getValue("ch01_03_02_10")) ? "hide":"" %>"><br/>
                <div class="blue_color con_padding2">1.	<input name="ch01_03_02_10_01" type="text" class="inputTxt" value="<%=XMLBean.getValue("ch01_03_02_10_01") %>" />
                	<div id="ch01_03_02_10_01" class="purple_color con_min <%:!XMLBean.getValue("ch01_03_02_10_01").Equals("") ? "hide":"" %>">
                    <p>Age of first use <input id="ch01_03_02_10_01_01" name="ch01_03_02_10_01_01" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_10_01_01") %>" /></p>
                    <p>Age of continuous/regular use <input id="ch01_03_02_10_01_02" name="ch01_03_02_10_01_02" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_10_01_02") %>" /></p>
                    <p>How it's used/route of delivery <input id="ch01_03_02_10_01_03" name="ch01_03_02_10_01_03" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_10_01_03") %>" /></p>
                    <p>Usual amount when using <input id="ch01_03_02_10_01_04" name="ch01_03_02_10_01_04" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_10_01_04") %>" /></p>
                    <p>How often used <input id="ch01_03_02_10_01_05" name="ch01_03_02_10_01_05" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_10_01_05") %>" /></p>
                    <p>Date of last use <input id="ch01_03_02_10_01_06" name="ch01_03_02_10_01_06" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_10_01_06") %>" /></p>
                    <p>Most ever used <input id="ch01_03_02_10_01_07" name="ch01_03_02_10_01_07" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_10_01_07") %>" /></p>
                    </div>
                </div><br/>
                <div class="blue_color con_padding2">2.	<input name="ch01_03_02_10_02" type="text" class="inputTxt" value="<%=XMLBean.getValue("ch01_03_02_10_02") %>" />
                	<div id="ch01_03_02_10_02" class="purple_color con_min <%:!XMLBean.getValue("ch01_03_02_10_02").Equals("") ? "hide":"" %>">
                    <p>Age of first use <input id="ch01_03_02_10_02_01" name="ch01_03_02_10_02_01" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_10_02_01") %>" /></p>
                    <p>Age of continuous/regular use <input id="ch01_03_02_10_02_02" name="ch01_03_02_10_02_02" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_10_02_02") %>" /></p>
                    <p>How it's used/route of delivery <input id="ch01_03_02_10_02_03" name="ch01_03_02_10_02_03" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_10_02_03") %>" /></p>
                    <p>Usual amount when using <input id="ch01_03_02_10_02_04" name="ch01_03_02_10_02_04" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_10_02_04") %>" /></p>
                    <p>How often used <input id="ch01_03_02_10_02_05" name="ch01_03_02_10_02_05" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_10_02_05") %>" /></p>
                    <p>Date of last use <input id="ch01_03_02_10_02_06" name="ch01_03_02_10_02_06" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_10_02_06") %>" /></p>
                    <p>Most ever used <input id="ch01_03_02_10_02_07" name="ch01_03_02_10_02_07" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_10_02_07") %>" /></p>
                    </div>
                </div><br/>
                <div class="blue_color con_padding2">3.	<input name="ch01_03_02_10_03" type="text" class="inputTxt" value="<%=XMLBean.getValue("ch01_03_02_10_03") %>"  />
                	<div id="ch01_03_02_10_03" class="purple_color con_min <%:!XMLBean.getValue("ch01_03_02_10_03").Equals("") ? "hide":"" %>">
                    <p>Age of first use <input id="ch01_03_02_10_03_01" name="ch01_03_02_10_03_01" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_10_03_01") %>" /></p>
                    <p>Age of continuous/regular use <input id="ch01_03_02_10_03_02" name="ch01_03_02_10_03_02" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_10_03_02") %>" /></p>
                    <p>How it's used/route of delivery <input id="ch01_03_02_10_03_03" name="ch01_03_02_10_03_03" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_10_03_03") %>" /></p>
                    <p>Usual amount when using <input id="ch01_03_02_10_03_04" name="ch01_03_02_10_03_04" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_10_03_04") %>" /></p>
                    <p>How often used <input id="ch01_03_02_10_03_05" name="ch01_03_02_10_03_05" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_10_03_05") %>" /></p>
                    <p>Date of last use <input id="ch01_03_02_10_03_06" name="ch01_03_02_10_03_06" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_10_03_06") %>" /></p>
                    <p>Most ever used <input id="ch01_03_02_10_03_07" name="ch01_03_02_10_03_07" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_10_03_07") %>" /></p>
                    </div>
                </div><br/>
                <div class="blue_color con_padding2">4.	<input name="ch01_03_02_10_04" type="text" class="inputTxt" value="<%=XMLBean.getValue("ch01_03_02_10_04") %>" />
                	<div id="ch01_03_02_10_04" class="purple_color con_min <%:!XMLBean.getValue("ch01_03_02_10_04").Equals("") ? "hide":"" %>">
                    <p>Age of first use <input id="ch01_03_02_10_04_01" name="ch01_03_02_10_04_01" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_10_04_01") %>" /></p>
                    <p>Age of continuous/regular use <input id="ch01_03_02_10_04_02" name="ch01_03_02_10_04_02" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_10_04_02") %>" /></p>
                    <p>How it's used/route of delivery <input id="ch01_03_02_10_04_03" name="ch01_03_02_10_04_03" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_10_04_03") %>" /></p>
                    <p>Usual amount when using <input id="ch01_03_02_10_04_04" name="ch01_03_02_10_04_04" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_10_04_04") %>" /></p>
                    <p>How often used <input id="ch01_03_02_10_04_05" name="ch01_03_02_10_04_05" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_10_04_05") %>" /></p>
                    <p>Date of last use <input id="ch01_03_02_10_04_06" name="ch01_03_02_10_04_06" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_10_04_06") %>" /></p>
                    <p>Most ever used <input id="ch01_03_02_10_04_07" name="ch01_03_02_10_04_07" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_10_04_07") %>" /></p>
                    </div>
                </div><br/>
                <div class="blue_color con_padding2">5.	<input name="ch01_03_02_10_05" type="text" class="inputTxt" value="<%=XMLBean.getValue("ch01_03_02_10_05") %>" />
                	<div id="ch01_03_02_10_05" class="purple_color con_min <%:!XMLBean.getValue("ch01_03_02_10_05").Equals("") ? "hide":"" %>">
                    <p>Age of first use <input id="ch01_03_02_10_05_01" name="ch01_03_02_10_05_01" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_10_05_01") %>" /></p>
                    <p>Age of continuous/regular use <input id="ch01_03_02_10_05_02" name="ch01_03_02_10_05_02" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_10_05_02") %>" /></p>
                    <p>How it's used/route of delivery <input id="ch01_03_02_10_05_03" name="ch01_03_02_10_05_03" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_10_05_03") %>" /></p>
                    <p>Usual amount when using <input id="ch01_03_02_10_05_04" name="ch01_03_02_10_05_04" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_10_05_04") %>" /></p>
                    <p>How often used <input id="ch01_03_02_10_05_05" name="ch01_03_02_10_05_05" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_10_05_05") %>" /></p>
                    <p>Date of last use <input id="ch01_03_02_10_05_06" name="ch01_03_02_10_05_06" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_10_05_06") %>" /></p>
                    <p>Most ever used <input id="ch01_03_02_10_05_07" name="ch01_03_02_10_05_07" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_10_05_07") %>" /></p>
                    </div>
                </div>
            </div>
            </span><br/>
            <span class="green_color con_padding"><input name="ch01_03_02_11" type="checkbox" value="1" <%:"1".Equals(XMLBean.getValue("ch01_03_02_11")) ? "checked='checked'":"" %> />Prescription medication (list)<br/>
            <div id="ch01_03_02_11" class="<%:!"1".Equals(XMLBean.getValue("ch01_03_02_11")) ? "hide":"" %>">
                <div class="blue_color con_padding2">1.	<input name="ch01_03_02_11_01" type="text" class="inputTxt" value="<%=XMLBean.getValue("ch01_03_02_11_01") %>" />
                	<div id="ch01_03_02_11_01" class="purple_color con_min <%:"".Equals(XMLBean.getValue("ch01_03_02_11_01")) ? "hide":"" %>">
                    <p>Age of first use <input id="ch01_03_02_11_01_01" name="ch01_03_02_11_01_01" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_11_01_01") %>" /></p>
                    <p>Age of continuous/regular use <input id="ch01_03_02_11_01_02" name="ch01_03_02_11_01_02" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_11_01_02") %>" /></p>
                    <p>How it's used/route of delivery <input id="ch01_03_02_11_01_03" name="ch01_03_02_11_01_03" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_11_01_03") %>" /></p>
                    <p>Usual amount when using <input id="ch01_03_02_11_01_04" name="ch01_03_02_11_01_04" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_11_01_04") %>" /></p>
                    <p>How often used <input id="ch01_03_02_11_01_05" name="ch01_03_02_11_01_05" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_11_01_05") %>" /></p>
                    <p>Date of last use <input id="ch01_03_02_11_01_06" name="ch01_03_02_11_01_06" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_11_01_06") %>" /></p>
                    <p>Most ever used <input id="ch01_03_02_11_01_07" name="ch01_03_02_11_01_07" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_11_01_07") %>" /></p>
                    </div>
              </div><br/>
               <div class="blue_color con_padding2">2.	<input name="ch01_03_02_11_02" type="text" class="inputTxt" value="<%=XMLBean.getValue("ch01_03_02_11_02") %>" />
                	<div id="ch01_03_02_11_02" class="purple_color con_min <%:"".Equals(XMLBean.getValue("ch01_03_02_11_02")) ? "hide":"" %>">
                    <p>Age of first use <input id="ch01_03_02_11_02_01" name="ch01_03_02_11_02_01" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_11_02_01") %>" /></p>
                    <p>Age of continuous/regular use <input id="ch01_03_02_11_02_02" name="ch01_03_02_11_02_02" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_11_02_02") %>" /></p>
                    <p>How it's used/route of delivery <input id="ch01_03_02_11_02_03" name="ch01_03_02_11_02_03" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_11_02_03") %>" /></p>
                    <p>Usual amount when using <input id="ch01_03_02_11_02_04" name="ch01_03_02_11_02_04" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_11_02_04") %>" /></p>
                    <p>How often used <input id="ch01_03_02_11_02_05" name="ch01_03_02_11_02_05" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_11_02_05") %>" /></p>
                    <p>Date of last use <input id="ch01_03_02_11_02_06" name="ch01_03_02_11_02_06" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_11_02_06") %>" /></p>
                    <p>Most ever used <input id="ch01_03_02_11_02_07" name="ch01_03_02_11_02_07" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_11_02_07") %>" /></p>
                	</div>
              </div><br/>
                <div class="blue_color con_padding2">3.	<input name="ch01_03_02_11_03" type="text" class="inputTxt" value="<%=XMLBean.getValue("ch01_03_02_11_03") %>" />
                	<div id="ch01_03_02_11_03" class="purple_color con_min <%:"".Equals(XMLBean.getValue("ch01_03_02_11_03")) ? "hide":"" %>">
                    <p>Age of first use <input id="ch01_03_02_11_03_01" name="ch01_03_02_11_03_01" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_11_03_01") %>" /></p>
                    <p>Age of continuous/regular use <input id="ch01_03_02_11_03_02" name="ch01_03_02_11_03_02" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_11_03_02") %>" /></p>
                    <p>How it's used/route of delivery <input id="ch01_03_02_11_03_03" name="ch01_03_02_11_03_03" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_11_03_03") %>" /></p>
                    <p>Usual amount when using <input id="ch01_03_02_11_03_04" name="ch01_03_02_11_03_04" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_11_03_04") %>" /></p>
                    <p>How often used <input id="ch01_03_02_11_03_05" name="ch01_03_02_11_03_05" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_11_03_05") %>" /></p>
                    <p>Date of last use <input id="ch01_03_02_11_03_06" name="ch01_03_02_11_03_06" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_11_03_06") %>" /></p>
                    <p>Most ever used <input id="ch01_03_02_11_03_07" name="ch01_03_02_11_03_07" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_11_03_07") %>" /></p>
                    </div>
              </div><br/>
                <div class="blue_color con_padding2">4.	<input name="ch01_03_02_11_04" type="text" class="inputTxt" value="<%=XMLBean.getValue("ch01_03_02_11_04") %>" />
                	<div id="ch01_03_02_11_04" class="purple_color con_min <%:"".Equals(XMLBean.getValue("ch01_03_02_11_04")) ? "hide":"" %>">
                    <p>Age of first use <input id="ch01_03_02_11_04_01" name="ch01_03_02_11_04_01" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_11_04_01") %>" /></p>
                    <p>Age of continuous/regular use <input id="ch01_03_02_11_04_02" name="ch01_03_02_11_04_02" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_11_04_02") %>" /></p>
                    <p>How it's used/route of delivery <input id="ch01_03_02_11_04_03" name="ch01_03_02_11_04_03" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_11_04_03") %>" /></p>
                    <p>Usual amount when using <input id="ch01_03_02_11_04_04" name="ch01_03_02_11_04_04" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_11_04_04") %>" /></p>
                    <p>How often used <input id="ch01_03_02_11_04_05" name="ch01_03_02_11_04_05" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_11_04_05") %>" /></p>
                    <p>Date of last use <input id="ch01_03_02_11_04_06" name="ch01_03_02_11_04_06" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_11_04_06") %>" /></p>
                    <p>Most ever used <input id="ch01_03_02_11_04_07" name="ch01_03_02_11_04_07" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_11_04_07") %>" /></p>
                    </div>
              </div><br/>
                <div class="blue_color con_padding2">5.	<input name="ch01_03_02_11_05" type="text" class="inputTxt" value="<%=XMLBean.getValue("ch01_03_02_11_05") %>" />
                	<div id="ch01_03_02_11_05" class="purple_color con_min <%:"".Equals(XMLBean.getValue("ch01_03_02_11_05")) ? "hide":"" %>">
                    <p>Age of first use <input id="ch01_03_02_11_05_01" name="ch01_03_02_11_05_01" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_11_05_01") %>" /></p>
                    <p>Age of continuous/regular use <input id="ch01_03_02_11_05_02" name="ch01_03_02_11_05_02" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_11_05_02") %>" /></p>
                    <p>How it's used/route of delivery <input id="ch01_03_02_11_05_03" name="ch01_03_02_11_05_03" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_11_05_03") %>" /></p>
                    <p>Usual amount when using <input id="ch01_03_02_11_05_04" name="ch01_03_02_11_05_04" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_11_05_04") %>" /></p>
                    <p>How often used <input id="ch01_03_02_11_05_05" name="ch01_03_02_11_05_05" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_11_05_05") %>" /></p>
                    <p>Date of last use <input id="ch01_03_02_11_05_06" name="ch01_03_02_11_05_06" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_11_05_06") %>" /></p>
                    <p>Most ever used <input id="ch01_03_02_11_05_07" name="ch01_03_02_11_05_07" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_11_05_07") %>" /></p>
                    </div>
              </div><br/>
            </div>
            </span>
            <span class="green_color con_padding"><input name="ch01_03_02_12" type="checkbox" value="1" <%:"1".Equals(XMLBean.getValue("ch01_03_02_11")) ? "checked='checked'":"" %> />Other (list)<br/>
            <div id="ch01_03_02_12" class="<%:!"1".Equals(XMLBean.getValue("ch01_03_02_12")) ? "hide":"" %>">
                <div class="blue_color con_padding2">1.	<input name="ch01_03_02_12_01" type="text" class="inputTxt" value="<%=XMLBean.getValue("ch01_03_02_12_01") %>" />
                	<div id="ch01_03_02_12_01" class="purple_color con_min <%:"".Equals(XMLBean.getValue("ch01_03_02_12_01")) ? "hide":"" %>">
                    <p>Age of first use <input id="ch01_03_02_12_01_01" name="ch01_03_02_12_01_01" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_12_01_01") %>" /></p>
                    <p>Age of continuous/regular use <input id="ch01_03_02_12_01_02" name="ch01_03_02_12_01_02" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_12_01_02") %>" /></p>
                    <p>How it's used/route of delivery <input id="ch01_03_02_12_01_03" name="ch01_03_02_12_01_03" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_12_01_03") %>" /></p>
                    <p>Usual amount when using <input id="ch01_03_02_12_01_04" name="ch01_03_02_12_01_04" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_12_01_04") %>" /></p>
                    <p>How often used <input id="ch01_03_02_12_01_05" name="ch01_03_02_12_01_05" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_12_01_5") %>" /></p>
                    <p>Date of last use <input id="ch01_03_02_12_01_06" name="ch01_03_02_12_01_06" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_12_01_06") %>" /></p>
                    <p>Most ever used <input id="ch01_03_02_12_01_07" name="ch01_03_02_12_01_07" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_12_01_07") %>" /></p>
                    </div>
              </div><br/>
               <div class="blue_color con_padding2">2.	<input name="ch01_03_02_12_02" type="text" class="inputTxt" value="<%=XMLBean.getValue("ch01_03_02_12_02") %>" />
                	<div id="ch01_03_02_12_02" class="purple_color con_min <%:"".Equals(XMLBean.getValue("ch01_03_02_12_02")) ? "hide":"" %>">
                    <p>Age of first use <input id="ch01_03_02_12_02_01" name="ch01_03_02_12_02_01" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_12_02_01") %>" /></p>
                    <p>Age of continuous/regular use <input id="ch01_03_02_12_02_02" name="ch01_03_02_12_02_02" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_12_02_02") %>" /></p>
                    <p>How it's used/route of delivery <input id="ch01_03_02_12_02_03" name="ch01_03_02_12_02_03" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_12_02_03") %>" /></p>
                    <p>Usual amount when using <input id="ch01_03_02_12_02_04" name="ch01_03_02_12_02_04" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_12_02_04") %>" /></p>
                    <p>How often used <input id="ch01_03_02_12_02_05" name="ch01_03_02_12_02_05" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_12_02_05") %>" /></p>
                    <p>Date of last use <input id="ch01_03_02_12_02_06" name="ch01_03_02_12_02_06" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_12_02_06") %>" /></p>
                    <p>Most ever used <input id="ch01_03_02_12_02_07" name="ch01_03_02_12_02_07" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_12_02_07") %>" /></p>
                	</div>
              </div><br/>
                <div class="blue_color con_padding2">3.	<input name="ch01_03_02_12_03" type="text" class="inputTxt" value="<%=XMLBean.getValue("ch01_03_02_12_03") %>" />
                	<div id="ch01_03_02_12_03" class="purple_color con_min <%:"".Equals(XMLBean.getValue("ch01_03_02_12_03")) ? "hide":"" %>">
                    <p>Age of first use <input id="ch01_03_02_12_03_01" name="ch01_03_02_12_03_01" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_12_03_01") %>" /></p>
                    <p>Age of continuous/regular use <input id="ch01_03_02_12_03_02" name="ch01_03_02_12_03_02" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_12_03_02") %>" /></p>
                    <p>How it's used/route of delivery <input id="ch01_03_02_12_03_03" name="ch01_03_02_12_03_03" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_12_03_03") %>" /></p>
                    <p>Usual amount when using <input id="ch01_03_02_12_03_04" name="ch01_03_02_12_03_04" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_12_03_04") %>" /></p>
                    <p>How often used <input id="ch01_03_02_12_03_05" name="ch01_03_02_12_03_05" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_12_03_05") %>" /></p>
                    <p>Date of last use <input id="ch01_03_02_12_03_06" name="ch01_03_02_12_03_06" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_12_03_06") %>" /></p>
                    <p>Most ever used <input id="ch01_03_02_12_03_07" name="ch01_03_02_12_03_07" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_12_03_07") %>" /></p>
                    </div>
              </div><br/>
                <div class="blue_color con_padding2">4.	<input name="ch01_03_02_12_04" type="text" class="inputTxt" value="<%=XMLBean.getValue("ch01_03_02_12_04") %>" />
                	<div id="ch01_03_02_12_04" class="purple_color con_min <%:"".Equals(XMLBean.getValue("ch01_03_02_12_04")) ? "hide":"" %>">
                    <p>Age of first use <input id="ch01_03_02_12_04_01" name="ch01_03_02_12_04_01" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_12_04_01") %>" /></p>
                    <p>Age of continuous/regular use <input id="ch01_03_02_12_04_02" name="ch01_03_02_12_04_02" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_12_04_02") %>" /></p>
                    <p>How it's used/route of delivery <input id="ch01_03_02_12_04_03" name="ch01_03_02_12_04_03" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_12_04_03") %>" /></p>
                    <p>Usual amount when using <input id="ch01_03_02_12_04_04" name="ch01_03_02_12_04_04" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_12_04_04") %>" /></p>
                    <p>How often used <input id="ch01_03_02_12_04_05" name="ch01_03_02_12_04_05" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_12_04_05") %>" /></p>
                    <p>Date of last use <input id="ch01_03_02_12_04_06" name="ch01_03_02_12_04_06" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_12_04_06") %>" /></p>
                    <p>Most ever used <input id="ch01_03_02_12_04_07" name="ch01_03_02_12_04_07" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_12_04_07") %>" /></p>
                    </div>
              </div><br/>
                <div class="blue_color con_padding2">5.	<input name="ch01_03_02_12_05" type="text" class="inputTxt" value="<%=XMLBean.getValue("ch01_03_02_12_05") %>" />
                	<div id="ch01_03_02_12_05" class="purple_color con_min <%:"".Equals(XMLBean.getValue("ch01_03_02_12_05")) ? "hide":"" %>">
                    <p>Age of first use <input id="ch01_03_02_12_05_01" name="ch01_03_02_12_05_01" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_12_05_01") %>" /></p>
                    <p>Age of continuous/regular use <input id="ch01_03_02_12_05_02" name="ch01_03_02_12_05_02" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_12_05_02") %>" /></p>
                    <p>How it's used/route of delivery <input id="ch01_03_02_12_05_03" name="ch01_03_02_12_05_03" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_12_05_03") %>" /></p>
                    <p>Usual amount when using <input id="ch01_03_02_12_05_04" name="ch01_03_02_12_05_04" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_12_05_04") %>" /></p>
                    <p>How often used <input id="ch01_03_02_12_05_05" name="ch01_03_02_12_05_05" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_12_05_05") %>" /></p>
                    <p>Date of last use <input id="ch01_03_02_12_05_06" name="ch01_03_02_12_05_06" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_12_05_06") %>" /></p>
                    <p>Most ever used <input id="ch01_03_02_12_05_07" name="ch01_03_02_12_05_07" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_02_12_05_07") %>" /></p>
                    </div>
              </div><br/>
            </div>
            </span>
        </div><br/>
        <div id="ch01_03_03" class="green_color">When using, have you ever experienced:<br/>
        	<div class="green_color con_padding">
            	<input name="ch01_03_03_01" type="checkbox" value="Blackouts" <%:"Blackouts".Equals(XMLBean.getValue("ch01_03_03_01")) ? "checked='checked'":"" %> />Blackouts<br/>
            	<input name="ch01_03_03_02" type="checkbox" value="Passed out" <%:"Passed out".Equals(XMLBean.getValue("ch01_03_03_02")) ? "checked='checked'":"" %> />Passed out<br/>
            	<input name="ch01_03_03_03" type="checkbox" value="Increased tolerance" <%:"Increased tolerance".Equals(XMLBean.getValue("ch01_03_03_03")) ? "checked='checked'":"" %> />Increased tolerance<br/>
            	<input name="ch01_03_03_04" type="checkbox" value="Decreased tolerance" <%:"Decreased tolerance".Equals(XMLBean.getValue("ch01_03_03_04")) ? "checked='checked'":"" %> />Decreased tolerance<br/>
            	<input name="ch01_03_03_05" type="checkbox" value="Hangovers" <%:"Hangovers".Equals(XMLBean.getValue("ch01_03_03_05")) ? "checked='checked'":"" %> />Hangovers<br/>
            	<input name="ch01_03_03_06" type="checkbox" value="1" <%:"1".Equals(XMLBean.getValue("ch01_03_03_06")) ? "checked='checked'":"" %> />Withdrawal symptoms <br/>
            		<span id="ch01_03_03_06_01" class="purple_color con_padding <%:!"1".Equals(XMLBean.getValue("ch01_03_03_06")) ? "hide":"" %>">Describe them <input id="ch01_03_03_06_01" name="ch01_03_03_06_01" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_03_06_01") %>" /><br/></span>
            	<input name="ch01_03_03_07" type="checkbox" value="Unsuccessful" <%:"Unsuccessful".Equals(XMLBean.getValue("ch01_03_03_07")) ? "checked='checked'":"" %> />Unsuccessful attempts to stop/cut back use<br/>
            	<input name="ch01_03_03_08" type="checkbox" value="Feelings" <%:"Feelings".Equals(XMLBean.getValue("ch01_03_03_08")) ? "checked='checked'":"" %> />Feelings of guilt/shame/embarrassment about behavior during active use of substance(s)<br/>
            </div>
        </div><br/>
        <div id="ch01_03_04" class="green_color">What's your longest period of time without using substances? <input id="ch01_03_04" name="ch01_03_04" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_04") %>"  /></div><br/><br/>
        <div class="green_color">Have you ever attended a 12-step group? <input name="YesNo_03_05" type="radio" value="1" <%:XMLBean.getValue("YesNo_03_05").Equals("1") ? "checked='checked'":"" %> />Yes<input name="YesNo_03_05" type="radio" value="0" <%:XMLBean.getValue("YesNo_03_05").Equals("0") ? "checked='checked'":"" %> />No<br/>
        	<div id="ch01_03_05" class="con_padding <%:!XMLBean.getValue("YesNo_03_05").Equals("1") ? "hide":"" %> act">
                <div class="blue_color"><input name="ch01_03_05_01" type="checkbox" value="1" <%:"1".Equals(XMLBean.getValue("ch01_03_05_01")) ? "checked='checked'":"" %> />AA
                    <div id="ch01_03_05_01" class="purple_color con_padding <%:!"1".Equals(XMLBean.getValue("ch01_03_05_01")) ? "hide":"" %>">
                    <p>How often? <input id="ch01_03_05_01_01" name="ch01_03_05_01_01" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_05_01_01") %>" /></p>
                    <p>Still attending? <input id="ch01_03_05_01_02" name="ch01_03_05_01_02" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_05_01_02") %>" /></p>
                    </div>
                </div>
                <div class="blue_color"><input name="ch01_03_05_02" type="checkbox" value="1" <%:"1".Equals(XMLBean.getValue("ch01_03_05_02")) ? "checked='checked'":"" %> />NA
                    <div id="ch01_03_05_02" class="purple_color con_padding <%:!"1".Equals(XMLBean.getValue("ch01_03_05_02")) ? "hide":"" %>">
                    <p>How often? <input id="ch01_03_05_02_01" name="ch01_03_05_02_01" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_05_02_01") %>" /></p>
                    <p>Still attending? <input id="ch01_03_05_02_02" name="ch01_03_05_02_02" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_05_02_02") %>" /></p>
                    </div>
                </div>
                <div class="blue_color"><input name="ch01_03_05_03" type="checkbox" value="1" <%:"1".Equals(XMLBean.getValue("ch01_03_05_03")) ? "checked='checked'":"" %> />Other <input name="ch01_03_05_03_03" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_05_03_03") %>"/>
                    <div id="ch01_03_05_03" class="purple_color con_padding <%:!"1".Equals(XMLBean.getValue("ch01_03_05_03")) ? "hide":"" %>">
                    <p>How often? <input id="ch01_03_05_03_01" name="ch01_03_05_03_01" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_05_03_01") %>" /></p>
                    <p>Still attending? <input id="ch01_03_05_03_02" name="ch01_03_05_03_02" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_05_03_02") %>" /></p>
                    </div>
                </div>
            </div>
        </div><br/>
        <div class="green_color">Have you been involved in any substance abuse treatment? <input name="YesNo_03_06" type="radio" value="1" <%:XMLBean.getValue("YesNo_03_06").Equals("1") ? "checked='checked'":"" %> />Yes<input name="YesNo_03_06" type="radio" value="0" checked="checked" <%:XMLBean.getValue("YesNo_03_06").Equals("0") ? "checked='checked'":"" %> />No<br/>
        	<div id="ch01_03_06" class="con_padding <%:!XMLBean.getValue("YesNo_03_06").Equals("1") ? "hide":"" %> act">
                <div class="blue_color"><input name="ch01_03_06_01" type="checkbox" value="1" <%:"1".Equals(XMLBean.getValue("ch01_03_06_01")) ? "checked='checked'":"" %> />Inpatient
                    <div id="ch01_03_06_01" class="purple_color con_padding <%:!"1".Equals(XMLBean.getValue("ch01_03_06_01")) ? "hide":"" %>">
                    <p>When <input id="ch01_03_06_01_01" name="ch01_03_06_01_01" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_06_01_01") %>" /></p>
                    <p>Where <input id="ch01_03_06_01_02" name="ch01_03_06_01_02" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_06_01_02") %>" /></p>
                    <p>Beneficial? <input id="ch01_03_06_01_03" name="ch01_03_06_01_03" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_06_01_03") %>" /></p>
                     <p>Court ordered? <input name="YesNo_03_06_01_04" type="radio" value="1" <%:XMLBean.getValue("YesNo_03_06_01_04").Equals("1") ? "checked='checked'":"" %>/>Yes
                            <input name="YesNo_03_06_01_04" type="radio" value="0" checked="checked" <%:XMLBean.getValue("YesNo_03_06_01_04").Equals("0") ? "checked='checked'":"" %>/>No</p>
                    </div>
                </div>
                <div class="blue_color"><input name="ch01_03_06_02" type="checkbox" value="1" <%:"1".Equals(XMLBean.getValue("ch01_03_06_02")) ? "checked='checked'":"" %> />Residential
                    <div id="ch01_03_06_02" class="purple_color con_padding <%:!"1".Equals(XMLBean.getValue("ch01_03_06_02")) ? "hide":"" %>">
                    <p>When <input id="ch01_03_06_02_01" name="ch01_03_06_02_01" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_06_02_01") %>" /></p>
                    <p>Where <input id="ch01_03_06_02_02" name="ch01_03_06_02_02" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_06_02_02") %>" /></p>
                    <p>Beneficial? <input id="ch01_03_06_02_03" name="ch01_03_06_02_03" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_06_02_03") %>" /></p>
                    <p>Court ordered? <input name="YesNo_03_06_02_04" type="radio" value="1" <%:XMLBean.getValue("YesNo_03_06_02_04").Equals("1") ? "checked='checked'":"" %>/>Yes
                            <input name="YesNo_03_06_02_04" type="radio" value="0" checked="checked" <%:XMLBean.getValue("YesNo_03_06_02_04").Equals("0") ? "checked='checked'":"" %>/>No</p>
                    </div>
                </div>
                <div class="blue_color"><input name="ch01_03_06_03" type="checkbox" value="1" <%:"1".Equals(XMLBean.getValue("ch01_03_06_03")) ? "checked='checked'":"" %> />Intensive outpatient
                    <div id="ch01_03_06_03" class="purple_color con_padding <%:!"1".Equals(XMLBean.getValue("ch01_03_06_03")) ? "hide":"" %>">
                    <p>When <input id="ch01_03_06_03_01" name="ch01_03_06_03_01" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_06_03_01") %>" /></p>
                    <p>Where <input id="ch01_03_06_03_02" name="ch01_03_06_03_02" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_06_03_02") %>" /></p>
                    <p>Beneficial? <input id="ch01_03_06_03_03" name="ch01_03_06_03_03" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_06_03_03") %>" /></p>
                    <p>Court ordered? <input name="YesNo_03_06_03_04" type="radio" value="1" <%:XMLBean.getValue("YesNo_03_06_03_04").Equals("1") ? "checked='checked'":"" %>/>Yes
                            <input name="YesNo_03_06_03_04" type="radio" value="0" checked="checked" <%:XMLBean.getValue("YesNo_03_06_03_04").Equals("0") ? "checked='checked'":"" %>/>No</p>
                    </div>
                </div>
                <div class="blue_color"><input name="ch01_03_06_04" type="checkbox" value="1" <%:"1".Equals(XMLBean.getValue("ch01_03_06_04")) ? "checked='checked'":"" %> />Group therapy
                    <div id="ch01_03_06_04" class="purple_color con_padding <%:!"1".Equals(XMLBean.getValue("ch01_03_06_04")) ? "hide":"" %>">
                    <p>When <input id="ch01_03_06_04_01" name="ch01_03_06_04_01" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_06_04_01") %>" /></p>
                    <p>Where <input id="ch01_03_06_04_02" name="ch01_03_06_04_02" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_06_04_03") %>" /></p>
                    <p>Beneficial? <input id="ch01_03_06_04_03" name="ch01_03_06_04_03" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_06_04_03") %>" /></p>
                    <p>Court ordered? <input name="YesNo_03_06_04_04" type="radio" value="1" <%:XMLBean.getValue("YesNo_03_06_04_04").Equals("1") ? "checked='checked'":"" %>/>Yes
                            <input name="YesNo_03_06_04_04" type="radio" value="0" checked="checked" <%:XMLBean.getValue("YesNo_03_06_04_04").Equals("0") ? "checked='checked'":"" %>/>No</p>
                    </div>
                </div>
                <div class="blue_color"><input name="ch01_03_06_05" type="checkbox" value="1" <%:"1".Equals(XMLBean.getValue("ch01_03_06_05")) ? "checked='checked'":"" %> />Individual outpatient therapy
                    <div id="ch01_03_06_05" class="purple_color con_padding <%:!"1".Equals(XMLBean.getValue("ch01_03_06_05")) ? "hide":"" %>">
                    <p>When <input id="ch01_03_06_05_01" name="ch01_03_06_05_01" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_06_05_01") %>" /></p>
                    <p>Where <input id="ch01_03_06_05_02" name="ch01_03_06_05_02" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_06_05_02") %>" /></p>
                    <p>Beneficial? <input id="ch01_03_06_05_03" name="ch01_03_06_05_03" type="text" class="inputTxt-max"  value="<%=XMLBean.getValue("ch01_03_06_05_03") %>"/></p>
                    <p>Court ordered? <input name="YesNo_03_06_05_04" type="radio" value="1" <%:XMLBean.getValue("YesNo_03_06_05_04").Equals("1") ? "checked='checked'":"" %>/>Yes
                            <input name="YesNo_03_06_05_04" type="radio" value="0" checked="checked" <%:XMLBean.getValue("YesNo_03_06_05_04").Equals("0") ? "checked='checked'":"" %>/>No</p>
                    </div>
                </div>
            </div>
        </div><br/>
        <div class="green_color">Have you engaged in any illegal activity during these experiences or in an attempt to gain access to the substance(s) of abuse? 
            <br />
           <input name="YesNo_03_07" type="radio" value="1" <%:XMLBean.getValue("YesNo_03_07").Equals("1") ? "checked='checked'":"" %> />Yes<input name="YesNo_03_07" type="radio" value="0" <%:XMLBean.getValue("YesNo_03_07").Equals("0") ? "checked='checked'":"" %> />No<br/>
            <span id="ch01_03_07" class="blue_color con_padding2 <%:!XMLBean.getValue("YesNo_03_07").Equals("1") ? "hide":"" %> act">Describe them: <input id="ch01_03_07" name="ch01_03_07" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_07") %>" /></span><br/>
        </div><br/>
        <div class="green_color">Have there been any significant changes to your life as a result of these activities (e.g. loss of finances, loss of a relationship, loss of a job/education, legal problems)? <input name="YesNo_03_08" type="radio" value="1" <%:XMLBean.getValue("YesNo_03_08").Equals("1") ? "checked='checked'":"" %> />Yes<input name="YesNo_03_08" type="radio" value="0" <%:XMLBean.getValue("YesNo_03_08").Equals("0") ? "checked='checked'":"" %> />No<br/>
             <span id="ch01_03_08" class="blue_color con_padding2 <%:!XMLBean.getValue("YesNo_03_08").Equals("1") ? "hide":"" %> act">Describe them: <input id="ch01_03_08" name="ch01_03_08" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_03_08") %>" /></span><br/>
         </div>
         <br />
         <div class="green_color">Do any family members have a problem with alcohol or substance use? <input name="YesNo_03_01" type="radio" value="1" <%:XMLBean.getValue("YesNo_03_01").Equals("1") ? "checked='checked'":"" %> />Yes<input name="YesNo_03_01" type="radio" value="0" <%:XMLBean.getValue("YesNo_03_01").Equals("0") ? "checked='checked'":"" %> />No<br/><br/>
        	<div id="ch01_03_01" class="blue_color con_padding <%:XMLBean.getValue("YesNo_03_01").Equals("0") ? "hide":"" %> act">
            <input name="ch01_03_01_01" type="checkbox" value="Mother" <%:"Mother".Equals(XMLBean.getValue("ch01_03_01_01")) ? "checked='checked'":"" %> />Mother<br/>
            <input name="ch01_03_01_02" type="checkbox" value="Father" <%:"Father".Equals(XMLBean.getValue("ch01_03_01_02")) ? "checked='checked'":"" %> />Father<br/>
            <input name="ch01_03_01_03" type="checkbox" value="Brother(s)" <%:"Brother(s)".Equals(XMLBean.getValue("ch01_03_01_03")) ? "checked='checked'":"" %> />Brother(s)<br/>
            <input name="ch01_03_01_04" type="checkbox" value="Sister(s)" <%:"Sister(s)".Equals(XMLBean.getValue("ch01_03_01_04")) ? "checked='checked'":"" %> />Sister(s)<br/>
            <input name="ch01_03_01_05" type="checkbox" value="Spouse" <%:"Spouse".Equals(XMLBean.getValue("ch01_03_01_05")) ? "checked='checked'":"" %> />Spouse<br/>
            <input name="ch01_03_01_06" type="checkbox" value="Maternal grandmother" <%:"Maternal grandmother".Equals(XMLBean.getValue("ch01_03_01_06")) ? "checked='checked'":"" %> />Maternal grandmother<br/>
            <input name="ch01_03_01_07" type="checkbox" value="Maternal grandfather" <%:"Maternal grandfather".Equals(XMLBean.getValue("ch01_03_01_07")) ? "checked='checked'":"" %> />Maternal grandfather<br/>
            <input name="ch01_03_01_08" type="checkbox" value="Paternal grandmother" <%:"Paternal grandmother".Equals(XMLBean.getValue("ch01_03_01_08")) ? "checked='checked'":"" %> />Paternal grandmother<br/>
            <input name="ch01_03_01_09" type="checkbox" value="Paternal grandfather" <%:"Paternal grandfather".Equals(XMLBean.getValue("ch01_03_01_09")) ? "checked='checked'":"" %> />Paternal grandfather<br/>
            <input name="ch01_03_01_10" type="checkbox" value="Children" <%:"Children".Equals(XMLBean.getValue("ch01_03_01_10")) ? "checked='checked'":"" %> />Children<br/>
            </div>
          </div>
        </div>
         <br/>
         <span class="red_color">Are you having unusual or bizarre thoughts or feelings, or have friends or family told you that you are acting strange? <input name="YesNo_04" type="radio" value="1" <%:XMLBean.getValue("YesNo_04").Equals("1") ? "checked='checked'":"" %> />Yes<input name="YesNo_04" type="radio" value="0" <%:XMLBean.getValue("YesNo_04").Equals("0") ? "checked='checked'":"" %> />No</span><br/>
         <div id="ch01_04" class="con_padding <%:!XMLBean.getValue("YesNo_04").Equals("1") ? "hide":"" %>">
            <span class="green_color">Have there been experiences of hearing/seeing/smelling/feeling things that no one else around you experiences? <input name="YesNo_04_01" type="radio" value="1" <%:XMLBean.getValue("YesNo_04_01").Equals("1") ? "checked='checked'":"" %> />Yes<input name="YesNo_04_01" type="radio" value="0" <%:XMLBean.getValue("YesNo_04_01").Equals("0") ? "checked='checked'":"" %> />No<br/>
            	<div id="ch01_04_01" class="con_padding <%:!XMLBean.getValue("YesNo_04_01").Equals("1") ? "hide":"" %> act">
                    <div id="ch01_04_01_01" class="blue_color">Describe the nature of these: <input id="ch01_04_01_01" name="ch01_04_01_01" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_04_01_01") %>" /></div><br/>
                    <div id="ch01_04_01_02" class="blue_color">How often do they occur? <input id="ch01_04_01_02" name="ch01_04_01_02" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_04_01_02") %>" /></div><br/>
                    <div id="ch01_04_01_03" class="blue_color">Have these experiences had an effect on your relationships with others? <input name="YesNo_04_01_03" type="radio" value="1" <%:XMLBean.getValue("YesNo_04_01_03").Equals("1") ? "checked='checked'":"" %> />Yes<input name="YesNo_04_01_03" type="radio" value="0" <%:XMLBean.getValue("YesNo_04_01_03").Equals("0") ? "checked='checked'":"" %> />No<br/>
                        <div id="ch01_04_01_03_01" class="purple_color con_padding <%:!XMLBean.getValue("YesNo_04_01_03").Equals("1") ? "hide":"" %> act">
                        <p>What relationships? <input id="ch01_04_01_03_01_01" name="ch01_04_01_03_01_01" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_04_01_03_01_01") %>" /></p>
                        <p>How were they affected? <input id="ch01_04_01_03_01_02" name="ch01_04_01_03_01_02" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_04_01_03_01_02") %>" /></p>
                        </div><br/>
                    </div>
                    <div id="ch01_04_01_04" class="blue_color">Have these experiences occurred exclusively during or around substance use or abuse? <input name="YesNo_04_01_04" type="radio" value="1" <%:XMLBean.getValue("YesNo_04_01_04").Equals("1") ? "checked='checked'":"" %> />Yes<input name="YesNo_04_01_04" type="radio" value="0" <%:XMLBean.getValue("YesNo_04_01_04").Equals("0") ? "checked='checked'":"" %> />No</div>
                        <span id="ch01_04_01_04_01" class="purple_color con_padding <%:!XMLBean.getValue("YesNo_04_01_04").Equals("1") ? "hide":"" %>act">[If the substance abuse questions have been answered, clinician shouldn't need to revisit them]</span><br/>
                    <div id="ch01_04_01_05" class="blue_color">Are there any current legal problems as a result of these experiences? <input name="YesNo_04_01_05" type="radio" value="1" <%:XMLBean.getValue("YesNo_04_01_05").Equals("1") ? "checked='checked'":"" %> />Yes<input name="YesNo_04_01_05" type="radio" value="0" <%:XMLBean.getValue("YesNo_04_01_05").Equals("0") ? "checked='checked'":"" %> />No</div>
                        <span id="ch01_04_01_05_01" class="purple_color con_padding <%:!XMLBean.getValue("YesNo_04_01_05").Equals("1") ? "hide":"" %> act">Describe these problems: <input id="ch01_04_01_05_01" name="ch01_04_01_05_01" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_04_01_05_01") %>" /></span><br/>
                    <div id="ch01_04_01_06" class="blue_color">Have these experiences occurred exclusively during or around a time when there have been significant mood problems? 
                    <br />
                    <input name="YesNo_04_01_06" type="radio" value="1" <%:XMLBean.getValue("YesNo_04_01_06").Equals("1") ? "checked='checked'":"" %> />Yes<input name="YesNo_04_01_06" type="radio" value="0" <%:XMLBean.getValue("YesNo_04_01_06").Equals("0") ? "checked='checked'":"" %> />No</div>
                        <span id="ch01_04_01_06_01" class="purple_color con_padding <%:!XMLBean.getValue("YesNo_04_01_06").Equals("1") ? "hide":"" %> act">[If the mood disorder questions have been answered, clinician shouldn't need to revisit them]</span><br/>
                    <div id="ch01_04_01_07" class="blue_color">Have there been significant mood problems in your past that were NOT accompanied by similar experiences as above? 
                    <br />
                    <input name="YesNo_04_01_07" type="radio" value="1" <%:XMLBean.getValue("YesNo_04_01_07").Equals("1") ? "checked='checked'":"" %> />Yes<input name="YesNo_04_01_07" type="radio" value="0" <%:XMLBean.getValue("YesNo_04_01_07").Equals("0") ? "checked='checked'":"" %> />No</div>
                        <span id="ch01_04_01_07_01" class="purple_color con_padding <%:!XMLBean.getValue("YesNo_04_01_07").Equals("1") ? "hide":"" %> act">[If the mood disorder questions have been answered, clinician shouldn't need to revisit them]</span>
            	</div>
            </span><br/>
            <span class="green_color">Are you experiencing things that others say is not really happening? <input name="YesNo_04_02" type="radio" value="1" <%:XMLBean.getValue("YesNo_04_02").Equals("1") ? "checked='checked'":"" %> />Yes<input name="YesNo_04_02" type="radio" value="0" <%:XMLBean.getValue("YesNo_04_02").Equals("0") ? "checked='checked'":"" %> />No</span><br/>
                <div id="ch01_04_02" class="blue_color con_padding hide act">
                <div id="ch01_04_02_01" class="blue_color">Are there things you believe are happening to you but others either don't believe they are occurring or don't recognize the supporting evidence you believe exists? <input name="YesNo_04_02_01" type="radio" value="1" <%:XMLBean.getValue("YesNo_04_02_01").Equals("1") ? "checked='checked'":"" %> />Yes<input name="YesNo_04_02_01" type="radio" value="0" <%:XMLBean.getValue("YesNo_04_02_01").Equals("0") ? "checked='checked'":"" %> />No</div>
                    <span id="ch01_04_02_01_01" class="purple_color con_padding <%:!XMLBean.getValue("YesNo_04_02_01").Equals("1") ? "hide":"" %> act">What is occurring? <input id="ch01_04_02_01_01" name="ch01_04_02_01_01" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_04_02_01_01") %>" /></span><br/>
                <div id="ch01_04_02_02" class="blue_color">Are there things you believe are happening around you (that may or may not be having a direct effect on you) but others either don't believe they are occurring or don't recognize the supporting evidence you believe exists? <input name="YesNo_04_02_02" type="radio" value="1" <%:XMLBean.getValue("YesNo_04_02_02").Equals("1") ? "checked='checked'":"" %> />Yes<input name="YesNo_04_02_02" type="radio" value="0" <%:XMLBean.getValue("YesNo_04_02_02").Equals("0") ? "checked='checked'":"" %> />No</div>
                    <span id="ch01_04_02_02_01" class="purple_color con_padding <%:!XMLBean.getValue("YesNo_04_02_02").Equals("1") ? "hide":"" %> act">What is occurring? <input id="ch01_04_02_02_01" name="ch01_04_02_02_01" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_04_02_02_01") %>" /></span><br/>
                <div id="ch01_04_02_03" class="blue_color">Do you believe you have special talents or abilities but others either don't believe they exist or don't recognize the supporting evidence you believe exists? <input name="YesNo_04_02_03" type="radio" value="1" <%:XMLBean.getValue("YesNo_04_02_03").Equals("1") ? "checked='checked'":"" %> />Yes<input name="YesNo_04_02_03" type="radio" value="0" <%:XMLBean.getValue("YesNo_04_02_03").Equals("0") ? "checked='checked'":"" %> />No</div>
                     <span id="ch01_04_02_03_01" class="purple_color con_padding <%:!XMLBean.getValue("YesNo_04_02_03").Equals("1") ? "hide":"" %> act">What are these? <input id="ch01_04_02_03_01" name="ch01_04_02_03_01" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_04_02_03_01") %>" /></span><br/>
               <div id="ch01_04_02_04" class="blue_color"> Do you see special meaning in things happening around you that others believe are just part of normal everyday occurrences? 
               <br />
               <input name="YesNo_04_02_04" type="radio" value="1" <%:XMLBean.getValue("YesNo_04_02_04").Equals("1") ? "checked='checked'":"" %> />Yes<input name="YesNo_04_02_04" type="radio" value="0" <%:XMLBean.getValue("YesNo_04_02_04").Equals("0") ? "checked='checked'":"" %> />No</div>
                   <span id="ch01_04_02_04_01" class="purple_color con_padding <%:!XMLBean.getValue("YesNo_04_02_04").Equals("1") ? "hide":"" %> act"> What are these? <input id="ch01_04_02_04_01" name="ch01_04_02_04_01" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_04_02_04_01") %>" /></span>
                </div>
         </div>
		<br/>
        <span class="red_color">Are you experiencing any of the following:  problems paying attention, trouble concentrating, easily distracted, unusually hyper and overactive, compulsive behaviors (e.g. hair pulling, gambling, stealing, sexual activity), impulsive anger or aggressive outbursts, or any other difficulty controlling impulsive or compulsive behaviors?  <input name="YesNo_05" type="radio" value="1" <%:XMLBean.getValue("YesNo_05").Equals("1") ? "checked='checked'":"" %> />Yes<input name="YesNo_05" type="radio" value="0" <%:XMLBean.getValue("YesNo_05").Equals("0") ? "checked='checked'":"" %> />No</span><br/>
        <div id="ch01_05" class="con_padding <%:!XMLBean.getValue("YesNo_05").Equals("1") ? "hide":"" %>">
            <div class="green_color">Have you had great difficulty sustaining attention to uninteresting activities, been unusually hyper/impulsive, or both?  
             <br />
             <input name="YesNo_05_01" type="radio" value="1" <%:XMLBean.getValue("YesNo_05_01").Equals("1") ? "checked='checked'":"" %> />Yes<input name="YesNo_05_01" type="radio" value="0" <%:XMLBean.getValue("YesNo_05_01").Equals("0") ? "checked='checked'":"" %> />No<br/>
            	<div id="ch01_05_01" class="blue_color con_padding <%:!XMLBean.getValue("YesNo_05_01").Equals("1") ? "hide":"" %>">
                	<div>Were these difficulties evident in childhood? <input name="YesNo_05_01_01" type="radio" value="1" <%:XMLBean.getValue("YesNo_05_01_01").Equals("1") ? "checked='checked'":"" %> />Yes<input name="YesNo_05_01_01" type="radio" value="0" <%:XMLBean.getValue("YesNo_05_01_01").Equals("0") ? "checked='checked'":"" %> />No<br/>
                        <div id="ch01_05_01_01" class="purple_color con_padding <%:!XMLBean.getValue("YesNo_05_01_01").Equals("1") ? "hide":"" %>">At what age? <input id="ch01_05_01_01" name="ch01_05_01_01" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_05_01_01") %>" /></div>
                    </div>
                	<div>Did these difficulties lead to problems in nearly every area of your life? <input name="YesNo_05_01_02" type="radio" value="1" <%:XMLBean.getValue("YesNo_05_01_02").Equals("1") ? "checked='checked'":"" %> />Yes<input name="YesNo_05_01_02" type="radio" value="0" <%:XMLBean.getValue("YesNo_05_01_02").Equals("0") ? "checked='checked'":"" %> />No</div>
                </div>
          </div><br/>
            <div class="green_color">Have you ever had difficulty controlling your anger or any aggressive impulses? <input name="YesNo_05_02" type="radio" value="1" <%:XMLBean.getValue("YesNo_05_02").Equals("1") ? "checked='checked'":"" %> />Yes<input name="YesNo_05_02" type="radio" value="0" <%:XMLBean.getValue("YesNo_05_02").Equals("0") ? "checked='checked'":"" %> />No<br/>
            	<div id="ch01_05_02" class="blue_color con_padding <%:!XMLBean.getValue("YesNo_05_02").Equals("1") ? "hide":"" %>">
                    <div>Has this ever resulted in injury to yourself or others, damage to property or legal difficulties? <input name="YesNo_05_02_01" type="radio" value="1" <%:XMLBean.getValue("YesNo_05_02_01").Equals("1") ? "checked='checked'":"" %> />Yes<input name="YesNo_05_02_01" type="radio" value="0" <%:XMLBean.getValue("YesNo_05_02_01").Equals("0") ? "checked='checked'":"" %> />No<br/>
                    	<div id="ch01_05_02_01" class="purple_color con_padding <%:!XMLBean.getValue("YesNo_05_02_01").Equals("1") ? "hide":"" %>">
                            <div>Did you injure someone else? <input name="YesNo_05_02_01_01" type="radio" value="1" <%:XMLBean.getValue("YesNo_05_02_01_01").Equals("1") ? "checked='checked'":"" %> />Yes<input name="YesNo_05_02_01_01" type="radio" value="0" <%:XMLBean.getValue("YesNo_05_02_01_01").Equals("0") ? "checked='checked'":"" %> />No<br/>
                                <div id="ch01_05_02_01_01" class="yellow_color con_padding <%:!XMLBean.getValue("YesNo_05_02_01_01").Equals("1") ? "hide":"" %>">Who were they in relationship to you and what were the injuries? <input id="ch01_05_02_01_01" name="ch01_05_02_01_01" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_05_02_01_01") %>" /></div>
                            </div>
                            <div>Did you cause damage to property? <input name="YesNo_05_02_01_02" type="radio" value="1" <%:XMLBean.getValue("YesNo_05_02_01_02").Equals("1") ? "checked='checked'":"" %> />Yes<input name="YesNo_05_02_01_02" type="radio" value="0" <%:XMLBean.getValue("YesNo_05_02_01_02").Equals("0") ? "checked='checked'":"" %> />No<br/>
                                 <div id="ch01_05_02_01_02" class="yellow_color con_padding <%:!XMLBean.getValue("YesNo_05_02_01_02").Equals("1") ? "hide":"" %>">Please explain: <input id="ch01_05_02_01_02" name="ch01_05_02_01_02" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_05_02_01_02") %>" /></div>
                            </div>
                            <div>Did the behavior result in legal difficulties? <input name="YesNo_05_02_01_03" type="radio" value="1" <%:XMLBean.getValue("YesNo_05_02_01_03").Equals("1") ? "checked='checked'":"" %> />Yes<input name="YesNo_05_02_01_03" type="radio" value="0" <%:XMLBean.getValue("YesNo_05_02_01_03").Equals("0") ? "checked='checked'":"" %> />No<br/>
                                 <div id="ch01_05_02_01_03" class="yellow_color con_padding <%:!XMLBean.getValue("YesNo_05_02_01_03").Equals("1") ? "hide":"" %>">Please explain: <input id="ch01_05_02_01_03" name="ch01_05_02_01_03" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_05_02_01_03") %>" /></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div><br/>
            <div class="green_color">Have you had a significant difficulty relating to anyone in authority (e.g. parent, guardian, boss, police) and any attempts by you to control this behavior usually fails? <input name="YesNo_05_03" type="radio" value="1" <%:XMLBean.getValue("YesNo_05_03").Equals("1") ? "checked='checked'":"" %> />Yes<input name="YesNo_05_03" type="radio" value="0" <%:XMLBean.getValue("YesNo_05_03").Equals("0") ? "checked='checked'":"" %> />No<br/>
            	<div id="ch01_05_03" class="blue_color con_padding <%:!XMLBean.getValue("YesNo_05_03").Equals("1") ? "hide":"" %>">
                Did these difficulties begin in childhood in relation to your parent(s), guardian(s), or teacher(s)? <input name="YesNo_05_03_01" type="radio" value="1" <%:XMLBean.getValue("YesNo_05_03_01").Equals("1") ? "checked='checked'":"" %> />Yes<input name="YesNo_05_03_01" type="radio" value="0" <%:XMLBean.getValue("YesNo_05_03_01").Equals("0") ? "checked='checked'":"" %> />No<br/>
                    <div id="ch01_05_03_01" class="purple_color con_padding <%:!XMLBean.getValue("YesNo_05_03_01").Equals("1") ? "hide":"" %>">Did they lead to significant consequences (legal or otherwise)?  <input name="YesNo_05_03_01_01" type="radio" value="1" <%:XMLBean.getValue("YesNo_05_03_01_01").Equals("1") ? "checked='checked'":"" %> />Yes<input name="YesNo_05_03_01_01" type="radio" value="0" <%:XMLBean.getValue("YesNo_05_03_01_01").Equals("0") ? "checked='checked'":"" %> />No<br/>
                         <div id="ch01_05_03_01_01" class="yellow_color con_padding <%:!XMLBean.getValue("YesNo_05_03_01_01").Equals("1") ? "hide":"" %>">Please explain: <input id="ch01_05_03_01_01" name="ch01_05_03_01_01" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_05_03_01_01") %>" /></div>
                    </div>
                </div>
            </div><br/>
            <div class="green_color">Have you intentionally either caused harm to others or animals, or have you intentionally stolen or damaged property that has significant value? <input name="YesNo_05_04" type="radio" value="1" <%:XMLBean.getValue("YesNo_05_04").Equals("1") ? "checked='checked'":"" %> />Yes<input name="YesNo_05_04" type="radio" value="0" <%:XMLBean.getValue("YesNo_05_04").Equals("0") ? "checked='checked'":"" %> />No<br/>
            	<div id="ch01_05_04" class="blue_color con_padding <%:!XMLBean.getValue("YesNo_05_04").Equals("1") ? "hide":"" %>">
                    <div>Were they injuries to others or animals? <input name="YesNo_05_04_01" type="radio" value="1"<%:XMLBean.getValue("YesNo_05_04_01").Equals("1") ? "checked='checked'":"" %> />Yes<input name="YesNo_05_04_01" type="radio" value="0" <%:XMLBean.getValue("YesNo_05_04_01").Equals("0") ? "checked='checked'":"" %> />No<br/>
                        <div id="ch01_05_04_01" class="purple_color con_padding <%:!XMLBean.getValue("YesNo_05_04_01").Equals("1") ? "hide":"" %>">Who were the victims and what was the extent of the injury? <input id="ch01_05_04_01" name="ch01_05_04_01" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_05_04_01") %>" /></div>
                  </div>
                     <div>Was it stolen or damaged property? <input name="YesNo_05_04_02" type="radio" value="1" <%:XMLBean.getValue("YesNo_05_04_02").Equals("1") ? "checked='checked'":"" %> />Yes<input name="YesNo_05_04_02" type="radio" value="0" <%:XMLBean.getValue("YesNo_05_04_02").Equals("0") ? "checked='checked'":"" %> />No<br/>
                          <div id="ch01_05_04_02" class="purple_color con_padding <%:!XMLBean.getValue("YesNo_05_04_02").Equals("1") ? "hide":"" %>">What was the property and was it stolen or damaged? <input id="ch01_05_04_02" name="ch01_05_04_02" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_05_04_02") %>" /></div>
                     </div>
                     <div>What were the consequences of this behavior (legal or otherwise)? <input id="ch01_05_04_03" name="ch01_05_04_03" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_05_04_03") %>" /></div>
              </div>
          </div><br/>
            <div class="green_color">Have you had sporadic (yet numerous) difficulties with substance abuse? <input name="YesNo_05_05" type="radio" value="1" <%:XMLBean.getValue("YesNo_05_05").Equals("1") ? "checked='checked'":"" %> />Yes<input name="YesNo_05_05" type="radio" value="0" <%:XMLBean.getValue("YesNo_05_05").Equals("0") ? "checked='checked'":"" %> />No<br/>
            	<div id="ch01_05_05" class="blue_color con_padding <%:!XMLBean.getValue("YesNo_05_05").Equals("1") ? "hide":"" %>">[If not already walked through substance abuse cluster questions, offer them at this point] *****</div>
            </div><br/>
            <div class="green_color">Have you had either short and numerous relationships or had difficulty maintaining most relationships? <input name="YesNo_05_06" type="radio" value="1" <%:XMLBean.getValue("YesNo_05_06").Equals("1") ? "checked='checked'":"" %> />Yes<input name="YesNo_05_06" type="radio" value="0" <%:XMLBean.getValue("YesNo_05_06").Equals("0") ? "checked='checked'":"" %>/>No<br/>
            	<div id="ch01_05_06" class="blue_color con_padding <%:!XMLBean.getValue("YesNo_05_06").Equals("1") ? "hide":"" %>">
                    <div>Have a significant number of these relationships been sexual? <input name="YesNo_05_06_01" type="radio" value="1" <%:XMLBean.getValue("YesNo_05_06_01").Equals("1") ? "checked='checked'":"" %> />Yes<input name="YesNo_05_06_01" type="radio" value="0" <%:XMLBean.getValue("YesNo_05_06_01").Equals("0") ? "checked='checked'":"" %> />No<br/>
                        <div id="ch01_05_06_01" class="purple_color con_padding <%:!XMLBean.getValue("YesNo_05_06_01").Equals("1") ? "hide":"" %>">Describe them and how they ended: <input id="ch01_05_06_01" name="ch01_05_06_01" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_05_06_01") %>" /></div>
                  </div>
                    <div>Have any of these relationships involved violence, injury or abuse? <input name="YesNo_05_06_02" type="radio" value="1" <%:XMLBean.getValue("YesNo_05_06_02").Equals("1") ? "checked='checked'":"" %> />Yes<input name="YesNo_05_06_02" type="radio" value="0" <%:XMLBean.getValue("YesNo_05_06_02").Equals("0") ? "checked='checked'":"" %> />No<br/>
                       <div id="ch01_05_06_02" class="purple_color con_padding <%:!XMLBean.getValue("YesNo_05_06_02").Equals("1") ? "hide":"" %>"> Describe the violence, injury or abuse: <input id="ch01_05_06_02" name="ch01_05_06_02" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_05_06_02") %>" /></div>
                    </div>
                </div>
            </div><br/>
            <div class="green_color">Have you had difficulty with compulsive behaviors that it seems you can not stop doing even though you may have attempted to stop in the past? <input name="YesNo_05_07" type="radio" value="1" <%:XMLBean.getValue("YesNo_05_07").Equals("1") ? "checked='checked'":"" %> />Yes<input name="YesNo_05_07" type="radio" value="0" <%:XMLBean.getValue("YesNo_05_07").Equals("0") ? "checked='checked'":"" %> />No<br/>
              <div id="ch01_05_07" class="blue_color con_padding <%:!XMLBean.getValue("YesNo_05_07").Equals("1") ? "hide":"" %>">
                <div>Has it involved games of chance? <input name="YesNo_05_07_01" type="radio" value="1" <%:XMLBean.getValue("YesNo_05_07_01").Equals("1") ? "checked='checked'":"" %> />Yes<input name="YesNo_05_07_01" type="radio" value="0" <%:XMLBean.getValue("YesNo_05_07_01").Equals("0") ? "checked='checked'":"" %> />No
                                <div id="ch01_05_07_01" class="purple_color con_padding <%:!XMLBean.getValue("YesNo_05_07_01").Equals("1") ? "hide":"" %>">
                                    <div>What do you gamble on? <br/>
                                    <input name="ch01_05_07_01_01" type="checkbox" value="Horses" <%:"Horses".Equals(XMLBean.getValue("ch01_05_07_01_01")) ? "checked='checked'":"" %> />Horses<br/>
                                    <input name="ch01_05_07_01_02" type="checkbox" value="Casinos" <%:"Casinos".Equals(XMLBean.getValue("ch01_05_07_01_02")) ? "checked='checked'":"" %> />Casinos<br/>
                                    <input name="ch01_05_07_01_03" type="checkbox" value="Cards" <%:"Cards".Equals(XMLBean.getValue("ch01_05_07_01_03")) ? "checked='checked'":"" %> />Cards<br/>
                                    <input name="ch01_05_07_01_04" type="checkbox" value="Lottery" <%:"Lottery".Equals(XMLBean.getValue("ch01_05_07_01_04")) ? "checked='checked'":"" %> />Lottery<br/>
                                    <input name="ch01_05_07_01_05" type="checkbox" value="Personal wagers" <%:"Personal wagers".Equals(XMLBean.getValue("ch01_05_07_01_05")) ? "checked='checked'":"" %> />Personal wagers<br/>
                                    <input name="ch01_05_07_01_06" type="checkbox" value="Sporting event" <%:"Sporting event".Equals(XMLBean.getValue("ch01_05_07_01_06")) ? "checked='checked'":"" %> />Sporting event<br/>
                                    <input name="ch01_05_07_01_07" type="checkbox" value="Office" <%:"Office".Equals(XMLBean.getValue("ch01_05_07_01_07")) ? "checked='checked'":"" %> />Office/work pools<br/>
                                    <input name="ch01_05_07_01_08" type="checkbox" value="Bingo" <%:"Bingo".Equals(XMLBean.getValue("ch01_05_07_01_08")) ? "checked='checked'":"" %> />Bingo<br/>
                                    </div><br/>
                                    <div id="ch01_05_07_01_02">Have you ever tried to change the amount you gamble?<input name="YesNo_05_07_01_02" type="radio" value="1" <%:XMLBean.getValue("YesNo_05_07_01_02").Equals("1") ? "checked='checked'":"" %> />Yes<input name="YesNo_05_07_01_02" type="radio" value="0" <%:XMLBean.getValue("YesNo_05_07_01_02").Equals("0") ? "checked='checked'":"" %> />No</div><br/>
                                    <div>Do you get angry when someone questions or criticizes your gambling? <input name="YesNo_05_07_01_03" type="radio" value="1" <%:XMLBean.getValue("YesNo_05_07_01_03").Equals("1") ? "checked='checked'":"" %> />Yes<input name="YesNo_05_07_01_03" type="radio" value="0" <%:XMLBean.getValue("YesNo_05_07_01_03").Equals("0") ? "checked='checked'":"" %> />No</div><br/>
                                    <div>Have you ever felt guilty because of your gambling? <input name="YesNo_05_07_01_04" type="radio" value="1" <%:XMLBean.getValue("YesNo_05_07_01_04").Equals("1") ? "checked='checked'":"" %> />Yes<input name="YesNo_05_07_01_04" type="radio" value="0" <%:XMLBean.getValue("YesNo_05_07_01_04").Equals("0") ? "checked='checked'":"" %> />No</div><br/>
                                    <div>Have you ever had significant life problems as a result of your gambling? <input name="YesNo_05_07_01_05" type="radio" value="1" <%:!XMLBean.getValue("YesNo_05_07_01_05").Equals("1") ? "checked='checked'":"" %> />Yes<input name="YesNo_05_07_01_05" type="radio" value="0" <%:XMLBean.getValue("YesNo_05_07_01_05").Equals("0") ? "checked='checked'":"" %> />No<br/>
                                        <div id="ch01_05_07_01_05" class="yellow_color con_padding <%:!XMLBean.getValue("YesNo_05_07_01_05").Equals("1") ? "hide":"" %>">Check all that apply: <br/>
                                        <input name="ch01_05_07_01_05_01" type="checkbox" value="Legal" <%:"Legal".Equals(XMLBean.getValue("ch01_05_07_01_05_01")) ? "checked='checked'":"" %>  />Legal<br/>
                                        <input name="ch01_05_07_01_05_02" type="checkbox" value="Family" <%:"Family".Equals(XMLBean.getValue("ch01_05_07_01_05_02")) ? "checked='checked'":"" %> />Family<br/>
                                        <input name="ch01_05_07_01_05_03" type="checkbox" value="Work" <%:"Work".Equals(XMLBean.getValue("ch01_05_07_01_05_03")) ? "checked='checked'":"" %> />Work<br/>
                                        <input name="ch01_05_07_01_05_04" type="checkbox" value="School" <%:"School".Equals(XMLBean.getValue("ch01_05_07_01_05_04")) ? "checked='checked'":"" %> />School<br/>
                                        </div>
                                    </div><br/>
                                    <div>Do you ever sell things or borrow money to use for gambling? <input name="YesNo_05_07_01_06" type="radio" value="1" <%:XMLBean.getValue("YesNo_05_07_01_06").Equals("1") ? "checked='checked'":"" %> />Yes<input name="YesNo_05_07_01_06" type="radio" value="0" <%:XMLBean.getValue("YesNo_05_07_01_06").Equals("0") ? "checked='checked'":"" %> />No</div><br/>
                                    <div>Have you ever been to treatment for gambling addiction? <input name="YesNo_05_07_01_07" type="radio" value="1" <%:XMLBean.getValue("YesNo_05_07_01_07").Equals("1") ? "checked='checked'":"" %> />Yes<input name="YesNo_05_07_01_07" type="radio" value="0" <%:XMLBean.getValue("YesNo_05_07_01_07").Equals("0") ? "checked='checked'":"" %> />No<br/>
                                        <div id="ch01_05_07_01_07" class="yellow_color con_padding <%:!XMLBean.getValue("YesNo_05_07_01").Equals("1") ? "hide":"" %>">
                                           <span><input name="ch01_05_07_01_07_01" type="checkbox" value="1" <%:"1".Equals(XMLBean.getValue("ch01_05_07_01_07_01")) ? "checked='checked'":"" %> />Inpatient<br/></span>
                                                <div id="ch01_05_07_01_07_01" class="dad_color con_padding <%:!"1".Equals(XMLBean.getValue("ch01_05_07_01_07_01")) ? "hide":"" %>">
                                                <p>When? <input id="ch01_05_07_01_07_01_01" name="ch01_05_07_01_07_01_01" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_05_07_01_07_01_01") %>" /></p>
                                                 <p>Where? <input id="ch01_05_07_01_07_01_02" name="ch01_05_07_01_07_01_02" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_05_07_01_07_01_02") %>" /></p>
                                                </div>
                                           <span><input name="ch01_05_07_01_07_02" type="checkbox" value="1" <%:"1".Equals(XMLBean.getValue("ch01_05_07_01_07_02")) ? "checked='checked'":"" %> />Residential<br/></span>
                                                <div id="ch01_05_07_01_07_02" class="dad_color con_padding <%:!"1".Equals(XMLBean.getValue("ch01_05_07_01_07_02")) ? "hide":"" %>">
                                                 <p>When? <input id="ch01_05_07_01_07_02_01" name="ch01_05_07_01_07_02_01" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_05_07_01_07_02_01") %>" /></p>
                                                 <p>Where? <input id="ch01_05_07_01_07_02_02" name="ch01_05_07_01_07_02_02" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_05_07_01_07_02_02") %>" /></p>
                                                </div>
                                           <span><input name="ch01_05_07_01_07_03" type="checkbox" value="1" <%:"1".Equals(XMLBean.getValue("ch01_05_07_01_07_03")) ? "checked='checked'":"" %> />Intensive outpatient<br/></span>
                                                <div id="ch01_05_07_01_07_03" class="dad_color con_padding <%:!"1".Equals(XMLBean.getValue("ch01_05_07_01_07_03")) ? "hide":"" %>">
                                                 <p>When? <input id="ch01_05_07_01_07_03_01" name="ch01_05_07_01_07_03_01" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_05_07_01_07_03_01") %>" /></p>
                                                 <p>Where? <input id="ch01_05_07_01_07_03_02" name="ch01_05_07_01_07_03_02" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_05_07_01_07_03_02") %>" /></p>
                                                </div>
                                           <span><input name="ch01_05_07_01_07_04" type="checkbox" value="1" <%:"1".Equals(XMLBean.getValue("ch01_05_07_01_07_04")) ? "checked='checked'":"" %> />Group<br/></span>
                                                <div id="ch01_05_07_01_07_04" class="dad_color con_padding <%:!"1".Equals(XMLBean.getValue("ch01_05_07_01_07_04")) ? "hide":"" %>">
                                                 <p>When? <input id="ch01_05_07_01_07_04_01" name="ch01_05_07_01_07_04_01" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_05_07_01_07_04_01") %>" /></p>
                                                 <p>Where? <input id="ch01_05_07_01_07_04_02" name="ch01_05_07_01_07_04_02" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_05_07_01_07_04_02") %>" /></p>
                                                </div>
                                        </div>
                                    </div><br/>
                                    <div>Do you attend Gamblers Anonymous? <input name="YesNo_05_07_01_08" type="radio" value="1" <%:XMLBean.getValue("YesNo_05_07_01_08").Equals("1") ? "checked='checked'":"" %> />Yes<input name="YesNo_05_07_01_08" type="radio" value="0" <%:XMLBean.getValue("YesNo_05_07_01_08").Equals("0") ? "checked='checked'":"" %> />No<br/>
                                        <div id="ch01_05_07_01_08" class="yellow_color con_padding <%:!XMLBean.getValue("YesNo_05_07_01_08").Equals("1") ? "hide":"" %>">How often <input id="ch01_05_07_01_08" name="ch01_05_07_01_08_01" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_05_07_01_08") %>" /></div>
                                    </div><br/>
                                    <div>Do you utilize the Gambler's Help Line? <input name="YesNo_05_07_01_09" type="radio" value="1" <%:XMLBean.getValue("YesNo_05_07_01_09").Equals("1") ? "checked='checked'":"" %> />Yes<input name="YesNo_05_07_01_09" type="radio" value="0" <%:XMLBean.getValue("YesNo_05_07_01_09").Equals("0") ? "checked='checked'":"" %> />No<br/>
                                        <div id="ch01_05_07_01_09" class="yellow_color con_padding <%:!XMLBean.getValue("YesNo_05_07_01_09").Equals("1") ? "hide":"" %>">How often <input id="ch01_05_07_01_09" name="ch01_05_07_01_09" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_05_07_01_09") %>" /></div>
                                    <div>
                                </div></div>
                            </div><br/>
                  <span>Has it involved pulling hair or picking at scabs/sores on your body?<input name="YesNo_05_07_02" type="radio" value="1" <%:XMLBean.getValue("YesNo_05_07_02").Equals("1") ? "checked='checked'":"" %> />Yes<input name="YesNo_05_07_02" type="radio" value="0" <%:XMLBean.getValue("YesNo_05_07_02").Equals("0") ? "checked='checked'":"" %> />No<br/>
                   		<div id="ch01_05_07_02" class="purple_color con_padding <%:!"1".Equals(XMLBean.getValue("YesNo_05_07_02")) ? "hide":"" %>">
                                    <div>Has it caused significant hair loss? <input name="YesNo_05_07_02_01" type="radio" value="1" <%:"1".Equals(XMLBean.getValue("YesNo_05_07_02_01")) ? "checked='checked'":"" %> />Yes<input name="YesNo_05_07_02_01" type="radio" value="0" <%:"0".Equals(XMLBean.getValue("YesNo_05_07_02_01")) ? "checked='checked'":"" %> />No<br/>
                                         <div id="ch01_05_07_02_01" class="yellow_color con_padding <%:!"1".Equals(XMLBean.getValue("YesNo_05_07_02_01")) ? "hide":"" %>">Where on your body is the hair loss? <input name="ch01_05_07_02_01" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_05_07_02_01") %>" /></div>
                                    </div>
                                    <div id="ch01_05_07_02_02">If you pick at sores/scabs on your body, where are these areas that are affected? <input name="ch01_05_07_02_02" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_05_07_02_02") %>" /></div>
                                </div>    	
       			  </span>
                             <span>Has it involved sexual behavior? <input name="YesNo_05_07_03" type="radio" value="1" <%:XMLBean.getValue("YesNo_05_07_03").Equals("1") ? "checked='checked'":"" %> />Yes<input name="YesNo_05_07_03" type="radio" value="0" <%:XMLBean.getValue("YesNo_05_07_03").Equals("0") ? "checked='checked'":"" %> />No<br/>
                                <div id="ch01_05_07_03" class="purple_color con_padding <%:!XMLBean.getValue("YesNo_05_07_03").Equals("1") ? "hide":"" %>">
                                    <div>Has it directly caused any illness or STD? <input name="YesNo_05_07_03_01" type="radio" value="1" <%:XMLBean.getValue("YesNo_05_07_03_01").Equals("1") ? "checked='checked'":"" %> />Yes<input name="YesNo_05_07_03_01" type="radio" value="0" <%:XMLBean.getValue("YesNo_05_07_03_01").Equals("0") ? "checked='checked'":"" %> />No<br/>
                                        <div id="ch01_05_07_03_01" class="yellow_color con_padding <%:!XMLBean.getValue("YesNo_05_07_03_01").Equals("1") ? "hide":"" %>">Please explain: <input id="ch01_05_07_03_01" name="ch01_05_07_03_01" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_05_07_03_01") %>" /></div>
                                    </div>
                                    <div id="ch01_05_07_03_02">Approximately how many sexual partners have you had? <input id="ch01_05_07_03_02" name="ch01_05_07_03_02" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_05_07_03_02") %>" /></div>
                                    <div>Have you had any inappropriate sexual partners (e.g. parent, guardian, authority figure, sibling,  or same-sex relationship even though you don't consider yourself homosexual in orientation)? <input name="YesNo_05_07_03_03" type="radio" value="1" <%:XMLBean.getValue("YesNo_05_07_03_03").Equals("1") ? "checked='checked'":"" %> />Yes<input name="YesNo_05_07_03_03" type="radio" value="0" <%:XMLBean.getValue("YesNo_05_07_03_03").Equals("0") ? "checked='checked'":"" %> />No<br/>
                                        <div id="ch01_05_07_03_03" class="yellow_color con_padding <%:!XMLBean.getValue("YesNo_05_07_03_03").Equals("1") ? "hide":"" %>">Please list and describe the relationship(s): <input id="ch01_05_07_03_03" name="ch01_05_07_03_03" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_05_07_03_03") %>" /></div>
                                  </div>
                             </div>
                      </span>
                              <span>Has it involved fire setting? <input name="YesNo_05_07_04" type="radio" value="1" <%:XMLBean.getValue("YesNo_05_07_04").Equals("1") ? "checked='checked'":"" %> />Yes<input name="YesNo_05_07_04" type="radio" value="0" <%:XMLBean.getValue("YesNo_05_07_04").Equals("0") ? "checked='checked'":"" %> />No<br/>
                                   <div id="ch01_05_07_04" class="purple_color con_padding <%:!XMLBean.getValue("YesNo_05_07_04").Equals("1") ? "hide":"" %>">
                                       <div>Was this fire setting done almost exclusively for financial or personal gain? <input name="YesNo_05_07_04_01" type="radio" value="1" <%:XMLBean.getValue("YesNo_05_07_04_01").Equals("1") ? "checked='checked'":"" %> />Yes<input name="YesNo_05_07_04_01" type="radio" value="0" <%:XMLBean.getValue("YesNo_05_07_04_01").Equals("0") ? "checked='checked'":"" %> />No</div>
                                       <div>Did it result in significant damage to property or was any person or animal injured? <input name="YesNo_05_07_04_02" type="radio" value="1" <%:XMLBean.getValue("YesNo_05_07_04_01").Equals("1") ? "checked='checked'":"" %> />Yes<input name="YesNo_05_07_04_02" type="radio" value="0" <%:XMLBean.getValue("YesNo_05_07_04_02").Equals("0") ? "checked='checked'":"" %> />No<br/>
                                            <div id="ch01_05_07_04_02" class="yellow_color con_padding <%:!XMLBean.getValue("YesNo_05_07_04_02").Equals("1") ? "hide":"" %>">Please explain: <input id="ch01_05_07_04_02" name="ch01_05_07_04_02" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_05_07_04_02") %>" /></div>
                                     </div>
                              </div>
                              </span>
                </div><br/>
                <div class="green_color">Have these behaviors occurred almost exclusively in the presence of substance abuse? <input name="YesNo_05_08" type="radio" value="1" <%:XMLBean.getValue("YesNo_05_08").Equals("1") ? "checked='checked'":"" %> />Yes<input name="YesNo_05_08" type="radio" value="0" <%:XMLBean.getValue("YesNo_05_08").Equals("0") ? "checked='checked'":"" %> />No<br/>
            	<div id="ch01_05_08" class="blue_color con_padding <%:!XMLBean.getValue("YesNo_05_08").Equals("1") ? "hide":"" %>">[Offer to take clinician to substance abuse cluster questions or return to same at a later time] ******</div>
          </div><br/>
            <div class="green_color">Are these behaviors often preceded by intense feeling of need or anxiety, and once completed, followed by feelings of intense relief or satisfaction? <input name="YesNo_05_09" type="radio" value="1" <%:XMLBean.getValue("YesNo_05_09").Equals("1") ? "checked='checked'":"" %> />Yes<input name="YesNo_05_09" type="radio" value="0" <%:XMLBean.getValue("YesNo_05_09").Equals("0") ? "checked='checked'":"" %> />No<br/>
                <div id="ch01_05_09" class="blue_color con_padding <%:!XMLBean.getValue("YesNo_05_09").Equals("1") ? "hide":"" %>">Please explain: <input id="ch01_05_09" name="ch01_05_09" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_05_09") %>" /></div>
            </div><br/>
            <div class="green_color">Have you made numerous attempts to control or stop these behaviors without any long term effect? <input name="YesNo_05_10" type="radio" value="1" <%:XMLBean.getValue("YesNo_05_10").Equals("1") ? "checked='checked'":"" %> />Yes<input name="YesNo_05_10" type="radio" value="0" <%:XMLBean.getValue("YesNo_05_10").Equals("0") ? "checked='checked'":"" %> />No<br/>
                <div id="ch01_05_10" class="blue_color con_padding <%:!XMLBean.getValue("YesNo_05_10").Equals("1") ? "hide":"" %>">Has this involved any formal treatment or the help of others?<input name="YesNo_05_10_01" type="radio" value="1" <%:XMLBean.getValue("YesNo_05_10_01").Equals("1") ? "checked='checked'":"" %> />Yes<input name="YesNo_05_10_01" type="radio" value="0" <%:XMLBean.getValue("YesNo_05_10_01").Equals("0") ? "checked='checked'":"" %> />No<br/>
                    <div id="ch01_05_10_01" class="purple_color con_padding <%:!XMLBean.getValue("YesNo_05_10_01").Equals("1") ? "hide":"" %>">Please explain: <input id="ch01_05_10_01" name="ch01_05_10_01" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_05_10_01") %>" /></div>
                </div>
            </div><br/>
            <div class="green_color">Have you continued these behaviors in spite of experiencing numerous significant consequences as a result (e.g. financial, legal, relational, disease/injury)? <input name="YesNo_05_11" type="radio" value="1" <%:XMLBean.getValue("YesNo_05_11").Equals("1") ? "checked='checked'":"" %> />Yes<input name="YesNo_05_11" type="radio" value="0" <%:XMLBean.getValue("YesNo_05_11").Equals("0") ? "checked='checked'":"" %> />No<br/>
                <div id="ch01_05_11" class="blue_color con_padding <%:!XMLBean.getValue("YesNo_05_11").Equals("1") ? "hide":"" %>">Please list and describe the consequences experienced: <input id="ch01_05_11" name="ch01_05_11" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_05_11") %>" /></div>
          </div>
     </div><br/>
              </div>
            </div><br/>
           
     <span class="red_color">Have you recently experienced any of the following:  Significant anxiety, repeated ER visits for somatic complaints without them finding any source, re-experiencing past traumatic experiences, social avoidance, significantly heightened awareness/startle/vigilance, obsessive thoughts, compulsive behaviors, significant fear of specific things, or avoidance of experiences you fear will lead to anxiety or negative outcomes? 
     <br />
     <input name="YesNo_06" type="radio" value="1" <%:"1".Equals(XMLBean.getValue("YesNo_06")) ? "checked='checked'":"" %> />Yes<input name="YesNo_06" type="radio" value="0" <%:"0".Equals(XMLBean.getValue("YesNo_06")) ? "checked='checked'":"" %> />No</span><br/>
     <div id="ch01_06" class="con_padding <%:!"1".Equals(XMLBean.getValue("YesNo_06")) ? "hide":"" %>">
        <div class="green_color">Have you had discrete episodes of panic, where you feel consumed by some feeling of impending doom or negative outcome (with or without associated physical symptoms)? <input name="YesNo_06_01" type="radio" value="1" <%:"1".Equals(XMLBean.getValue("YesNo_06_01")) ? "checked='checked'":"" %> />Yes<input name="YesNo_06_01" type="radio" <%:"0".Equals(XMLBean.getValue("YesNo_06_01")) ? "checked='checked'":"" %> />No<br/>
        	<div id="ch01_06_01" class="blue_color con_padding <%:!"1".Equals(XMLBean.getValue("YesNo_06_01")) ? "hide":"" %>">
                <div>Have these episodes led to your avoidance of things/experiences you fear will lead to additional episodes? <input name="YesNo_06_01_01" type="radio" value="1" <%:"1".Equals(XMLBean.getValue("YesNo_06_01_01")) ? "checked='checked'":"" %> />Yes<input name="YesNo_06_01_01" type="radio" value="0" <%:"0".Equals(XMLBean.getValue("YesNo_06_01_01")) ? "checked='checked'":"" %> />No<br/>
                    <div id="ch01_06_01_01" class="purple_color con_padding <%:!"1".Equals(XMLBean.getValue("YesNo_06_01_01")) ? "hide":"" %>">Have they led to you being nearly completely housebound? <input name="YesNo_06_01_01_01" type="radio" value="1" <%:"1".Equals(XMLBean.getValue("YesNo_06_01_01_01")) ? "checked='checked'":"" %> />Yes<input name="YesNo_06_01_01_01" type="radio" value="0" <%:"0".Equals(XMLBean.getValue("YesNo_06_01_01_01")) ? "checked='checked'":"" %> />No
                        <div id="ch01_06_01_01_01"  class="yellow_color con_padding2 <%:!"1".Equals(XMLBean.getValue("YesNo_06_01_01_01")) ? "hide":"" %>">Please describe your daily routine: <input id="ch01_06_01_01_01" name="ch01_06_01_01_01" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_06_01_01_01") %>" /></div>
                    </div>
                </div><br/>
                <div>What has been the frequency of these episodes (per day, week or month)? <input id="ch01_06_01_02" name="ch01_06_01_02" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_06_01_02") %>" /></div><br/>
                <div>Please describe the character of these episodes: <input id="ch01_06_01_03" name="ch01_06_01_03" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_06_01_03") %>" /></div><br/>
                <div>Have you had any physical symptoms associated with these episodes? <input name="YesNo_06_01_04" type="radio" value="1" <%:"1".Equals(XMLBean.getValue("YesNo_06_01_04")) ? "checked='checked'":"" %> />Yes<input name="YesNo_06_01_04" type="radio" value="0" <%:"0".Equals(XMLBean.getValue("YesNo_06_01_04")) ? "checked='checked'":"" %> />No<br/>
                    <div id="ch01_06_01_04" class="purple_color con_padding <%:!"1".Equals(XMLBean.getValue("YesNo_06_01_04")) ? "hide":"" %>">Please list and describe them: <input id="ch01_06_01_04" name="ch01_06_01_04" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_06_01_04") %>" /></div>
                </div>
            </div>
        </div><br/>
        <div class="green_color">Do you feel a nearly uncontrollable level of background stress or anxiety most days and most of each day? <input name="YesNo_06_02" type="radio" value="1" <%:"1".Equals(XMLBean.getValue("YesNo_06_02")) ? "checked='checked'":"" %> />Yes<input name="YesNo_06_02" type="radio" value="0" <%:"0".Equals(XMLBean.getValue("YesNo_06_02")) ? "checked='checked'":"" %> />No<br/>
            <div id="ch01_06_02" class="blue_color con_padding <%:!"1".Equals(XMLBean.getValue("YesNo_06_02")) ? "hide":"" %>">
            	<div>Has this experience had a negative effect(s) on any of the following:  Employment, education, or relationship(s)? <input name="YesNo_06_02_01" type="radio" value="1" <%:"1".Equals(XMLBean.getValue("YesNo_06_02_01")) ? "checked='checked'":"" %> />Yes<input name="YesNo_06_02_01" type="radio" value="0" <%:"0".Equals(XMLBean.getValue("YesNo_06_02_01")) ? "checked='checked'":"" %> />No<br/>
                	<div id="ch01_06_02_01" class="purple_color con_padding <%:!"1".Equals(XMLBean.getValue("YesNo_06_02_01")) ? "hide":"" %>">Please list and describe them:<input id="ch01_06_02_01" name="ch01_06_02_01" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_06_02_01") %>" /></div>
                </div>
            </div>
        </div><br/>
        <div class="green_color">Have you ever had what you would consider an extremely traumatizing experience (or experiences)? <input name="YesNo_06_03" type="radio" value="1" <%:"1".Equals(XMLBean.getValue("YesNo_06_03")) ? "checked='checked'":"" %> />Yes<input name="YesNo_06_03" type="radio" value="0" <%:"0".Equals(XMLBean.getValue("YesNo_06_03")) ? "checked='checked'":"" %> />No<br/>
            <div id="ch01_06_03" class="blue_color con_padding <%:!"1".Equals(XMLBean.getValue("YesNo_06_03")) ? "hide":"" %>">
                <div>Please list and describe them: <input id="ch01_06_03_01" name="ch01_06_03_01" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_06_03_01") %>" /></div>
                <div>Do you ever re-experience any component of these remembered events (in dreams or otherwise)? <input name="YesNo_06_03_02" type="radio" value="1" <%:"1".Equals(XMLBean.getValue("YesNo_06_03_02")) ? "checked='checked'":"" %> />Yes<input name="YesNo_06_03_02" type="radio" value="0" <%:"0".Equals(XMLBean.getValue("YesNo_06_03_02")) ? "checked='checked'":"" %>/>No<br/>
                    <div id="ch01_06_03_02" class="purple_color con_padding <%:!"1".Equals(XMLBean.getValue("YesNo_06_03_02")) ? "hide":"" %>">Please list and describe them including how intense you feel they are: <input id="ch01_06_03_02" name="ch01_06_03_02" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_06_03_02") %>" /></div>
                </div>
                <div>Have you avoided anyone or anything you fear may lead to or intensify a re-experience of these traumatic events? 
                <br />
                 <input name="YesNo_06_03_03" type="radio" value="1" <%:"1".Equals(XMLBean.getValue("YesNo_06_03_03")) ? "checked='checked'":"" %> />Yes<input name="YesNo_06_03_03" type="radio" value="0" <%:"0".Equals(XMLBean.getValue("YesNo_06_03_03")) ? "checked='checked'":"" %>/>No<br/>
                    <div id="ch01_06_03_03" class="purple_color con_padding <%:!"1".Equals(XMLBean.getValue("YesNo_06_03_03")) ? "hide":"" %>">Please list and describe your rationale for avoiding: <input id="ch01_06_03_03" name="ch01_06_03_03" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_06_03_03") %>" /></div>
                </div>
                <div>Do you have any physical effects (whether or not they've been medically confirmed/documented) as a result of the traumatic event? <input name="YesNo_06_03_04" type="radio" value="1" <%:"1".Equals(XMLBean.getValue("YesNo_06_03_04")) ? "checked='checked'":"" %> />Yes<input name="YesNo_06_03_04" type="radio" value="0" <%:"0".Equals(XMLBean.getValue("YesNo_06_03_04")) ? "checked='checked'":"" %> />No<br/>
                    <div id="ch01_06_03_04" class="purple_color con_padding <%:!"1".Equals(XMLBean.getValue("YesNo_06_03_02")) ? "hide":"" %>">Please list and describe them: <input id="ch01_06_03_04" name="ch01_06_03_04" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_06_03_04") %>" /></div>
                </div>
                <div>Do you feel you have a heightened level of anticipation or startle reaction  associated with needing to avoid any chance of having a repeat of the traumatic event(s)? <input name="YesNo_06_03_05" type="radio" value="1" <%:"1".Equals(XMLBean.getValue("YesNo_06_03_05")) ? "checked='checked'":"" %> />Yes<input name="YesNo_06_03_05" type="radio" value="0" <%:"0".Equals(XMLBean.getValue("YesNo_06_03_05")) ? "checked='checked'":"" %> />No<br/>
                    <div id="ch01_06_03_05" class="purple_color con_padding <%:!"1".Equals(XMLBean.getValue("YesNo_06_03_05")) ? "hide":"" %>">Please describe how this feels and what you experience: <input id="ch01_06_03_05" name="ch01_06_03_05" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_06_03_05") %>" /></div>
                </div>
            </div>
        </div><br/>
        <div class="green_color">Do you experience intrusive, obsessive thoughts (realistic in nature or not) that you can't seem to stop thinking about in spite of repeated attempts to make them go away? <input name="YesNo_06_04" type="radio" value="1" <%:"1".Equals(XMLBean.getValue("YesNo_06_04")) ? "checked='checked'":"" %> />Yes<input name="YesNo_06_04" type="radio" value="0" <%:"0".Equals(XMLBean.getValue("YesNo_06_04")) ? "checked='checked'":"" %> />No<br/>
        	<div id="ch01_06_04" class="blue_color con_padding <%:!"1".Equals(XMLBean.getValue("YesNo_06_04")) ? "hide":"" %>">
                <div>Please describe them and give an approximation of how much of each day is occupied by thinking about them: <input id="ch01_06_04_01" name="ch01_06_04_01" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_06_04_01") %>" /></div><br/>
                <div> What have you done or thought about doing in an attempt to stop having these obsessive thoughts? <input id="ch01_06_04_02" name="ch01_06_04_02" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_06_04_02") %>" /></div><br/>
                <div>Have these feelings been nearly exclusively the result of or associated with some type of substance use or abuse? 
                <br />
                <input name="YesNo_06_04_03" type="radio" value="1" <%:"1".Equals(XMLBean.getValue("YesNo_06_04_03")) ? "checked='checked'":"" %> />Yes<input name="YesNo_06_04_03" type="radio" value="0" <%:"0".Equals(XMLBean.getValue("YesNo_06_04_03")) ? "checked='checked'":"" %> />No<br/>
                	<div id="ch01_06_04_03" class="purple_color con_padding <%:!"1".Equals(XMLBean.getValue("YesNo_06_04_03")) ? "hide":"" %>">[If not already completed, offer to take the clinician to the substance abuse cluster questions] *****</div>
                </div>
            </div>
        </div><br/>
        <div class="green_color">Do you perform repeated actions of any type in a compulsive manner (i.e. the action must be repeated in order to give you some reassurance or peace that either something positive will happen or something negative will not happen)? <input name="YesNo_06_05" type="radio" value="1" <%:"1".Equals(XMLBean.getValue("YesNo_06_05")) ? "checked='checked'":"" %> />Yes<input name="YesNo_06_05" type="radio" value="0" <%:"0".Equals(XMLBean.getValue("YesNo_06_05")) ? "checked='checked'":"" %> />No<br/>
        	<div id="ch01_06_05" class="blue_color con_padding <%:!"1".Equals(XMLBean.getValue("YesNo_06_05")) ? "hide":"" %>">
                <div>Do you consider these actions needed and rational? <input name="YesNo_06_05_01" type="radio" value="1" <%:"1".Equals(XMLBean.getValue("YesNo_06_05_01")) ? "checked='checked'":"" %> />Yes<input name="YesNo_06_05_01" type="radio" value="0" <%:"0".Equals(XMLBean.getValue("YesNo_06_05_01")) ? "checked='checked'":"" %> />No<br/>
            		</div>
                <div>Please describe them, how often they occur and how much of your day is occupied by them: <input id="ch01_06_05_01" name="ch01_06_05_01" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_06_05_01") %>" />
                </div>
                <div>Do others generally consider these actions needed and rational? <input name="YesNo_06_05_02" type="radio" value="1" <%:"1".Equals(XMLBean.getValue("YesNo_06_05_02")) ? "checked='checked'":"" %> />Yes<input name="YesNo_06_05_02" type="radio" value="0" <%:"0".Equals(XMLBean.getValue("YesNo_06_05_02")) ? "checked='checked'":"" %> />No<br/>
            		<div id="ch01_06_05_02" class="purple_color con_padding <%:"1".Equals(XMLBean.getValue("YesNo_06_05_02")) ? "hide":"" %>">If not, what kind of feedback do you generally get when these actions are either described by you to others or witnessed by others? <input id="ch01_06_05_02" name="ch01_06_05_02" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_06_05_02") %>" /></div>
                </div>
            	<div>Have these actions had (as considered by you or anyone else) a negative effect on you or your life? Y/N<input name="YesNo_06_05_03" type="radio" value="1" <%:"1".Equals(XMLBean.getValue("YesNo_06_05_03")) ? "checked='checked'":"" %> />Yes<input name="YesNo_06_05_03" type="radio" value="0" <%:"0".Equals(XMLBean.getValue("YesNo_06_05_03")) ? "checked='checked'":"" %> />No<br/>
               		<div id="ch01_06_05_03" class="purple_color con_padding <%:"1".Equals(XMLBean.getValue("YesNo_06_05_03")) ? "hide":"" %>">Please list and describe: <input id="ch01_06_05_03" name="ch01_06_05_03" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_06_05_03") %>" /></div>
                </div>
            	<div>Have these feelings been nearly exclusively the result of or associated with some type of substance use or abuse? 
                <br />
                <input name="YesNo_06_05_04" type="radio" value="1" <%:"1".Equals(XMLBean.getValue("YesNo_06_05_04")) ? "checked='checked'":"" %> />Yes<input name="YesNo_06_05_04" type="radio" value="0" <%:"0".Equals(XMLBean.getValue("YesNo_06_05_04")) ? "checked='checked'":"" %> />No<br/>
            		<div id="ch01_06_05_04" class="purple_color con_padding <%:"1".Equals(XMLBean.getValue("YesNo_06_05_04")) ? "hide":"" %>">[If not already completed, offer to take the clinician to the substance abuse cluster questions] ****</div>
                </div>
            </div>
        </div><br/>
        <div class="green_color">Are there social or performance situations which (when experienced) lead to a significant level of anxiety/stress (with or without physical symptoms)? <input name="YesNo_06_06" type="radio" value="1" <%:"1".Equals(XMLBean.getValue("YesNo_06_06")) ? "checked='checked'":"" %> />Yes<input name="YesNo_06_06" type="radio" value="0" <%:"0".Equals(XMLBean.getValue("YesNo_06_06")) ? "checked='checked'":"" %> />No<br/>
        	<div id="ch01_06_06" class="blue_color con_padding <%:!"1".Equals(XMLBean.getValue("YesNo_06_06")) ? "hide":"" %>">
                <div>Are these limited to performances of any type (e.g. playing an instrument solo, singing on a stage, giving a speech, giving a sermon, giving a job presentation)? <input name="YesNo_06_06_01" type="radio" value="1" <%:"1".Equals(XMLBean.getValue("YesNo_06_06_01")) ? "checked='checked'":"" %> />Yes<input name="YesNo_06_06_01" type="radio" value="0" <%:"0".Equals(XMLBean.getValue("YesNo_06_06_01")) ? "checked='checked'":"" %> />No<br/>
                    <div id="ch01_06_06_01" class="purple_color con_padding <%:!"1".Equals(XMLBean.getValue("YesNo_06_06_01")) ? "hide":"" %>">Please list and describe: <input id="ch01_06_06_01" name="ch01_06_06_01" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_06_06_01") %>" /></div>
              </div>
                 <div>Does this occur in social situations? <input name="YesNo_06_06_02" type="radio" value="1" <%:"1".Equals(XMLBean.getValue("YesNo_06_06_02")) ? "checked='checked'":"" %> />Yes<input name="YesNo_06_06_02" type="radio" value="0" <%:"0".Equals(XMLBean.getValue("YesNo_06_06_02")) ? "checked='checked'":"" %> />No<br/>
                 	  <div id="ch01_06_06_02" class="purple_color con_padding <%:!"1".Equals(XMLBean.getValue("YesNo_06_06_02")) ? "hide":"" %>">
                          <div>Is it limited to situations which are new to you? <input name="YesNo_06_06_02_01" type="radio" value="1" <%:"1".Equals(XMLBean.getValue("YesNo_06_06_02_01")) ? "checked='checked'":"" %> />Yes<input name="YesNo_06_06_02_01" type="radio" value="0" <%:"0".Equals(XMLBean.getValue("YesNo_06_06_02_01")) ? "checked='checked'":"" %> />No<br/>
                               <div id="ch01_06_06_02_01" class="yellow_color con_padding <%:!"1".Equals(XMLBean.getValue("YesNo_06_06_02_01")) ? "hide":"" %>">Please list and describe: <input id="ch01_06_06_02_01" name="ch01_06_06_02_01" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_06_06_02_01") %>" /></div>
                          </div>
                          <div>Does it occur in nearly all social experiences? <input name="YesNo_06_06_02_02" type="radio" value="1" <%:"1".Equals(XMLBean.getValue("YesNo_06_06_02_02")) ? "checked='checked'":"" %> />Yes<input name="YesNo_06_06_02_02" type="radio" value="0" <%:"0".Equals(XMLBean.getValue("YesNo_06_06_02_02")) ? "checked='checked'":"" %>/>No<br/>
                               <div id="ch01_06_06_02_02" class="yellow_color con_padding <%:!"1".Equals(XMLBean.getValue("YesNo_06_06_02_02")) ? "hide":"" %>">Please list and describe: <input id="ch01_06_06_02_02" name="ch01_06_06_02_02" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_06_06_02_02") %>" /></div>
                          </div>
                          <div>Has it led to your avoidance of subsequent social opportunities or isolation from others? <input name="YesNo_06_06_02_03" type="radio" value="1" <%:"1".Equals(XMLBean.getValue("YesNo_06_06_02_03")) ? "checked='checked'":"" %> />Yes<input name="YesNo_06_06_02_03" type="radio" value="0" <%:"0".Equals(XMLBean.getValue("YesNo_06_06_02_03")) ? "checked='checked'":"" %> />No<br/>
                               <div id="ch01_06_06_02_03" class="yellow_color con_padding <%:!"1".Equals(XMLBean.getValue("YesNo_06_06_02_03")) ? "hide":"" %>">Please list and describe: <input id="ch01_06_06_02_03" name="ch01_06_06_02_03" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_06_06_02_03") %>" /></div>
                          </div>
                   </div>
              </div>
                 <div>What other negative effects (if any) have these feelings/experiences had on you or your life? <input id="ch01_06_06_03" name="ch01_06_06_03" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_06_06_03") %>" /></div>		
                 <div>Have these feelings been nearly exclusively the result of or associated with some type of substance use or abuse? <input name="YesNo_06_06_04" type="radio" value="1" <%:"1".Equals(XMLBean.getValue("YesNo_06_06_04")) ? "checked='checked'":"" %> />Yes<input name="YesNo_06_06_04" type="radio" value="0" <%:"0".Equals(XMLBean.getValue("YesNo_06_06_04")) ? "checked='checked'":"" %> />No<br/>
                 	<div id="ch01_06_06_04" class="purple_color con_padding <%:!"1".Equals(XMLBean.getValue("YesNo_06_06_04")) ? "hide":"" %>">[If not already completed, offer to take the clinician to the substance abuse cluster questions] *****</div>
                 </div>
            </div>
        </div><br/>
        <div class="green_color">Are there items (animate or inanimate) or experiences which, when experienced lead to intense anxiety for you and are always (or nearly always) avoided by you when possible? <input name="YesNo_06_07" type="radio" value="1" <%:"1".Equals(XMLBean.getValue("YesNo_06_07")) ? "checked='checked'":"" %> />Yes<input name="YesNo_06_07" type="radio" value="0" <%:"0".Equals(XMLBean.getValue("YesNo_06_07")) ? "checked='checked'":"" %> />No<br/>
       		<div id="ch01_06_07" class="blue_color con_padding <%:!"1".Equals(XMLBean.getValue("YesNo_06_07")) ? "hide":"" %>">1.	Please list them and describe your reactions/feelings towards them: <input name="ch01_06_07" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch01_06_07") %>" /></div>
        </div>
	</div><br/>
	</div>
    <span class="title_bold"><img src="../../Content/images/tree/tree_less.gif" id="img02" width="9" height="9" />&nbsp;&nbsp;II.	HISTORY OF PREVIOUS MENTAL HEALTH TREATMENT</span><a name="menu2" id="menu2"></a><br/>
    <div id="ch02" class="con_padding">
         <span class="red_color">Have you ever experienced mental health problems? Any previous mental health services? <input name="YesNo2_01" type="radio" value="1" <%:"1".Equals(XMLBean.getValue("YesNo2_01")) ? "checked='checked'":"" %> />Yes<input name="YesNo2_01" type="radio" value="0" <%:"0".Equals(XMLBean.getValue("YesNo2_01")) ? "checked='checked'":"" %> />No</span><br/>
         <div id="ch02_01" class="green_color con_padding <%:!"1".Equals(XMLBean.getValue("YesNo2_01")) ? "hide":"" %>">
              <div>Have you ever attempted suicide?  <input name="YesNo2_01_01" type="radio" value="1" <%:"1".Equals(XMLBean.getValue("YesNo2_01_01")) ? "checked='checked'":"" %> />Yes<input name="YesNo2_01_01" type="radio" value="0" <%:"0".Equals(XMLBean.getValue("YesNo2_01_01")) ? "checked='checked'":"" %> />No<br/>
                    <div id="ch02_01_01" class="blue_color con_padding <%:!"1".Equals(XMLBean.getValue("YesNo2_01_01")) ? "hide":"" %>">
                        <div>What did the attempt(s) involve? <input name="ch02_01_01_01" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch02_01_01_01") %>" /></div>
                        <div>Were others aware of your attempt(s)? <input name="YesNo2_01_01_02" type="radio" value="1" <%:"1".Equals(XMLBean.getValue("YesNo2_01_01_02")) ? "checked='checked'":"" %> />Yes<input name="YesNo2_01_01_02" type="radio" value="0" <%:"0".Equals(XMLBean.getValue("YesNo2_01_01_02")) ? "checked='checked'":"" %> />No<br/>
                            <div id="ch02_01_01_02" class="purple_color con_padding <%:!"1".Equals(XMLBean.getValue("YesNo2_01_01_02")) ? "hide":"" %>">What was their reaction? <input name="ch02_01_01_02" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch02_01_01_02") %>" /></div>
                        </div>
                        <div>Were you hospitalized as a result of the attempt(s)? <input name="YesNo2_01_01_03" type="radio" value="1" <%:"1".Equals(XMLBean.getValue("YesNo2_01_01_03")) ? "checked='checked'":"" %> />Yes<input name="YesNo2_01_01_03" type="radio" value="0" <%:"0".Equals(XMLBean.getValue("YesNo2_01_01_03")) ? "checked='checked'":"" %> />No<br/>
                            <div id="ch02_01_01_03" class="purple_color con_padding <%:!"1".Equals(XMLBean.getValue("YesNo2_01_01_03")) ? "hide":"" %>">
                            <p>Where?<input name="ch02_01_01_03_01" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch02_01_01_03_01") %>" /></p>
                            <p>For how long? <input name="ch02_01_01_03_02" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch02_01_01_03_02") %>" /></p>
                            </div>
                        </div>
                    </div>
           </div><br/>
                <div>Have you ever been in treatment before?  <input name="YesNo2_01_02" type="radio" value="1" <%:"1".Equals(XMLBean.getValue("YesNo2_01_02")) ? "checked='checked'":"" %> />Yes<input name="YesNo2_01_02" type="radio" value="0" <%:"0".Equals(XMLBean.getValue("YesNo2_01_02")) ? "checked='checked'":"" %> />No<br/>
                	 <div id="ch02_01_02" class="blue_color con_padding <%:!"1".Equals(XMLBean.getValue("YesNo2_01_02")) ? "hide":"" %>">
                    	<div><input name="ch02_01_02_01" type="checkbox" value="1" <%:"1".Equals(XMLBean.getValue("ch02_01_02_01")) ? "checked='checked'":"" %> />Inpatient (list)
                        	<div id="ch02_01_02_01" class="purple_color con_padding <%:!"1".Equals(XMLBean.getValue("ch02_01_02_01")) ? "hide":"" %>">
                                <div>When? <input name="ch02_01_02_01_01" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch02_01_02_01_01") %>" /><br/><br/>
                                	<div class="con_padding">
                                    <p>Where? <input name="ch02_01_02_01_01_01" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch02_01_02_01_01_01") %>" /> </p>
                                    <p>For how long? <input name="ch02_01_02_01_01_02" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch02_01_02_01_01_02") %>" /></p>
                                    </div>
                                </div>
                                <div>When? <input name="ch02_01_02_01_02" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch02_01_02_01_02") %>" /><br/><br/>
                                	<div class="con_padding">
                                    <p>Where? <input name="ch02_01_02_01_02_01" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch02_01_02_01_02_01") %>" /> </p>
                                    <p>For how long? <input name="ch02_01_02_01_02_02" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch02_01_02_01_02_02") %>" /></p>
                                    </div>
                                </div>
                                <div>When? <input name="ch02_01_02_01_03" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch02_01_02_01_03") %>" /><br/><br/>
                                	<div class="con_padding">
                                    <p>Where? <input name="ch02_01_02_01_03_01" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch02_01_02_01_03_01") %>" /> </p>
                                    <p>For how long? <input name="ch02_01_02_01_03_02" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch02_01_02_01_03_02") %>" /></p>
                                    </div>
                                </div>
                                <div>When? <input name="ch02_01_02_01_04" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch02_01_02_01_04") %>" /><br/><br/>
                                	<div class="con_padding">
                                    <p>Where? <input name="ch02_01_02_01_04_01" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch02_01_02_01_04_01") %>" /> </p>
                                    <p>For how long? <input name="ch02_01_02_01_04_02" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch02_01_02_01_04_02") %>" /></p>
                                    </div>
                                </div>
                                <div>When? <input name="ch02_01_02_01_05" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch02_01_02_01_05") %>" /><br/><br/>
                                	<div class="con_padding">
                                    <p>Where? <input name="ch02_01_02_01_05_01" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch02_01_02_01_05_01") %>" /> </p>
                                    <p>For how long? <input name="ch02_01_02_01_05_02" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch02_01_02_01_05_02") %>" /></p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    	<div><input name="ch02_01_02_02" type="checkbox" value="1" <%:"1".Equals(XMLBean.getValue("ch02_01_02_02")) ? "checked='checked'":"" %> />Outpatient (list)
                        	<div id="ch02_01_02_02" class="purple_color con_padding <%:!"1".Equals(XMLBean.getValue("ch02_01_02_02")) ? "hide":"" %>">
                                <div>When? <input name="ch02_01_02_02_01" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch02_01_02_02_01") %>" /><br/><br/>
                                	<div class="con_padding">
                                    <p>Where? <input name="ch02_01_02_02_01_01" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch02_01_02_02_01_01") %>" /> </p>
                                    <p>For how long? <input name="ch02_01_02_02_01_02" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch02_01_02_02_01_02") %>" /></p>
                                    </div>
                                </div>
                                <div>When? <input name="ch02_01_02_02_02" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch02_01_02_02_02") %>" /><br/><br/>
                                	<div class="con_padding">
                                    <p>Where? <input name="ch02_01_02_02_02_01" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch02_01_02_02_02_01") %>" /> </p>
                                    <p>For how long? <input name="ch02_01_02_02_02_02" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch02_01_02_02_02_02") %>" /></p>
                                    </div>
                                </div>
                                <div>When? <input name="ch02_01_02_02_03" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch02_01_02_02_03") %>" /><br/><br/>
                                	<div class="con_padding">
                                    <p>Where? <input name="ch02_01_02_02_03_01" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch02_01_02_02_03_01") %>" /> </p>
                                    <p>For how long? <input name="ch02_01_02_02_03_02" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch02_01_02_02_03_02") %>" /></p>
                                    </div>
                                </div>
                                <div>When? <input name="ch02_01_02_02_04" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch02_01_02_02_04") %>" /><br/><br/>
                                	<div class="con_padding">
                                    <p>Where? <input name="ch02_01_02_02_04_01" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch02_01_02_02_04_01") %>" /> </p>
                                    <p>For how long? <input name="ch02_01_02_02_04_02" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch02_01_02_02_04_02") %>" /></p>
                                    </div>
                                </div>
                                <div>When? <input name="ch02_01_02_02_05" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch02_01_02_02_05") %>" /><br/><br/>
                               	  <div class="con_padding">
                                    <p>Where? <input name="ch02_01_02_02_05_01" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch02_01_02_02_05_01") %>" /> </p>
                                    <p>For how long? <input name="ch02_01_02_02_05_02" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch02_01_02_02_05_02") %>" /></p>
                                  </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div><br/>  
                <div>Did you take any medications for your difficulties during any of these treatments (list)? <input name="YesNo2_01_03" type="radio" value="1" <%:"1".Equals(XMLBean.getValue("YesNo2_01_03")) ? "checked='checked'":"" %> />Yes<input name="YesNo2_01_03" type="radio" value="0" <%:"0".Equals(XMLBean.getValue("YesNo2_01_03")) ? "checked='checked'":"" %> />No<br/>
                     <div id="ch02_01_03" class="blue_color con_padding <%:!"1".Equals(XMLBean.getValue("YesNo2_01_03")) ? "hide":"" %>">
                        <div>1. <input name="ch02_01_03_01" type="text" class="inputTxt" value="<%=XMLBean.getValue("ch02_01_03_01") %>" />
                        	<div id="ch02_01_03_01" class="purple_color con_padding <%:"".Equals(XMLBean.getValue("ch02_01_03_01")) ? "hide":"" %>">
                            <p>What was your dose? <input name="ch02_01_03_01_01" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch02_01_03_01_01") %>" /></p>
                            <p>How often taken each day? <input name="ch02_01_03_01_02" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch02_01_03_01_02") %>" /></p>
                            <p>How long were you on it uninterrupted? <input name="ch02_01_03_01_03" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch02_01_03_01_03") %>" /></p>
                            <p>Was it at all effective? 
                              <select name="ch02_01_03_01_04" class="select_max">
                                <option value="not effective" <%:"not effective".Equals(XMLBean.getValue("ch02_01_03_01_04")) ? "selected=\"selected\"":"" %>>not effective</option>
                                <option value="somewhat effective" <%:"somewhat effective".Equals(XMLBean.getValue("ch02_01_03_01_04")) ? "selected=\"selected\"":"" %>>somewhat effective</option>
                                <option value="moderately effective" <%:"moderately effective".Equals(XMLBean.getValue("ch02_01_03_01_04")) ? "selected=\"selected\"":"" %>>moderately effective</option>
                                <option value="very effective" <%:"very effective".Equals(XMLBean.getValue("ch02_01_03_01_04")) ? "selected=\"selected\"":"" %>>very effective</option>
                              </select>
                            </p>
                            </div>
                        </div><br/>
                        <div>2. <input name="ch02_01_03_02" type="text" class="inputTxt" value="<%=XMLBean.getValue("ch02_01_03_02") %>" />
                        	<div id="ch02_01_03_02" class="purple_color con_padding <%:"".Equals(XMLBean.getValue("ch02_01_03_02")) ? "hide":"" %>">
                            <p>What was your dose? <input name="ch02_01_03_02_01" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch02_01_03_02_01") %>" /></p>
                            <p>How often taken each day? <input name="ch02_01_03_02_02" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch02_01_03_02_02") %>" /></p>
                            <p>How long were you on it uninterrupted? <input name="ch02_01_03_02_03" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch02_01_03_02_03") %>" /></p>
                            <p>Was it at all effective? 
                              <select name="ch02_01_03_02_04" class="select_max">
                                <option value="not effective" <%:"not effective".Equals(XMLBean.getValue("ch02_01_03_02_04")) ? "selected=\"selected\"":"" %>>not effective</option>
                                <option value="somewhat effective" <%:"somewhat effective".Equals(XMLBean.getValue("ch02_01_03_02_04")) ? "selected=\"selected\"":"" %>>somewhat effective</option>
                                <option value="moderately effective" <%:"moderately effective".Equals(XMLBean.getValue("ch02_01_03_02_04")) ? "selected=\"selected\"":"" %>>moderately effective</option>
                                <option value="very effective" <%:"very effective".Equals(XMLBean.getValue("ch02_01_03_02_04")) ? "selected=\"selected\"":"" %>>very effective</option>
                              </select>
                            </p>
                            </div>
                        </div><br/>
                        <div>3. <input name="ch02_01_03_03" type="text" class="inputTxt" value="<%=XMLBean.getValue("ch02_01_03_03") %>" />
                        	<div id="ch02_01_03_03" class="purple_color con_padding <%:"".Equals(XMLBean.getValue("ch02_01_03_03")) ? "hide":"" %>">
                            <p>What was your dose? <input name="ch02_01_03_03_01" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch02_01_03_03_01") %>" /></p>
                            <p>How often taken each day? <input name="ch02_01_03_03_02" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch02_01_03_03_02") %>" /></p>
                            <p>How long were you on it uninterrupted? <input name="ch02_01_03_03_03" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch02_01_03_03_03") %>" /></p>
                            <p>Was it at all effective? 
                              <select name="ch02_01_03_03_04" class="select_max">
                                <option value="not effective" <%:"not effective".Equals(XMLBean.getValue("ch02_01_03_03_04")) ? "selected=\"selected\"":"" %>>not effective</option>
                                <option value="somewhat effective" <%:"somewhat effective".Equals(XMLBean.getValue("ch02_01_03_03_04")) ? "selected=\"selected\"":"" %>>somewhat effective</option>
                                <option value="moderately effective" <%:"moderately effective".Equals(XMLBean.getValue("ch02_01_03_03_04")) ? "selected=\"selected\"":"" %>>moderately effective</option>
                                <option value="very effective" <%:"very effective".Equals(XMLBean.getValue("ch02_01_03_03_04")) ? "selected=\"selected\"":"" %>>very effective</option>
                              </select>
                            </p>
                            </div>
                        </div><br/>
                        <div>4. <input name="ch02_01_03_04" type="text" class="inputTxt" value="<%=XMLBean.getValue("ch02_01_03_04") %>" />
                        	<div id="ch02_01_03_04" class="purple_color con_padding <%:"".Equals(XMLBean.getValue("ch02_01_03_04")) ? "hide":"" %>">
                            <p>What was your dose? <input name="ch02_01_03_04_01" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch02_01_03_04_01") %>" /></p>
                            <p>How often taken each day? <input name="ch02_01_03_04_02" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch02_01_03_04_02") %>" /></p>
                            <p>How long were you on it uninterrupted? <input name="ch02_01_03_04_03" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch02_01_03_04_03") %>" /></p>
                            <p>Was it at all effective? 
                              <select name="ch02_01_03_04_04" class="select_max">
                                <option value="not effective" <%:"not effective".Equals(XMLBean.getValue("ch02_01_03_04_04")) ? "selected=\"selected\"":"" %>>not effective</option>
                                <option value="somewhat effective" <%:"somewhat effective".Equals(XMLBean.getValue("ch02_01_03_04_04")) ? "selected=\"selected\"":"" %>>somewhat effective</option>
                                <option value="moderately effective" <%:"moderately effective".Equals(XMLBean.getValue("ch02_01_03_04_04")) ? "selected=\"selected\"":"" %>>moderately effective</option>
                                <option value="very effective" <%:"very effective".Equals(XMLBean.getValue("ch02_01_03_04_04")) ? "selected=\"selected\"":"" %>>very effective</option>
                              </select>
                            </p>
                            </div>
                        </div><br/>
                        <div>5. <input name="ch02_01_03_05" type="text" class="inputTxt" value="<%=XMLBean.getValue("ch02_01_03_05") %>" />
                        	<div id="ch02_01_03_05" class="purple_color con_padding <%:"".Equals(XMLBean.getValue("ch02_01_03_05")) ? "hide":"" %>">
                            <p>What was your dose? <input name="ch02_01_03_05_01" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch02_01_03_05_01") %>" /></p>
                            <p>How often taken each day? <input name="ch02_01_03_05_02" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch02_01_03_05_02") %>" /></p>
                            <p>How long were you on it uninterrupted? <input name="ch02_01_03_05_03" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch02_01_03_05_03") %>" /></p>
                            <p>Was it at all effective? 
                              <select name="ch02_01_03_05_04" class="select_max">
                                <option value="not effective" <%:"not effective".Equals(XMLBean.getValue("ch02_01_03_05_04")) ? "selected=\"selected\"":"" %>>not effective</option>
                                <option value="somewhat effective" <%:"somewhat effective".Equals(XMLBean.getValue("ch02_01_03_05_04")) ? "selected=\"selected\"":"" %>>somewhat effective</option>
                                <option value="moderately effective" <%:"moderately effective".Equals(XMLBean.getValue("ch02_01_03_05_04")) ? "selected=\"selected\"":"" %>>moderately effective</option>
                                <option value="very effective" <%:"very effective".Equals(XMLBean.getValue("ch02_01_03_05_04")) ? "selected=\"selected\"":"" %>>very effective</option>
                              </select>
                            </p>
                            </div>
                        </div><br/>
                        <div>6. <input name="ch02_01_03_06" type="text" class="inputTxt" value="<%=XMLBean.getValue("ch02_01_03_06") %>" />
                        	<div id="ch02_01_03_06" class="purple_color con_padding <%:"".Equals(XMLBean.getValue("ch02_01_03_06")) ? "hide":"" %>">
                            <p>What was your dose? <input name="ch02_01_03_06_01" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch02_01_03_06_01") %>" /></p>
                            <p>How often taken each day? <input name="ch02_01_03_06_02" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch02_01_03_06_02") %>" /></p>
                            <p>How long were you on it uninterrupted? <input name="ch02_01_03_06_03" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch02_01_03_06_03") %>" /></p>
                            <p>Was it at all effective? 
                              <select name="ch02_01_03_06_04" class="select_max">
                               <option value="not effective" <%:"not effective".Equals(XMLBean.getValue("ch02_01_03_06_04")) ? "selected=\"selected\"":"" %>>not effective</option>
                                <option value="somewhat effective" <%:"somewhat effective".Equals(XMLBean.getValue("ch02_01_03_06_04")) ? "selected=\"selected\"":"" %>>somewhat effective</option>
                                <option value="moderately effective" <%:"moderately effective".Equals(XMLBean.getValue("ch02_01_03_06_04")) ? "selected=\"selected\"":"" %>>moderately effective</option>
                                <option value="very effective" <%:"very effective".Equals(XMLBean.getValue("ch02_01_03_06_04")) ? "selected=\"selected\"":"" %>>very effective</option>
                              </select>
                            </p>
                            </div>
                        </div><br/>
                       <div>7. <input name="ch02_01_03_07" type="text" class="inputTxt" value="<%=XMLBean.getValue("ch02_01_03_07") %>" />
                        	<div id="ch02_01_03_07" class="purple_color con_padding <%:"".Equals(XMLBean.getValue("ch02_01_03_07")) ? "hide":"" %>">
                            <p>What was your dose? <input name="ch02_01_03_07_01" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch02_01_03_07_01") %>" /></p>
                            <p>How often taken each day? <input name="ch02_01_03_07_02" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch02_01_03_07_02") %>" /></p>
                            <p>How long were you on it uninterrupted? <input name="ch02_01_03_07_03" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch02_01_03_07_03") %>" /></p>
                            <p>Was it at all effective? 
                              <select name="ch02_01_03_07_04" class="select_max">
                                <option value="not effective" <%:"not effective".Equals(XMLBean.getValue("ch02_01_03_07_04")) ? "selected=\"selected\"":"" %>>not effective</option>
                                <option value="somewhat effective" <%:"somewhat effective".Equals(XMLBean.getValue("ch02_01_03_07_04")) ? "selected=\"selected\"":"" %>>somewhat effective</option>
                                <option value="moderately effective" <%:"moderately effective".Equals(XMLBean.getValue("ch02_01_03_07_04")) ? "selected=\"selected\"":"" %>>moderately effective</option>
                                <option value="very effective" <%:"very effective".Equals(XMLBean.getValue("ch02_01_03_07_04")) ? "selected=\"selected\"":"" %>>very effective</option>
                              </select>
                            </p>
                            </div>
                       </div><br/>
                        <div>8. <input name="ch02_01_03_08" type="text" class="inputTxt" value="<%=XMLBean.getValue("ch02_01_03_08") %>" />
                        	<div id="ch02_01_03_08" class="purple_color con_padding <%:"".Equals(XMLBean.getValue("ch02_01_03_08")) ? "hide":"" %>">
                            <p>What was your dose? <input name="ch02_01_03_08_01" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch02_01_03_08_01") %>" /></p>
                            <p>How often taken each day? <input name="ch02_01_03_08_02" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch02_01_03_08_02") %>" /></p>
                            <p>How long were you on it uninterrupted? <input name="ch02_01_03_08_03" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch02_01_03_08_03") %>" /></p>
                            <p>Was it at all effective? 
                              <select name="ch02_01_03_08_04" class="select_max">
                                <option value="not effective" <%:"not effective".Equals(XMLBean.getValue("ch02_01_03_08_04")) ? "selected=\"selected\"":"" %>>not effective</option>
                                <option value="somewhat effective" <%:"somewhat effective".Equals(XMLBean.getValue("ch02_01_03_08_04")) ? "selected=\"selected\"":"" %>>somewhat effective</option>
                                <option value="moderately effective" <%:"moderately effective".Equals(XMLBean.getValue("ch02_01_03_08_04")) ? "selected=\"selected\"":"" %>>moderately effective</option>
                                <option value="very effective" <%:"very effective".Equals(XMLBean.getValue("ch02_01_03_08_04")) ? "selected=\"selected\"":"" %>>very effective</option>
                              </select>
                            </p>
                            </div>
                        </div><br/>
                        <div>9. <input name="ch02_01_03_09" type="text" class="inputTxt" value="<%=XMLBean.getValue("ch02_01_03_09") %>" />
                        	<div id="ch02_01_03_09" class="purple_color con_padding <%:"".Equals(XMLBean.getValue("ch02_01_03_09")) ? "hide":"" %>">
                            <p>What was your dose? <input name="ch02_01_03_09_01" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch02_01_03_09_01") %>" /></p>
                            <p>How often taken each day? <input name="ch02_01_03_09_02" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch02_01_03_09_02") %>" /></p>
                            <p>How long were you on it uninterrupted? <input name="ch02_01_03_09_03" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch02_01_03_09_03") %>" /></p>
                            <p>Was it at all effective? 
                              <select name="ch02_01_03_09_04" class="select_max">
                                <option value="not effective" <%:"not effective".Equals(XMLBean.getValue("ch02_01_03_09_04")) ? "selected=\"selected\"":"" %>>not effective</option>
                                <option value="somewhat effective" <%:"somewhat effective".Equals(XMLBean.getValue("ch02_01_03_09_04")) ? "selected=\"selected\"":"" %>>somewhat effective</option>
                                <option value="moderately effective" <%:"moderately effective".Equals(XMLBean.getValue("ch02_01_03_09_04")) ? "selected=\"selected\"":"" %>>moderately effective</option>
                                <option value="very effective" <%:"very effective".Equals(XMLBean.getValue("ch02_01_03_09_04")) ? "selected=\"selected\"":"" %>>very effective</option>
                              </select>
                            </p>
                            </div>
                        </div><br/>
                        <div>10. <input name="ch02_01_03_10" type="text" class="inputTxt" value="<%=XMLBean.getValue("ch02_01_03_10") %>" />
                        	<div id="ch02_01_03_10" class="purple_color con_padding <%:"".Equals(XMLBean.getValue("ch02_01_03_10")) ? "hide":"" %>">
                            <p>What was your dose? <input name="ch02_01_03_10_01" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch02_01_03_10_01") %>" /></p>
                            <p>How often taken each day? <input name="ch02_01_03_10_02" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch02_01_03_10_02") %>" /></p>
                            <p>How long were you on it uninterrupted? <input name="ch02_01_03_10_03" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch02_01_03_10_03") %>" /></p>
                            <p>Was it at all effective? 
                              <select name="ch02_01_03_10_04" class="select_max">
                                <option value="not effective" <%:"not effective".Equals(XMLBean.getValue("ch02_01_03_10_04")) ? "selected=\"selected\"":"" %>>not effective</option>
                                <option value="somewhat effective" <%:"somewhat effective".Equals(XMLBean.getValue("ch02_01_03_10_04")) ? "selected=\"selected\"":"" %>>somewhat effective</option>
                                <option value="moderately effective" <%:"moderately effective".Equals(XMLBean.getValue("ch02_01_03_10_04")) ? "selected=\"selected\"":"" %>>moderately effective</option>
                                <option value="very effective" <%:"very effective".Equals(XMLBean.getValue("ch02_01_03_10_04")) ? "selected=\"selected\"":"" %>>very effective</option>
                              </select>
                            </p>
                            </div>
                        </div>
                     </div>
                </div><br/>
                <div>Is anyone in your family supportive of you seeking treatment? <input name="YesNo2_01_04" type="radio" value="1" <%:"1".Equals(XMLBean.getValue("YesNo2_01_04")) ? "checked='checked'":"" %> />Yes<input name="YesNo2_01_04" type="radio" value="0" <%:"0".Equals(XMLBean.getValue("YesNo2_01_04")) ? "checked='checked'":"" %> />No<br/>
                	<div  id="ch02_01_04" class="blue_color con_padding <%:!"1".Equals(XMLBean.getValue("YesNo2_01_04")) ? "hide":"" %>">
                        <div><input name="ch02_01_04_01" type="checkbox" value="1" <%:"1".Equals(XMLBean.getValue("ch02_01_04_01")) ? "checked='checked'":"" %> />Parents</div>
                        <div><input name="ch02_01_04_06" type="checkbox" value="1" <%:"1".Equals(XMLBean.getValue("ch02_01_04_06")) ? "checked='checked'":"" %> />Spouse</div>
                        <div><input name="ch02_01_04_02" type="checkbox" value="1" <%:"1".Equals(XMLBean.getValue("ch02_01_04_02")) ? "checked='checked'":"" %> />Siblings</div>
                        <div><input name="ch02_01_04_03" type="checkbox" value="1" <%:"1".Equals(XMLBean.getValue("ch02_01_04_03")) ? "checked='checked'":"" %> />Grandparents</div>
                        <div><input name="ch02_01_04_04" type="checkbox" value="1" <%:"1".Equals(XMLBean.getValue("ch02_01_04_04")) ? "checked='checked'":"" %> />Children</div>
                        <div><input name="ch02_01_04_05" type="checkbox" value="1" <%:"1".Equals(XMLBean.getValue("ch02_01_04_05")) ? "checked='checked'":"" %> />Other(s) (list)  <span id="ch02_01_04_05" class="<%:!"1".Equals(XMLBean.getValue("ch02_01_04_05")) ? "hide":"" %>"><input name="ch02_01_04_05_01" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch02_01_04_05_01") %>" /></span></div>
                    </div>
                </div><br/>
                <div>Who do you want involved in your treatment? <input name="ch02_01_05" type="text" class="inputTxt-max" value="<%=XMLBean.getValue("ch02_01_05") %>" /></div>
      </div>
    </div><br/>
