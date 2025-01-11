<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<Insourcia.Psychotherapy.Model.Patient>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    New Client
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="patient-div-right">
        <div class="patient-content">
            <div class="patient_title">
                <p>
                    RIVERVALLEY BEHAVIORAL HEALTH</p>
                <p>
                    ADMISSION/PSYCHOSOCIAL ASSESSMENT AND HISTORY</p>
            </div>
            <%:Html.ValidationMessage("ErrorMsg", new { Style="color:red"})%>
            <!--表单开始-->
            <form name="myForm" id="myForm" method="post" action="/Client/Create" onkeydown="if(event.keyCode==13){return false;}">
            <table>
                <tr>
                    <td align="right">
                        GRID#
                    </td>
                    <td colspan="7">
                        <%: Html.TextBoxFor(model => model.GRID, new { @class = "inputTxt" })%>
                        <%: Html.Hidden("ClientName")%>
                    </td>
                </tr>
                <tr>
                    <td width="13%" align="right">
                        First Name:
                    </td>
                    <td width="22%">
                        <%: Html.TextBoxFor(model => model.FirstName, new { @class = "inputTxt" })%>
                    </td>
                    <td width="10%" align="right" valign="middle">
                        M.I.:
                    </td>
                    <td width="20%" valign="middle">
                        <%: Html.TextBoxFor(model => model.MiddleName, new { @class = "inputTxt", maxlength = "1" })%>
                    </td>
                    <td width="9%" align="right" valign="middle">
                        Last Name:
                    </td>
                    <td width="26%" colspan="3">
                        <%: Html.TextBoxFor(model => model.LastName, new { @class = "inputTxt" })%>
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        Date of Admission:
                    </td>
                    <td>
                        <%: Html.TextBoxFor(model => model.AdmissionDay, new { @class = "inputTxt datepicker3" })%>
                    </td>
                    <td align="right" valign="middle">
                        Ethnicity:
                    </td>
                    <td valign="middle">
                        <select name="Ethnicity" id="ethnicity" class="select_max">
                            <option value="Caucasian">Caucasian</option>
                            <option value="African American">African American</option>
                            <option value="Biracial">Biracial</option>
                            <option value="Hispanic">Hispanic</option>
                            <option value="Other">Other</option>
                        </select>
                    </td>
                    <td colspan="4" align="left" valign="middle">
                        <span id="ethnicity_hide" class="hide">Other:
                            <input id="ethnicity_other" name="EthnicityOther" type="text" class="inputTxt" />
                        </span>
                    </td>
                </tr>
                <tr>
                    <td height="25" align="right">
                        Date of Birth:
                    </td>
                    <td>
                        <%: Html.TextBoxFor(model => model.BirthDay, new { @class = "inputTxt datepicker3" })%>
                    </td>
                    <td align="right" valign="middle">
                        Age:
                    </td>
                    <td>
                        <%: Html.TextBoxFor(model => model.Age, new { @class = "inputTxt-min" })%>
                    </td>
                    <td align="right" valign="middle">
                        Sex:
                    </td>
                    <td colspan="3">
                        <select id="sex" name="Sex" class="select_min">
                            <option value="Male">Male</option>
                            <option value="Female">Female</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td height="25" align="right">
                        Marital Status:
                    </td>
                    <td colspan="7">
                        <select name="MaritalStatus" id="marital_status" class="select_max">
                            <option value="Single">Single</option>
                            <option value="Married">Married</option>
                            <option value="Divorced">Divorced</option>
                            <option value="Separated">Separated</option>
                            <option value="Cohabitating">Cohabitating</option>
                            <option value="Widow/Widower">Widow/Widower</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td height="25" align="right">
                        Current Living Situation:
                    </td>
                    <td>
                        <select name="LivingSituation" id="livingsituation" class="select_max">
                            <option value="Home">Home</option>
                            <option value="Other">Other</option>
                        </select>
                    </td>
                    <td colspan="6" align="left">
                        <span id="livingsituation_hide" class="hide">Other:
                            <input id="livingsituation_other" name="LivingSituationOther" type="text" class="inputTxt" />
                        </span>
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        Who lives in the household:
                    </td>
                    <td colspan="7">
                        <%: Html.TextBoxFor(model => model.Household, new { @class = "inputTxt-max" })%>
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        Referral Source:
                    </td>
                    <td colspan="7">
                        <%: Html.TextBoxFor(model => model.ReferralSource, new { @class = "inputTxt-max" })%>
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        Relationship:
                    </td>
                    <td>
                        <select name="Relationship" id="relationship" class="select_max">
                            <option value="Self">Self</option>
                            <option value="Parent">Parent</option>
                            <option value="DCBS">DCBS</option>
                            <option value="DJJ">DJJ</option>
                            <option value="Other">Other</option>
                        </select>
                    </td>
                    <td colspan="6" align="left">
                        <span id="relationship_hide" class="hide">Other:
                            <input id="relationship_other" name="RelationshipOther" type="text" class="inputTxt" />
                        </span>
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        Legal Guardian:
                    </td>
                    <td colspan="7">
                        <%: Html.TextBoxFor(model => model.LegalGuardian, new { @class = "inputTxt-max" })%>
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        Address:
                    </td>
                    <td colspan="7">
                        <%: Html.TextBoxFor(model => model.Address, new { @class = "inputTxt-max" })%>
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        Treatment is:
                    </td>
                    <td>
                        <select id="treatment" name="Treatment" class="select_max">
                            <option value="Voluntary">Voluntary</option>
                            <option value="Court Ordered">Court Ordered</option>
                            <option value="Inpatient">Inpatient</option>
                            <option value="Outpatient">Outpatient</option>
                            <option value="Other">Other</option>
                        </select>
                    </td>
                    <td colspan="6" align="left">
                        <span id="treatment_hide" class="hide">Other:
                            <input id="treatment_other" name="TreatmentOther" type="text" class="inputTxt" />
                        </span>
                    </td>
                </tr>
            </table>
            <br />
            <span class="title_bold">
                <img src="../../Content/images/tree/tree_less.gif" id="img01" width="9" height="9" />&nbsp;&nbsp;I.CURRENT
                SYMPTOMS </span><a name="menu1" id="menu1"></a>
            <br />
            <div id="ch01" class="con_padding">
                <span id="ch01_01_02" class="red_color">
                    Have you been thinking of death or suicide or have you been thinking of harming others?
                    <input name="YesNo_01_02" type="radio" value="1" />Yes
                    <input name="YesNo_01_02" type="radio" value="0" checked="checked" />No
                    <br />
                    <span id="ch01_01_02_01" class="green_color con_padding hide act">
                        Have you thought of a plan for committing suicide or homicide? 
                        <input name="YesNo_01_02_01" type="radio" value="1" />Yes
                        <input name="YesNo_01_02_01" type="radio" value="0" checked="checked" />No
                        <br />
                        <span id="ch01_01_02_01_01" class="blue_color con_padding2 hide act">Have you acted on that plan?
                            <input name="YesNo_01_02_01_01" type="radio" value="1" />Yes
                            <input name="YesNo_01_02_01_01" type="radio" value="0" checked="checked" />No
                            <br />
                            <span id="ch01_01_02_01_01_01" class="purple_color con_padding3 hide act">What was the
                                result of those actions?
                                <input id="txt01_01_02_01_01_01" name="ch01_01_02_01_01_01" type="text" class="inputTxt-max" /></span>
                        </span>
                    </span>
                </span>
                <br />
                <!--2-->
                <span id="ch01_01_03" class="green_color">Has your sleep been different from your normal
                    pattern over this same period?
                    <input name="YesNo_01_03" type="radio" value="1" />Yes<input name="YesNo_01_03" type="radio"
                        value="0" checked="checked" />No
                    <br />
                    <span id="ch01_01_03_01" class="blue_color con_padding hide act">Describe your current sleeping
                        pattern(s):
                        <input id="ch01_01_03_01" name="ch01_01_03_01" type="text" class="inputTxt-max" /><br />
                        <span style="padding-left: 38px;">Describe your typical sleeping pattern(s):
                            <input id="ch01_01_03_02" name="ch01_01_03_02" type="text" class="inputTxt-max" /></span>
                    </span>
                </span>
                <br />
                <span class="red_color">Have you been feeling any of the following (or has anyone observed or described you as):  Depressed, hopeless, without interest, without energy, without motivation?
                    <br />
                    <input name="YesNo_01" type="radio" value="1" />Yes
                    <input name="YesNo_01" type="radio" value="0" checked="checked" />No
                <br />
                <div id="ch01_01" class="con_padding hide">
                    <span id="ch01_01_01" class="green_color">Have these feelings lasted at least 2 weeks?
                        <input name="YesNo_01_01" type="radio" value="1" />Yes
                        <input name="YesNo_01_01" type="radio" value="0" checked="checked" />No
                        <br />
                        <span id="ch01_01_01_01" class="blue_color con_padding hide act">
                            Have they lasted at least 6 months and been present most days, most of the day?
                            <input name="YesNo_01_01_01" type="radio" value="1" />Yes
                            <input name="YesNo_01_01_01" type="radio" value="0" checked="checked" />No
                        </span>                        
                    </span>
                    <br />
                    <span id="ch01_01_04" class="green_color">Have you been experiencing any chronic physical problems during this same period?
                        <input name="YesNo_01_04" type="radio" value="1" />Yes
                        <input name="YesNo_01_04" type="radio" value="0" checked="checked" />No
                        <br />
                        <span id="ch01_01_04_01" class="blue_color con_padding hide act">Describe these difficulties:
                        <input id="ch01_01_04_01" name="ch01_01_04_01" type="text" class="inputTxt-max" />
                        </span>
                    </span>
                    <br />
                    <span id="ch01_01_05" class="green_color">Have you experienced anything significantly traumatizing or negative around the time these feelings first appeared (e.g. loss of a loved one, divorce, trauma, disabling illness, job loss, significant financial loss, legal difficulties)?
                        <input name="YesNo_01_05" type="radio" value="1" />Yes
                        <input name="YesNo_01_05" type="radio" value="0" checked="checked" />No
                        <br />
                        <span id="ch01_01_05_01" class="blue_color con_padding hide act">Describe what has occurred:
                            <input id="ch01_01_05_01" name="ch01_01_05_01" type="text" class="inputTxt-max" />
                        </span>
                    </span>
                    <br />
                    <span id="ch01_01_06" class="green_color">Has there been any significant drug or alcohol use during this time period or during the time immediately preceding this time period?
                        <br />
                        <input name="YesNo_01_06" type="radio" value="1" />Yes
                        <input name="YesNo_01_06" type="radio" value="0" checked="checked" />No
                        <br />
                        <span id="ch01_01_06_01" class="blue_color con_padding hide act">[offer to go to substance
                            abuse cluster questions at this time. If declined, clinician will need to return
                            to this decision at some time during the assessment]
                        </span>
                     </span>
                     <br />
                </div>
                </span>
                <br />
                <span class="red_color">Have you been feeling/experiencing any of the following (or has anyone observed or described you as):  Unusually up mood or manic, needing much less sleep than normal, taking unusual risks, more preoccupied with religion, feeling of invincibility, hypersexual, unusually irresponsible, extremely agitated, unusually disorganized and scattered in your thinking?
                    <input name="YesNo_02" type="radio" value="1" />Yes
                    <input name="YesNo_02" type="radio" value="0" checked="checked" />No</span>
                <br />
                <div id="ch01_02" class="con_padding hide">
                    <span id="ch01_02_01" class="green_color">How long have these symptoms or feelings been going on?
                        <input id="txt01_02_01" name="ch01_02_01" type="text" class="inputTxt-max" />
                    </span>
                    <br />
                    <span id="ch01_02_02" class="green_color">Have you been thinking of death or suicide?
                        <input name="YesNo_02_02" type="radio" value="1" />Yes<input name="YesNo_02_02" type="radio"
                            value="0" checked="checked" />No<br />
                        <span id="ch01_02_02_01" class="blue_color con_padding hide act">Have you thought of a plan for committing suicide?
                            <input name="YesNo_02_02_01" type="radio" value="1" />Yes
                            <input name="YesNo_02_02_01" type="radio" value="0" checked="checked" />No
                            <br />
                            <span id="ch01_02_02_01_01" class="purple_color con_padding2 hide act">Have you acted on that plan?
                                <input name="YesNo_02_02_01_01" type="radio" value="1" />Yes<input name="YesNo_02_02_01_01"
                                    type="radio" value="0" checked="checked" />No<br />
                                <span id="ch01_02_02_01_01_01" class="yellow_color con_padding3 hide act">What was the
                                    result of those actions?
                                    <input id="ch01_02_02_01_01_01" name="ch01_02_02_01_01_01" type="text" class="inputTxt-max" /></span><br />
                            </span></span>
                            </span>
                    <br />
                    <span id="ch01_02_03" class="green_color">Has your sleep been different from your normal
                        pattern over this same period?
                        <input name="YesNo_02_03" type="radio" value="1" />Yes<input name="YesNo_02_03" type="radio"
                            value="0" checked="checked" />No</span><br />
                    <span id="ch01_02_03_01" class="blue_color con_padding hide act">Describe your currentsleeping
                        pattern(s):
                        <input id="ch01_02_03_01" name="ch01_02_03_01" type="text" class="inputTxt-max" /><br />
                        <span style="padding-left: 38px">Describe your typical sleeping pattern(s):
                            <input id="ch01_02_03_02" name="ch01_02_03_02" type="text" class="inputTxt-max" />
                        </span></span>
                    <br />
                    <span id="ch01_02_04" class="green_color">Has there been any significant drug or alcohol
                        use during this time period or during the time immediately preceding this time period?
                        <br />
                        <input name="YesNo_02_04" type="radio" value="1" />Yes<input name="YesNo_02_04" type="radio"
                            value="0" checked="checked" />No
                     <br />
                    <span id="ch01_02_04_01" class="blue_color con_padding hide act">[offer to go to substance
                        abuse cluster questions at this time. If declined, clinician will need to return
                        to this decision at some time during the assessment]
                    </span>
                    </span>
                    <br />
                    <span id="ch01_02_05" class="green_color">Have you made any significant life decisions
                        during this time period (e.g. ended or began a relationship, spent an unusually
                        large amount of money on a major purchase, moved, or began/ended a job/educational
                        experience)?
                        <input name="YesNo_02_05" type="radio" value="1" />Yes<input name="YesNo_02_05" type="radio"
                            value="0" checked="checked" />No</span><br />
                    <span id="ch01_02_05_01" class="blue_color con_padding hide act">Describe this/these
                        decisions:
                        <input id="ch01_02_05_01" name="ch01_02_05_01" type="text" class="inputTxt-max" />
                     </span>
                     <br />
                    <span id="ch01_02_06" class="green_color">Have there been any legal problems during
                        this time period?
                        <input name="YesNo_02_06" type="radio" value="1" />Yes<input name="YesNo_02_06" type="radio"
                            value="0" checked="checked" />No</span><br />
                    <span id="ch01_02_06_01" class="blue_color con_padding hide act">Describe the problem(s):
                        <input id="ch01_02_06_01" name="ch01_02_06_01" type="text" class="inputTxt-max" />
                    </span>
                    <br />
                </div>
                <br />

                <span class="red_color">Have you ever used drugs, or prescription medication that was
                    not prescribed for you, or used prescribed medication in a manner other than what
                    your physician prescribed?
                    <br />
                    <input name="YesNo_03" type="radio" value="1" />Yes<input name="YesNo_03" type="radio"
                        value="0" checked="checked" />No</span><br />
                <div id="ch01_03" class="con_padding hide">
                    <div id="ch01_03_02" class="green_color">
                        Check all use that applies:<br />
                        <div class="green_color con_padding">
                            <input name="ch01_03_02_01" type="checkbox" value="1" />Alcohol
                            <div id="ch01_03_02_01" class="green_color con_padding hide">
                                <div class="blue_color">
                                    <input name="ch01_03_02_01_01" type="checkbox" value="1" />Beer
                                    <div id="ch01_03_02_01_01" class="purple_color con_padding hide">
                                        <p>
                                            Age of first use
                                            <input id="ch01_03_02_01_01_01" name="ch01_03_02_01_01_01" type="text" class="inputTxt-max" /></p>
                                        <p>
                                            Age of continuous/regular use
                                            <input id="ch01_03_02_01_01_02" name="ch01_03_02_01_01_02" type="text" class="inputTxt-max" /></p>
                                        <p>
                                            Usual amount when using
                                            <input id="ch01_03_02_01_01_03" name="ch01_03_02_01_01_03" type="text" class="inputTxt-max" /></p>
                                        <p>
                                            How often used
                                            <input id="ch01_03_02_01_01_04" name="ch01_03_02_01_01_04" type="text" class="inputTxt-max" /></p>
                                        <p>
                                            Date of last use
                                            <input id="ch01_03_02_01_01_05" name="ch01_03_02_01_01_05" type="text" class="inputTxt-max" /></p>
                                        <p>
                                            Most ever used
                                            <input id="ch01_03_02_01_01_06" name="ch01_03_02_01_01_06" type="text" class="inputTxt-max" /></p>
                                    </div>
                                </div>
                                <div class="blue_color">
                                    <input name="ch01_03_02_01_02" type="checkbox" value="1" />Wine<br />
                                    <div id="ch01_03_02_01_02" class="purple_color con_padding hide">
                                        <p>
                                            Age of first use
                                            <input id="ch01_03_02_01_02_01" name="ch01_03_02_01_02_01" type="text" class="inputTxt-max" /></p>
                                        <p>
                                            Age of continuous/regular use
                                            <input id="ch01_03_02_01_02_02" name="ch01_03_02_01_02_02" type="text" class="inputTxt-max" /></p>
                                        <p>
                                            Usual amount when using
                                            <input id="ch01_03_02_01_02_03" name="ch01_03_02_01_02_03" type="text" class="inputTxt-max" /></p>
                                        <p>
                                            How often used
                                            <input id="ch01_03_02_01_02_04" name="ch01_03_02_01_02_04" type="text" class="inputTxt-max" /></p>
                                        <p>
                                            Date of last use
                                            <input id="ch01_03_02_01_02_05" name="ch01_03_02_01_02_05" type="text" class="inputTxt-max" /></p>
                                        <p>
                                            Most ever used
                                            <input id="ch01_03_02_01_02_06" name="ch01_03_02_01_02_06" type="text" class="inputTxt-max" /></p>
                                    </div>
                                </div>
                                <div class="blue_color">
                                    <input name="ch01_03_02_01_03" type="checkbox" value="1" />Distilled liquor<br />
                                    <div id="ch01_03_02_01_03" class="purple_color con_padding hide">
                                        <p>
                                            Age of first use
                                            <input id="ch01_03_02_01_03_01" name="ch01_03_02_01_03_01" type="text" class="inputTxt-max" /></p>
                                        <p>
                                            Age of continuous/regular use
                                            <input id="ch01_03_02_01_03_02" name="ch01_03_02_01_03_02" type="text" class="inputTxt-max" /></p>
                                        <p>
                                            Usual amount when using
                                            <input id="ch01_03_02_01_03_03" name="ch01_03_02_01_03_03" type="text" class="inputTxt-max" /></p>
                                        <p>
                                            How often used
                                            <input id="ch01_03_02_01_03_04" name="ch01_03_02_01_03_04" type="text" class="inputTxt-max" /></p>
                                        <p>
                                            Date of last use
                                            <input id="ch01_03_02_01_03_05" name="ch01_03_02_01_03_05" type="text" class="inputTxt-max" /></p>
                                        <p>
                                            Most ever used
                                            <input id="ch01_03_02_01_03_06" name="ch01_03_02_01_03_06" type="text" class="inputTxt-max" /></p>
                                    </div>
                                </div>
                                <div class="blue_color">
                                    <input name="ch01_03_02_01_04" type="checkbox" value="1" />Other<br />
                                    <div id="ch01_03_02_01_04" class="purple_color con_padding hide">
                                        <p>
                                            Age of first use
                                            <input id="ch01_03_02_01_04_01" name="ch01_03_02_01_04_01" type="text" class="inputTxt-max" /></p>
                                        <p>
                                            Age of continuous/regular use
                                            <input id="ch01_03_02_01_04_02" name="ch01_03_02_01_04_02" type="text" class="inputTxt-max" /></p>
                                        <p>
                                            Usual amount when using
                                            <input id="ch01_03_02_01_04_03" name="ch01_03_02_01_04_03" type="text" class="inputTxt-max" /></p>
                                        <p>
                                            How often used
                                            <input id="ch01_03_02_01_04_04" name="ch01_03_02_01_04_04" type="text" class="inputTxt-max" /></p>
                                        <p>
                                            Date of last use
                                            <input id="ch01_03_02_01_04_05" name="ch01_03_02_01_04_05" type="text" class="inputTxt-max" /></p>
                                        <p>
                                            Most ever used
                                            <input id="ch01_03_02_01_04_06" name="ch01_03_02_01_04_06" type="text" class="inputTxt-max" /></p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <span class="green_color con_padding">
                            <input name="ch01_03_02_02" type="checkbox" value="1" />Marijuana
                            <div id="ch01_03_02_02" class="blue_color con_padding2 hide">
                                <p>
                                    Age of first use
                                    <input id="ch01_03_02_02_01" name="ch01_03_02_02_01" type="text" class="inputTxt-max" /></p>
                                <p>
                                    Age of continuous/regular use
                                    <input id="ch01_03_02_02_02" name="ch01_03_02_02_02" type="text" class="inputTxt-max" /></p>
                                <p>
                                    How it's used/route of delivery
                                    <input id="ch01_03_02_02_03" name="ch01_03_02_02_03" type="text" class="inputTxt-max" /></p>
                                <p>
                                    Usual amount when using
                                    <input id="ch01_03_02_02_04" name="ch01_03_02_02_04" type="text" class="inputTxt-max" /></p>
                                <p>
                                    How often used
                                    <input id="ch01_03_02_02_05" name="ch01_03_02_02_05" type="text" class="inputTxt-max" /></p>
                                <p>
                                    Date of last use
                                    <input id="ch01_03_02_02_06" name="ch01_03_02_02_06" type="text" class="inputTxt-max" /></p>
                                <p>
                                    Most ever used
                                    <input id="ch01_03_02_02_07" name="ch01_03_02_02_07" type="text" class="inputTxt-max" /></p>
                            </div>
                        </span>
                        <br />
                        <span class="green_color con_padding">
                            <input name="ch01_03_02_03" type="checkbox" value="1" />Tranquilizers
                            <div id="ch01_03_02_03" class="blue_color con_padding2 hide">
                                <p>
                                    Age of first use
                                    <input id="ch01_03_02_03_01" name="ch01_03_02_03_01" type="text" class="inputTxt-max" /></p>
                                <p>
                                    Age of continuous/regular use
                                    <input id="ch01_03_02_03_02" name="ch01_03_02_03_02" type="text" class="inputTxt-max" /></p>
                                <p>
                                    How it's used/route of delivery
                                    <input id="ch01_03_02_03_03" name="ch01_03_02_03_03" type="text" class="inputTxt-max" /></p>
                                <p>
                                    Usual amount when using
                                    <input id="ch01_03_02_03_04" name="ch01_03_02_03_04" type="text" class="inputTxt-max" /></p>
                                <p>
                                    How often used
                                    <input id="ch01_03_02_03_05" name="ch01_03_02_03_05" type="text" class="inputTxt-max" /></p>
                                <p>
                                    Date of last use
                                    <input id="ch01_03_02_03_06" name="ch01_03_02_03_06" type="text" class="inputTxt-max" /></p>
                                <p>
                                    Most ever used
                                    <input id="ch01_03_02_03_07" name="ch01_03_02_03_07" type="text" class="inputTxt-max" /></p>
                            </div>
                        </span>
                        <br />
                        <span class="green_color con_padding">
                            <input name="ch01_03_02_04" type="checkbox" value="1" />PCP
                            <div id="ch01_03_02_04" class="blue_color con_padding2 hide">
                                <p>
                                    Age of first use
                                    <input id="ch01_03_02_04_01" name="ch01_03_02_04_01" type="text" class="inputTxt-max" /></p>
                                <p>
                                    Age of continuous/regular use
                                    <input id="ch01_03_02_04_02" name="ch01_03_02_04_02" type="text" class="inputTxt-max" /></p>
                                <p>
                                    How it's used/route of delivery
                                    <input id="ch01_03_02_04_03" name="ch01_03_02_04_03" type="text" class="inputTxt-max" /></p>
                                <p>
                                    Usual amount when using
                                    <input id="ch01_03_02_04_04" name="ch01_03_02_04_04" type="text" class="inputTxt-max" /></p>
                                <p>
                                    How often used
                                    <input id="ch01_03_02_04_05" name="ch01_03_02_04_05" type="text" class="inputTxt-max" /></p>
                                <p>
                                    Date of last use
                                    <input id="ch01_03_02_04_06" name="ch01_03_02_04_06" type="text" class="inputTxt-max" /></p>
                                <p>
                                    Most ever used
                                    <input id="ch01_03_02_04_07" name="ch01_03_02_04_07" type="text" class="inputTxt-max" /></p>
                            </div>
                        </span>
                        <br />
                        <span class="green_color con_padding">
                            <input name="ch01_03_02_05" type="checkbox" value="1" />Sedatives
                            <div id="ch01_03_02_05" class="blue_color con_padding2 hide">
                                <p>
                                    Age of first use
                                    <input id="ch01_03_02_05_01" name="ch01_03_02_05_01" type="text" class="inputTxt-max" /></p>
                                <p>
                                    Age of continuous/regular use
                                    <input id="ch01_03_02_05_02" name="ch01_03_02_05_02" type="text" class="inputTxt-max" /></p>
                                <p>
                                    How it's used/route of delivery
                                    <input id="ch01_03_02_05_03" name="ch01_03_02_05_03" type="text" class="inputTxt-max" /></p>
                                <p>
                                    Usual amount when using
                                    <input id="ch01_03_02_05_04" name="ch01_03_02_05_04" type="text" class="inputTxt-max" /></p>
                                <p>
                                    How often used
                                    <input id="ch01_03_02_05_05" name="ch01_03_02_05_05" type="text" class="inputTxt-max" /></p>
                                <p>
                                    Date of last use
                                    <input id="ch01_03_02_05_06" name="ch01_03_02_05_06" type="text" class="inputTxt-max" /></p>
                                <p>
                                    Most ever used
                                    <input id="ch01_03_02_05_07" name="ch01_03_02_05_07" type="text" class="inputTxt-max" /></p>
                            </div>
                        </span>
                        <br />
                        <span class="green_color con_padding">
                            <input name="ch01_03_02_06" type="checkbox" value="1" />Amphetamines
                            <div id="ch01_03_02_06" class="blue_color con_padding2 hide">
                                <p>
                                    Age of first use
                                    <input id="ch01_03_02_06_01" name="ch01_03_02_06_01" type="text" class="inputTxt-max" /></p>
                                <p>
                                    Age of continuous/regular use
                                    <input id="ch01_03_02_06_02" name="ch01_03_02_06_02" type="text" class="inputTxt-max" /></p>
                                <p>
                                    How it's used/route of delivery
                                    <input id="ch01_03_02_06_03" name="ch01_03_02_06_03" type="text" class="inputTxt-max" /></p>
                                <p>
                                    Usual amount when using
                                    <input id="ch01_03_02_06_04" name="ch01_03_02_06_04" type="text" class="inputTxt-max" /></p>
                                <p>
                                    How often used
                                    <input id="ch01_03_02_06_05" name="ch01_03_02_06_05" type="text" class="inputTxt-max" /></p>
                                <p>
                                    Date of last use
                                    <input id="ch01_03_02_06_06" name="ch01_03_02_06_06" type="text" class="inputTxt-max" /></p>
                                <p>
                                    Most ever used
                                    <input id="ch01_03_02_06_07" name="ch01_03_02_06_07" type="text" class="inputTxt-max" /></p>
                            </div>
                        </span>
                        <br />
                        <span class="green_color con_padding">
                            <input name="ch01_03_02_07" type="checkbox" value="1" />Opiates
                            <div id="ch01_03_02_07" class="blue_color con_padding2 hide">
                                <p>
                                    Age of first use
                                    <input id="ch01_03_02_07_01" name="ch01_03_02_07_01" type="text" class="inputTxt-max" /></p>
                                <p>
                                    Age of continuous/regular use
                                    <input id="ch01_03_02_07_02" name="ch01_03_02_07_02" type="text" class="inputTxt-max" /></p>
                                <p>
                                    How it's used/route of delivery
                                    <input id="ch01_03_02_07_03" name="ch01_03_02_07_03" type="text" class="inputTxt-max" /></p>
                                <p>
                                    Usual amount when using
                                    <input id="ch01_03_02_07_04" name="ch01_03_02_07_04" type="text" class="inputTxt-max" /></p>
                                <p>
                                    How often used
                                    <input id="ch01_03_02_07_05" name="ch01_03_02_07_05" type="text" class="inputTxt-max" /></p>
                                <p>
                                    Date of last use
                                    <input id="ch01_03_02_07_06" name="ch01_03_02_07_06" type="text" class="inputTxt-max" /></p>
                                <p>
                                    Most ever used
                                    <input id="ch01_03_02_07_07" name="ch01_03_02_07_07" type="text" class="inputTxt-max" /></p>
                            </div>
                        </span>
                        <br />
                        <span class="green_color con_padding">
                            <input name="ch01_03_02_08" type="checkbox" value="1" />Solvents
                            <div id="ch01_03_02_08" class="blue_color con_padding2 hide">
                                <p>
                                    Age of first use
                                    <input id="ch01_03_02_08_01" name="ch01_03_02_08_01" type="text" class="inputTxt-max" /></p>
                                <p>
                                    Age of continuous/regular use
                                    <input id="ch01_03_02_08_02" name="ch01_03_02_08_02" type="text" class="inputTxt-max" /></p>
                                <p>
                                    How it's used/route of delivery
                                    <input id="ch01_03_02_08_03" name="ch01_03_02_08_03" type="text" class="inputTxt-max" /></p>
                                <p>
                                    Usual amount when using
                                    <input id="ch01_03_02_08_04" name="ch01_03_02_08_04" type="text" class="inputTxt-max" /></p>
                                <p>
                                    How often used
                                    <input id="ch01_03_02_08_05" name="ch01_03_02_08_05" type="text" class="inputTxt-max" /></p>
                                <p>
                                    Date of last use
                                    <input id="ch01_03_02_08_06" name="ch01_03_02_08_06" type="text" class="inputTxt-max" /></p>
                                <p>
                                    Most ever used
                                    <input id="ch01_03_02_08_07" name="ch01_03_02_08_07" type="text" class="inputTxt-max" /></p>
                            </div>
                        </span>
                        <br />
                        <span class="green_color con_padding">
                            <input name="ch01_03_02_09" type="checkbox" value="1" />Hallucinogens
                            <div id="ch01_03_02_09" class="blue_color con_padding2 hide">
                                <p>
                                    Age of first use
                                    <input id="ch01_03_02_09_01" name="ch01_03_02_09_01" type="text" class="inputTxt-max" /></p>
                                <p>
                                    Age of continuous/regular use
                                    <input id="ch01_03_02_09_02" name="ch01_03_02_09_02" type="text" class="inputTxt-max" /></p>
                                <p>
                                    How it's used/route of delivery
                                    <input id="ch01_03_02_09_03" name="ch01_03_02_09_03" type="text" class="inputTxt-max" /></p>
                                <p>
                                    Usual amount when using
                                    <input id="ch01_03_02_09_04" name="ch01_03_02_09_04" type="text" class="inputTxt-max" /></p>
                                <p>
                                    How often used
                                    <input id="ch01_03_02_09_05" name="ch01_03_02_09_05" type="text" class="inputTxt-max" /></p>
                                <p>
                                    Date of last use
                                    <input id="ch01_03_02_09_06" name="ch01_03_02_09_06" type="text" class="inputTxt-max" /></p>
                                <p>
                                    Most ever used
                                    <input id="ch01_03_02_09_07" name="ch01_03_02_09_07" type="text" class="inputTxt-max" /></p>
                            </div>
                        </span>
                        <br />
                        <span class="green_color con_padding">
                            <input name="ch01_03_02_10" type="checkbox" value="1" />OTC medications (list)
                            <div id="ch01_03_02_10" class=" hide">
                                <br />
                                <div class="blue_color con_padding2">
                                    1.
                                    <input name="ch01_03_02_10_01" type="text" class="inputTxt" />
                                    <div id="ch01_03_02_10_01" class="purple_color con_min hide">
                                        <p>
                                            Age of first use
                                            <input id="ch01_03_02_10_01_01" name="ch01_03_02_10_01_01" type="text" class="inputTxt-max" /></p>
                                        <p>
                                            Age of continuous/regular use
                                            <input id="ch01_03_02_10_01_02" name="ch01_03_02_10_01_02" type="text" class="inputTxt-max" /></p>
                                        <p>
                                            How it's used/route of delivery
                                            <input id="ch01_03_02_10_01_03" name="ch01_03_02_10_01_03" type="text" class="inputTxt-max" /></p>
                                        <p>
                                            Usual amount when using
                                            <input id="ch01_03_02_10_01_04" name="ch01_03_02_10_01_04" type="text" class="inputTxt-max" /></p>
                                        <p>
                                            How often used
                                            <input id="ch01_03_02_10_01_05" name="ch01_03_02_10_01_05" type="text" class="inputTxt-max" /></p>
                                        <p>
                                            Date of last use
                                            <input id="ch01_03_02_10_01_06" name="ch01_03_02_10_01_06" type="text" class="inputTxt-max" /></p>
                                        <p>
                                            Most ever used
                                            <input id="ch01_03_02_10_01_07" name="ch01_03_02_10_01_07" type="text" class="inputTxt-max" /></p>
                                    </div>
                                </div>
                                <br />
                                <div class="blue_color con_padding2">
                                    2.
                                    <input name="ch01_03_02_10_02" type="text" class="inputTxt" />
                                    <div id="ch01_03_02_10_02" class="purple_color con_min hide">
                                        <p>
                                            Age of first use
                                            <input id="ch01_03_02_10_02_01" name="ch01_03_02_10_02_01" type="text" class="inputTxt-max" /></p>
                                        <p>
                                            Age of continuous/regular use
                                            <input id="ch01_03_02_10_02_02" name="ch01_03_02_10_02_02" type="text" class="inputTxt-max" /></p>
                                        <p>
                                            How it's used/route of delivery
                                            <input id="ch01_03_02_10_02_03" name="ch01_03_02_10_02_03" type="text" class="inputTxt-max" /></p>
                                        <p>
                                            Usual amount when using
                                            <input id="ch01_03_02_10_02_04" name="ch01_03_02_10_02_04" type="text" class="inputTxt-max" /></p>
                                        <p>
                                            How often used
                                            <input id="ch01_03_02_10_02_05" name="ch01_03_02_10_02_05" type="text" class="inputTxt-max" /></p>
                                        <p>
                                            Date of last use
                                            <input id="ch01_03_02_10_02_06" name="ch01_03_02_10_02_06" type="text" class="inputTxt-max" /></p>
                                        <p>
                                            Most ever used
                                            <input id="ch01_03_02_10_02_07" name="ch01_03_02_10_02_07" type="text" class="inputTxt-max" /></p>
                                    </div>
                                </div>
                                <br />
                                <div class="blue_color con_padding2">
                                    3.
                                    <input name="ch01_03_02_10_03" type="text" class="inputTxt" />
                                    <div id="ch01_03_02_10_03" class="purple_color con_min hide">
                                        <p>
                                            Age of first use
                                            <input id="ch01_03_02_10_03_01" name="ch01_03_02_10_03_01" type="text" class="inputTxt-max" /></p>
                                        <p>
                                            Age of continuous/regular use
                                            <input id="ch01_03_02_10_03_02" name="ch01_03_02_10_03_02" type="text" class="inputTxt-max" /></p>
                                        <p>
                                            How it's used/route of delivery
                                            <input id="ch01_03_02_10_03_03" name="ch01_03_02_10_03_03" type="text" class="inputTxt-max" /></p>
                                        <p>
                                            Usual amount when using
                                            <input id="ch01_03_02_10_03_04" name="ch01_03_02_10_03_04" type="text" class="inputTxt-max" /></p>
                                        <p>
                                            How often used
                                            <input id="ch01_03_02_10_03_05" name="ch01_03_02_10_03_05" type="text" class="inputTxt-max" /></p>
                                        <p>
                                            Date of last use
                                            <input id="ch01_03_02_10_03_06" name="ch01_03_02_10_03_06" type="text" class="inputTxt-max" /></p>
                                        <p>
                                            Most ever used
                                            <input id="ch01_03_02_10_03_07" name="ch01_03_02_10_03_07" type="text" class="inputTxt-max" /></p>
                                    </div>
                                </div>
                                <br />
                                <div class="blue_color con_padding2">
                                    4.
                                    <input name="ch01_03_02_10_04" type="text" class="inputTxt" />
                                    <div id="ch01_03_02_10_04" class="purple_color con_min hide">
                                        <p>
                                            Age of first use
                                            <input id="ch01_03_02_10_04_01" name="ch01_03_02_10_04_01" type="text" class="inputTxt-max" /></p>
                                        <p>
                                            Age of continuous/regular use
                                            <input id="ch01_03_02_10_04_02" name="ch01_03_02_10_04_02" type="text" class="inputTxt-max" /></p>
                                        <p>
                                            How it's used/route of delivery
                                            <input id="ch01_03_02_10_04_03" name="ch01_03_02_10_04_03" type="text" class="inputTxt-max" /></p>
                                        <p>
                                            Usual amount when using
                                            <input id="ch01_03_02_10_04_04" name="ch01_03_02_10_04_04" type="text" class="inputTxt-max" /></p>
                                        <p>
                                            How often used
                                            <input id="ch01_03_02_10_04_05" name="ch01_03_02_10_04_05" type="text" class="inputTxt-max" /></p>
                                        <p>
                                            Date of last use
                                            <input id="ch01_03_02_10_04_06" name="ch01_03_02_10_04_06" type="text" class="inputTxt-max" /></p>
                                        <p>
                                            Most ever used
                                            <input id="ch01_03_02_10_04_07" name="ch01_03_02_10_04_07" type="text" class="inputTxt-max" /></p>
                                    </div>
                                </div>
                                <br />
                                <div class="blue_color con_padding2">
                                    5.
                                    <input name="ch01_03_02_10_05" type="text" class="inputTxt" />
                                    <div id="ch01_03_02_10_05" class="purple_color con_min hide">
                                        <p>
                                            Age of first use
                                            <input id="ch01_03_02_10_05_01" name="ch01_03_02_10_05_01" type="text" class="inputTxt-max" /></p>
                                        <p>
                                            Age of continuous/regular use
                                            <input id="ch01_03_02_10_05_02" name="ch01_03_02_10_05_02" type="text" class="inputTxt-max" /></p>
                                        <p>
                                            How it's used/route of delivery
                                            <input id="ch01_03_02_10_05_03" name="ch01_03_02_10_05_03" type="text" class="inputTxt-max" /></p>
                                        <p>
                                            Usual amount when using
                                            <input id="ch01_03_02_10_05_04" name="ch01_03_02_10_05_04" type="text" class="inputTxt-max" /></p>
                                        <p>
                                            How often used
                                            <input id="ch01_03_02_10_05_05" name="ch01_03_02_10_05_05" type="text" class="inputTxt-max" /></p>
                                        <p>
                                            Date of last use
                                            <input id="ch01_03_02_10_05_06" name="ch01_03_02_10_05_06" type="text" class="inputTxt-max" /></p>
                                        <p>
                                            Most ever used
                                            <input id="ch01_03_02_10_05_07" name="ch01_03_02_10_05_07" type="text" class="inputTxt-max" /></p>
                                    </div>
                                </div>
                            </div>
                        </span>
                        <br />
                        <span class="green_color con_padding">
                            <input name="ch01_03_02_11" type="checkbox" value="1" />Prescription medication
                            (list)<br />
                            <div id="ch01_03_02_11" class="hide">
                                <div class="blue_color con_padding2">
                                    1.
                                    <input name="ch01_03_02_11_01" type="text" class="inputTxt" />
                                    <div id="ch01_03_02_11_01" class="purple_color con_min hide">
                                        <p>
                                            Age of first use
                                            <input id="ch01_03_02_11_01_01" name="ch01_03_02_11_01_01" type="text" class="inputTxt-max" /></p>
                                        <p>
                                            Age of continuous/regular use
                                            <input id="ch01_03_02_11_01_02" name="ch01_03_02_11_01_02" type="text" class="inputTxt-max" /></p>
                                        <p>
                                            How it's used/route of delivery
                                            <input id="ch01_03_02_11_01_03" name="ch01_03_02_11_01_03" type="text" class="inputTxt-max" /></p>
                                        <p>
                                            Usual amount when using
                                            <input id="ch01_03_02_11_01_04" name="ch01_03_02_11_01_04" type="text" class="inputTxt-max" /></p>
                                        <p>
                                            How often used
                                            <input id="ch01_03_02_11_01_05" name="ch01_03_02_11_01_05" type="text" class="inputTxt-max" /></p>
                                        <p>
                                            Date of last use
                                            <input id="ch01_03_02_11_01_06" name="ch01_03_02_11_01_06" type="text" class="inputTxt-max" /></p>
                                        <p>
                                            Most ever used
                                            <input id="ch01_03_02_11_01_07" name="ch01_03_02_11_01_07" type="text" class="inputTxt-max" /></p>
                                    </div>
                                </div>
                                <br />
                                <div class="blue_color con_padding2">
                                    2.
                                    <input name="ch01_03_02_11_02" type="text" class="inputTxt" />
                                    <div id="ch01_03_02_11_02" class="purple_color con_min hide">
                                        <p>
                                            Age of first use
                                            <input id="ch01_03_02_11_02_01" name="ch01_03_02_11_02_01" type="text" class="inputTxt-max" /></p>
                                        <p>
                                            Age of continuous/regular use
                                            <input id="ch01_03_02_11_02_02" name="ch01_03_02_11_02_02" type="text" class="inputTxt-max" /></p>
                                        <p>
                                            How it's used/route of delivery
                                            <input id="ch01_03_02_11_02_03" name="ch01_03_02_11_02_03" type="text" class="inputTxt-max" /></p>
                                        <p>
                                            Usual amount when using
                                            <input id="ch01_03_02_11_02_04" name="ch01_03_02_11_02_04" type="text" class="inputTxt-max" /></p>
                                        <p>
                                            How often used
                                            <input id="ch01_03_02_11_02_05" name="ch01_03_02_11_02_05" type="text" class="inputTxt-max" /></p>
                                        <p>
                                            Date of last use
                                            <input id="ch01_03_02_11_02_06" name="ch01_03_02_11_02_06" type="text" class="inputTxt-max" /></p>
                                        <p>
                                            Most ever used
                                            <input id="ch01_03_02_11_02_07" name="ch01_03_02_11_02_07" type="text" class="inputTxt-max" /></p>
                                    </div>
                                </div>
                                <br />
                                <div class="blue_color con_padding2">
                                    3.
                                    <input name="ch01_03_02_11_03" type="text" class="inputTxt" />
                                    <div id="ch01_03_02_11_03" class="purple_color con_min hide">
                                        <p>
                                            Age of first use
                                            <input id="ch01_03_02_11_03_01" name="ch01_03_02_11_03_01" type="text" class="inputTxt-max" /></p>
                                        <p>
                                            Age of continuous/regular use
                                            <input id="ch01_03_02_11_03_02" name="ch01_03_02_11_03_02" type="text" class="inputTxt-max" /></p>
                                        <p>
                                            How it's used/route of delivery
                                            <input id="ch01_03_02_11_03_03" name="ch01_03_02_11_03_03" type="text" class="inputTxt-max" /></p>
                                        <p>
                                            Usual amount when using
                                            <input id="ch01_03_02_11_03_04" name="ch01_03_02_11_03_04" type="text" class="inputTxt-max" /></p>
                                        <p>
                                            How often used
                                            <input id="ch01_03_02_11_03_05" name="ch01_03_02_11_03_05" type="text" class="inputTxt-max" /></p>
                                        <p>
                                            Date of last use
                                            <input id="ch01_03_02_11_03_06" name="ch01_03_02_11_03_06" type="text" class="inputTxt-max" /></p>
                                        <p>
                                            Most ever used
                                            <input id="ch01_03_02_11_03_07" name="ch01_03_02_11_03_07" type="text" class="inputTxt-max" /></p>
                                    </div>
                                </div>
                                <br />
                                <div class="blue_color con_padding2">
                                    4.
                                    <input name="ch01_03_02_11_04" type="text" class="inputTxt" />
                                    <div id="ch01_03_02_11_04" class="purple_color con_min hide">
                                        <p>
                                            Age of first use
                                            <input id="ch01_03_02_11_04_01" name="ch01_03_02_11_04_01" type="text" class="inputTxt-max" /></p>
                                        <p>
                                            Age of continuous/regular use
                                            <input id="ch01_03_02_11_04_02" name="ch01_03_02_11_04_02" type="text" class="inputTxt-max" /></p>
                                        <p>
                                            How it's used/route of delivery
                                            <input id="ch01_03_02_11_04_03" name="ch01_03_02_11_04_03" type="text" class="inputTxt-max" /></p>
                                        <p>
                                            Usual amount when using
                                            <input id="ch01_03_02_11_04_04" name="ch01_03_02_11_04_04" type="text" class="inputTxt-max" /></p>
                                        <p>
                                            How often used
                                            <input id="ch01_03_02_11_04_05" name="ch01_03_02_11_04_05" type="text" class="inputTxt-max" /></p>
                                        <p>
                                            Date of last use
                                            <input id="ch01_03_02_11_04_06" name="ch01_03_02_11_04_06" type="text" class="inputTxt-max" /></p>
                                        <p>
                                            Most ever used
                                            <input id="ch01_03_02_11_04_07" name="ch01_03_02_11_04_07" type="text" class="inputTxt-max" /></p>
                                    </div>
                                </div>
                                <br />
                                <div class="blue_color con_padding2">
                                    5.
                                    <input name="ch01_03_02_11_05" type="text" class="inputTxt" />
                                    <div id="ch01_03_02_11_05" class="purple_color con_min hide">
                                        <p>
                                            Age of first use
                                            <input id="ch01_03_02_11_05_01" name="ch01_03_02_11_05_01" type="text" class="inputTxt-max" /></p>
                                        <p>
                                            Age of continuous/regular use
                                            <input id="ch01_03_02_11_05_02" name="ch01_03_02_11_05_02" type="text" class="inputTxt-max" /></p>
                                        <p>
                                            How it's used/route of delivery
                                            <input id="ch01_03_02_11_05_03" name="ch01_03_02_11_05_03" type="text" class="inputTxt-max" /></p>
                                        <p>
                                            Usual amount when using
                                            <input id="ch01_03_02_11_05_04" name="ch01_03_02_11_05_04" type="text" class="inputTxt-max" /></p>
                                        <p>
                                            How often used
                                            <input id="ch01_03_02_11_05_05" name="ch01_03_02_11_05_05" type="text" class="inputTxt-max" /></p>
                                        <p>
                                            Date of last use
                                            <input id="ch01_03_02_11_05_06" name="ch01_03_02_11_05_06" type="text" class="inputTxt-max" /></p>
                                        <p>
                                            Most ever used
                                            <input id="ch01_03_02_11_05_07" name="ch01_03_02_11_05_07" type="text" class="inputTxt-max" /></p>
                                    </div>
                                </div>
                                <br />
                            </div>
                        </span><span class="green_color con_padding">
                            <input name="ch01_03_02_12" type="checkbox" value="1" />Other (list)<br />
                            <div id="ch01_03_02_12" class="hide">
                                <div class="blue_color con_padding2">
                                    1.
                                    <input name="ch01_03_02_12_01" type="text" class="inputTxt" />
                                    <div id="ch01_03_02_12_01" class="purple_color con_min hide">
                                        <p>
                                            Age of first use
                                            <input id="ch01_03_02_12_01_01" name="ch01_03_02_12_01_01" type="text" class="inputTxt-max" /></p>
                                        <p>
                                            Age of continuous/regular use
                                            <input id="ch01_03_02_12_01_02" name="ch01_03_02_12_01_02" type="text" class="inputTxt-max" /></p>
                                        <p>
                                            How it's used/route of delivery
                                            <input id="ch01_03_02_12_01_03" name="ch01_03_02_12_01_03" type="text" class="inputTxt-max" /></p>
                                        <p>
                                            Usual amount when using
                                            <input id="ch01_03_02_12_01_04" name="ch01_03_02_12_01_04" type="text" class="inputTxt-max" /></p>
                                        <p>
                                            How often used
                                            <input id="ch01_03_02_12_01_05" name="ch01_03_02_12_01_05" type="text" class="inputTxt-max" /></p>
                                        <p>
                                            Date of last use
                                            <input id="ch01_03_02_12_01_06" name="ch01_03_02_12_01_06" type="text" class="inputTxt-max" /></p>
                                        <p>
                                            Most ever used
                                            <input id="ch01_03_02_12_01_07" name="ch01_03_02_12_01_07" type="text" class="inputTxt-max" /></p>
                                    </div>
                                </div>
                                <br />
                                <div class="blue_color con_padding2">
                                    2.
                                    <input name="ch01_03_02_12_02" type="text" class="inputTxt" />
                                    <div id="ch01_03_02_12_02" class="purple_color con_min hide">
                                        <p>
                                            Age of first use
                                            <input id="ch01_03_02_12_02_01" name="ch01_03_02_12_02_01" type="text" class="inputTxt-max" /></p>
                                        <p>
                                            Age of continuous/regular use
                                            <input id="ch01_03_02_12_02_02" name="ch01_03_02_12_02_02" type="text" class="inputTxt-max" /></p>
                                        <p>
                                            How it's used/route of delivery
                                            <input id="ch01_03_02_12_02_03" name="ch01_03_02_12_02_03" type="text" class="inputTxt-max" /></p>
                                        <p>
                                            Usual amount when using
                                            <input id="ch01_03_02_12_02_04" name="ch01_03_02_12_02_04" type="text" class="inputTxt-max" /></p>
                                        <p>
                                            How often used
                                            <input id="ch01_03_02_12_02_05" name="ch01_03_02_12_02_05" type="text" class="inputTxt-max" /></p>
                                        <p>
                                            Date of last use
                                            <input id="ch01_03_02_12_02_06" name="ch01_03_02_12_02_06" type="text" class="inputTxt-max" /></p>
                                        <p>
                                            Most ever used
                                            <input id="ch01_03_02_12_02_07" name="ch01_03_02_12_02_07" type="text" class="inputTxt-max" /></p>
                                    </div>
                                </div>
                                <br />
                                <div class="blue_color con_padding2">
                                    3.
                                    <input name="ch01_03_02_12_03" type="text" class="inputTxt" />
                                    <div id="ch01_03_02_12_03" class="purple_color con_min hide">
                                        <p>
                                            Age of first use
                                            <input id="ch01_03_02_12_03_01" name="ch01_03_02_12_03_01" type="text" class="inputTxt-max" /></p>
                                        <p>
                                            Age of continuous/regular use
                                            <input id="ch01_03_02_12_03_02" name="ch01_03_02_12_03_02" type="text" class="inputTxt-max" /></p>
                                        <p>
                                            How it's used/route of delivery
                                            <input id="ch01_03_02_12_03_03" name="ch01_03_02_12_03_03" type="text" class="inputTxt-max" /></p>
                                        <p>
                                            Usual amount when using
                                            <input id="ch01_03_02_12_03_04" name="ch01_03_02_12_03_04" type="text" class="inputTxt-max" /></p>
                                        <p>
                                            How often used
                                            <input id="ch01_03_02_12_03_05" name="ch01_03_02_12_03_05" type="text" class="inputTxt-max" /></p>
                                        <p>
                                            Date of last use
                                            <input id="ch01_03_02_12_03_06" name="ch01_03_02_12_03_06" type="text" class="inputTxt-max" /></p>
                                        <p>
                                            Most ever used
                                            <input id="ch01_03_02_12_03_07" name="ch01_03_02_12_03_07" type="text" class="inputTxt-max" /></p>
                                    </div>
                                </div>
                                <br />
                                <div class="blue_color con_padding2">
                                    4.
                                    <input name="ch01_03_02_12_04" type="text" class="inputTxt" />
                                    <div id="ch01_03_02_12_04" class="purple_color con_min hide">
                                        <p>
                                            Age of first use
                                            <input id="ch01_03_02_12_04_01" name="ch01_03_02_12_04_01" type="text" class="inputTxt-max" /></p>
                                        <p>
                                            Age of continuous/regular use
                                            <input id="ch01_03_02_12_04_02" name="ch01_03_02_12_04_02" type="text" class="inputTxt-max" /></p>
                                        <p>
                                            How it's used/route of delivery
                                            <input id="ch01_03_02_12_04_03" name="ch01_03_02_12_04_03" type="text" class="inputTxt-max" /></p>
                                        <p>
                                            Usual amount when using
                                            <input id="ch01_03_02_12_04_04" name="ch01_03_02_12_04_04" type="text" class="inputTxt-max" /></p>
                                        <p>
                                            How often used
                                            <input id="ch01_03_02_12_04_05" name="ch01_03_02_12_04_05" type="text" class="inputTxt-max" /></p>
                                        <p>
                                            Date of last use
                                            <input id="ch01_03_02_12_04_06" name="ch01_03_02_12_04_06" type="text" class="inputTxt-max" /></p>
                                        <p>
                                            Most ever used
                                            <input id="ch01_03_02_12_04_07" name="ch01_03_02_12_04_07" type="text" class="inputTxt-max" /></p>
                                    </div>
                                </div>
                                <br />
                                <div class="blue_color con_padding2">
                                    5.
                                    <input name="ch01_03_02_12_05" type="text" class="inputTxt" />
                                    <div id="ch01_03_02_12_05" class="purple_color con_min hide">
                                        <p>
                                            Age of first use
                                            <input id="ch01_03_02_12_05_01" name="ch01_03_02_12_05_01" type="text" class="inputTxt-max" /></p>
                                        <p>
                                            Age of continuous/regular use
                                            <input id="ch01_03_02_12_05_02" name="ch01_03_02_12_05_02" type="text" class="inputTxt-max" /></p>
                                        <p>
                                            How it's used/route of delivery
                                            <input id="ch01_03_02_12_05_03" name="ch01_03_02_12_05_03" type="text" class="inputTxt-max" /></p>
                                        <p>
                                            Usual amount when using
                                            <input id="ch01_03_02_12_05_04" name="ch01_03_02_12_05_04" type="text" class="inputTxt-max" /></p>
                                        <p>
                                            How often used
                                            <input id="ch01_03_02_12_05_05" name="ch01_03_02_12_05_05" type="text" class="inputTxt-max" /></p>
                                        <p>
                                            Date of last use
                                            <input id="ch01_03_02_12_05_06" name="ch01_03_02_12_05_06" type="text" class="inputTxt-max" /></p>
                                        <p>
                                            Most ever used
                                            <input id="ch01_03_02_12_05_07" name="ch01_03_02_12_05_07" type="text" class="inputTxt-max" /></p>
                                    </div>
                                </div>
                                <br />
                            </div>
                        </span>
                    </div>
                    <br />
                    <div id="ch01_03_03" class="green_color">
                        When using, have you ever experienced:<br />
                        <div class="green_color con_padding">
                            <input name="ch01_03_03_01" type="checkbox" value="Blackouts" />Blackouts<br />
                            <input name="ch01_03_03_02" type="checkbox" value="Passed out" />Passed out<br />
                            <input name="ch01_03_03_03" type="checkbox" value="Increased tolerance" />Increased
                            tolerance<br />
                            <input name="ch01_03_03_04" type="checkbox" value="Decreased tolerance" />Decreased
                            tolerance<br />
                            <input name="ch01_03_03_05" type="checkbox" value="Hangovers" />Hangovers<br />
                            <input name="ch01_03_03_06" type="checkbox" value="1" />Withdrawal symptoms
                            <br />
                            <span id="ch01_03_03_06_01" class="purple_color con_padding hide">Describe them
                                <input id="ch01_03_03_06_01" name="ch01_03_03_06_01" type="text" class="inputTxt-max" /><br />
                            </span>
                            <input name="ch01_03_03_07" type="checkbox" value="Unsuccessful" />Unsuccessful
                            attempts to stop/cut back use<br />
                            <input name="ch01_03_03_08" type="checkbox" value="Feelings" />Feelings of guilt/shame/embarrassment
                            about behavior during active use of substance(s)<br />
                        </div>
                    </div>
                    <br />
                    <div id="ch01_03_04" class="green_color">
                        What's your longest period of time without using substances?
                        <input id="ch01_03_04" name="ch01_03_04" type="text" class="inputTxt-max" /></div>
                    <br />
                    <br />
                    <div class="green_color">
                        Have you ever attended a 12-step group?
                        <input name="YesNo_03_05" type="radio" value="1" />Yes<input name="YesNo_03_05" type="radio"
                            value="0" checked="checked" />No<br />
                        <div id="ch01_03_05" class="con_padding hide act">
                            <div class="blue_color">
                                <input name="ch01_03_05_01" type="checkbox" value="1" />AA
                                <div id="ch01_03_05_01" class="purple_color con_padding hide">
                                    <p>
                                        How often?
                                        <input id="ch01_03_05_01_01" name="ch01_03_05_01_01" type="text" class="inputTxt-max" /></p>
                                    <p>
                                        Still attending?
                                        <input id="ch01_03_05_01_02" name="ch01_03_05_01_02" type="text" class="inputTxt-max" /></p>
                                </div>
                            </div>
                            <div class="blue_color">
                                <input name="ch01_03_05_02" type="checkbox" value="1" />NA
                                <div id="ch01_03_05_02" class="purple_color con_padding hide">
                                    <p>
                                        How often?
                                        <input id="ch01_03_05_02_01" name="ch01_03_05_02_01" type="text" class="inputTxt-max" /></p>
                                    <p>
                                        Still attending?
                                        <input id="ch01_03_05_02_02" name="ch01_03_05_02_02" type="text" class="inputTxt-max" /></p>
                                </div>
                            </div>
                            <div class="blue_color">
                                <input name="ch01_03_05_03" type="checkbox" value="1" />Other :<input name="ch01_03_05_03_03"
                                    type="text" class="inputTxt-max" />
                                <div id="ch01_03_05_03" class="purple_color con_padding hide">
                                    <p>
                                        How often?
                                        <input id="ch01_03_05_03_01" name="ch01_03_05_03_01" type="text" class="inputTxt-max" /></p>
                                    <p>
                                        Still attending?
                                        <input id="ch01_03_05_03_02" name="ch01_03_05_03_02" type="text" class="inputTxt-max" /></p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <br />
                    <div class="green_color">
                        Have you been involved in any substance abuse treatment?
                        <input name="YesNo_03_06" type="radio" value="1" />Yes<input name="YesNo_03_06" type="radio"
                            value="0" checked="checked" />No<br />
                        <div id="ch01_03_06" class="con_padding hide act">
                            <div class="blue_color">
                                <input name="ch01_03_06_01" type="checkbox" value="1" />Inpatient
                                <div id="ch01_03_06_01" class="purple_color con_padding hide">
                                    <p>
                                        When
                                        <input id="ch01_03_06_01_01" name="ch01_03_06_01_01" type="text" class="inputTxt-max" /></p>
                                    <p>
                                        Where
                                        <input id="ch01_03_06_01_02" name="ch01_03_06_01_02" type="text" class="inputTxt-max" /></p>
                                    <p>
                                        Beneficial?
                                        <input id="ch01_03_06_01_03" name="ch01_03_06_01_03" type="text" class="inputTxt-max" /></p>
                                    <p>
                                        Court ordered?
                                        <input name="YesNo_03_06_01_04" type="radio" value="1" />Yes
                                        <input name="YesNo_03_06_01_04" type="radio" value="0" checked="checked" />No
                                    </p>
                                </div>
                            </div>
                            <div class="blue_color">
                                <input name="ch01_03_06_02" type="checkbox" value="1" />Residential
                                <div id="ch01_03_06_02" class="purple_color con_padding hide">
                                    <p>
                                        When
                                        <input id="ch01_03_06_02_01" name="ch01_03_06_02_01" type="text" class="inputTxt-max" /></p>
                                    <p>
                                        Where
                                        <input id="ch01_03_06_02_02" name="ch01_03_06_02_02" type="text" class="inputTxt-max" /></p>
                                    <p>
                                        Beneficial?
                                        <input id="ch01_03_06_02_03" name="ch01_03_06_02_03" type="text" class="inputTxt-max" /></p>
                                    <p>
                                        Court ordered?<input name="YesNo_03_06_02_04" type="radio" value="1" />Yes
                                        <input name="YesNo_03_06_02_04" type="radio" value="0" checked="checked" />No</p>
                                </div>
                            </div>
                            <div class="blue_color">
                                <input name="ch01_03_06_03" type="checkbox" value="1" />Intensive outpatient
                                <div id="ch01_03_06_03" class="purple_color con_padding hide">
                                    <p>
                                        When
                                        <input id="ch01_03_06_03_01" name="ch01_03_06_03_01" type="text" class="inputTxt-max" /></p>
                                    <p>
                                        Where
                                        <input id="ch01_03_06_03_02" name="ch01_03_06_03_02" type="text" class="inputTxt-max" /></p>
                                    <p>
                                        Beneficial?
                                        <input id="ch01_03_06_03_03" name="ch01_03_06_03_03" type="text" class="inputTxt-max" /></p>
                                    <p>
                                        Court ordered?<input name="YesNo_03_06_03_04" type="radio" value="1" />Yes
                                        <input name="YesNo_03_06_03_04" type="radio" value="0" checked="checked" />No</p>
                                </div>
                            </div>
                            <div class="blue_color">
                                <input name="ch01_03_06_04" type="checkbox" value="1" />Group therapy
                                <div id="ch01_03_06_04" class="purple_color con_padding hide">
                                    <p>
                                        When
                                        <input id="ch01_03_06_04_01" name="ch01_03_06_04_01" type="text" class="inputTxt-max" /></p>
                                    <p>
                                        Where
                                        <input id="ch01_03_06_04_02" name="ch01_03_06_04_02" type="text" class="inputTxt-max" /></p>
                                    <p>
                                        Beneficial?
                                        <input id="ch01_03_06_04_03" name="ch01_03_06_04_03" type="text" class="inputTxt-max" /></p>
                                    <p>
                                        Court ordered?<input name="YesNo_03_06_04_04" type="radio" value="1" />Yes
                                        <input name="YesNo_03_06_04_04" type="radio" value="0" checked="checked" />No</p>
                                </div>
                            </div>
                            <div class="blue_color">
                                <input name="ch01_03_06_05" type="checkbox" value="1" />Individual outpatient therapy
                                <div id="ch01_03_06_05" class="purple_color con_padding hide">
                                    <p>
                                        When
                                        <input id="ch01_03_06_05_01" name="ch01_03_06_05_01" type="text" class="inputTxt-max" /></p>
                                    <p>
                                        Where
                                        <input id="ch01_03_06_05_02" name="ch01_03_06_05_02" type="text" class="inputTxt-max" /></p>
                                    <p>
                                        Beneficial?
                                        <input id="ch01_03_06_05_03" name="ch01_03_06_05_03" type="text" class="inputTxt-max" /></p>
                                    <p>
                                        Court ordered?<input name="YesNo_03_06_05_04" type="radio" value="1" />Yes
                                        <input name="YesNo_03_06_05_04" type="radio" value="0" checked="checked" />No</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <br />
                    <div class="green_color">
                        Have you engaged in any illegal activity during these experiences or in an attempt
                        to gain access to the substance(s) of abuse?
                        <br />
                        <input name="YesNo_03_07" type="radio" value="1" />Yes<input name="YesNo_03_07" type="radio"
                            value="0" checked="checked" />No<br />
                        <span id="ch01_03_07" class="blue_color con_padding2 hide act">Describe them:
                            <input id="ch01_03_07" name="ch01_03_07" type="text" class="inputTxt-max" /></span><br />
                    </div>
                    <br />
                    <div class="green_color">
                        Have there been any significant changes to your life as a result of these activities
                        (e.g. loss of finances, loss of a relationship, loss of a job/education, legal problems)?
                        <input name="YesNo_03_08" type="radio" value="1" />Yes<input name="YesNo_03_08" type="radio"
                            value="0" checked="checked" />No<br />
                        <span id="ch01_03_08" class="blue_color con_padding2 hide act">Describe them:
                            <input id="ch01_03_08" name="ch01_03_08" type="text" class="inputTxt-max" /></span><br />
                    </div>
                    <br />
                    <div class="green_color">
                        Do any family members have a problem with alcohol or substance use?
                        <input name="YesNo_03_01" type="radio" value="1" />Yes<input name="YesNo_03_01" type="radio"
                            value="0" checked="checked" />No<br />
                        <br />
                        <div id="ch01_03_01" class="blue_color con_padding hide act">
                            <input name="ch01_03_01_01" type="checkbox" value="Mother" />Mother<br />
                            <input name="ch01_03_01_02" type="checkbox" value="Father" />Father<br />
                            <input name="ch01_03_01_03" type="checkbox" value="Brother(s)" />Brother(s)<br />
                            <input name="ch01_03_01_04" type="checkbox" value="Sister(s)" />Sister(s)<br />
                            <input name="ch01_03_01_05" type="checkbox" value="Spouse" />Spouse<br />
                            <input name="ch01_03_01_06" type="checkbox" value="Maternal grandmother" />Maternal
                            grandmother<br />
                            <input name="ch01_03_01_07" type="checkbox" value="Maternal grandfather" />Maternal
                            grandfather<br />
                            <input name="ch01_03_01_08" type="checkbox" value="Paternal grandmother" />Paternal
                            grandmother<br />
                            <input name="ch01_03_01_09" type="checkbox" value="Paternal grandfather" />Paternal
                            grandfather<br />
                            <input name="ch01_03_01_10" type="checkbox" value="Children" />Children<br />
                        </div>
                    </div>
                </div>
                <br />

                <span class="red_color">Are you having unusual or bizarre thoughts or feelings, or have
                    friends or family told you that you are acting strange?
                    <input name="YesNo_04" type="radio" value="1" />Yes<input name="YesNo_04" type="radio"
                        value="0" checked="checked" />No
                </span><br />

                <div id="ch01_04" class="con_padding hide">
                    <span class="green_color">Have there been experiences of hearing/seeing/smelling/feeling
                        things that no one else around you experiences?
                        <input name="YesNo_04_01" type="radio" value="1" />Yes<input name="YesNo_04_01" type="radio"
                            value="0" checked="checked" />No<br />
                        <div id="ch01_04_01" class="con_padding hide act">
                            <div id="ch01_04_01_01" class="blue_color">
                                Describe the nature of these:
                                <input id="ch01_04_01_01" name="ch01_04_01_01" type="text" class="inputTxt-max" /></div>
                            <br />
                            <div id="ch01_04_01_02" class="blue_color">
                                How often do they occur?
                                <input id="ch01_04_01_02" name="ch01_04_01_02" type="text" class="inputTxt-max" /></div>
                            <br />
                            <div id="ch01_04_01_03" class="blue_color">
                                Have these experiences had an effect on your relationships with others?
                                <input name="YesNo_04_01_03" type="radio" value="1" />Yes<input name="YesNo_04_01_03"
                                    type="radio" value="0" checked="checked" />No<br />
                                <div id="ch01_04_01_03_01" class="purple_color con_padding hide act">
                                    <p>
                                        What relationships?
                                        <input id="ch01_04_01_03_01_01" name="ch01_04_01_03_01_01" type="text" class="inputTxt-max" /></p>
                                    <p>
                                        How were they affected?
                                        <input id="ch01_04_01_03_01_02" name="ch01_04_01_03_01_02" type="text" class="inputTxt-max" /></p>
                                </div>
                                <br />
                            </div>
                            <div id="ch01_04_01_04" class="blue_color">
                                Have these experiences occurred exclusively during or around substance use or abuse?
                                <input name="YesNo_04_01_04" type="radio" value="1" />Yes<input name="YesNo_04_01_04"
                                    type="radio" value="0" checked="checked" />No</div>
                            <span id="ch01_04_01_04_01" class="purple_color con_padding hide act">[If the substance
                                abuse questions have been answered, clinician shouldn't need to revisit them]</span><br />
                            <div id="ch01_04_01_05" class="blue_color">
                                Are there any current legal problems as a result of these experiences?
                                <input name="YesNo_04_01_05" type="radio" value="1" />Yes<input name="YesNo_04_01_05"
                                    type="radio" value="0" checked="checked" />No</div>
                            <span id="ch01_04_01_05_01" class="purple_color con_padding hide act">Describe these
                                problems:
                                <input id="ch01_04_01_05_01" name="ch01_04_01_05_01" type="text" class="inputTxt-max" /></span><br />
                            <div id="ch01_04_01_06" class="blue_color">
                                Have these experiences occurred exclusively during or around a time when there have
                                been significant mood problems?
                                <br />
                                <input name="YesNo_04_01_06" type="radio" value="1" />Yes<input name="YesNo_04_01_06"
                                    type="radio" value="0" checked="checked" />No</div>
                            <span id="ch01_04_01_06_01" class="purple_color con_padding hide act">[If the mood disorder
                                questions have been answered, clinician shouldn't need to revisit them]</span><br />
                            <div id="ch01_04_01_07" class="blue_color">
                                Have there been significant mood problems in your past that were NOT accompanied
                                by similar experiences as above?
                                <br />
                                <input name="YesNo_04_01_07" type="radio" value="1" />Yes<input name="YesNo_04_01_07"
                                    type="radio" value="0" checked="checked" />No</div>
                            <span id="ch01_04_01_07_01" class="purple_color con_padding hide act">[If the mood disorder
                                questions have been answered, clinician shouldn't need to revisit them]</span>
                        </div>
                    </span>
                    <br />
                    <span class="green_color">Are you experiencing things that others say is not really
                        happening?
                        <input name="YesNo_04_02" type="radio" value="1" />Yes<input name="YesNo_04_02" type="radio"
                            value="0" checked="checked" />No</span><br />
                    <div id="ch01_04_02" class="blue_color con_padding hide act">
                        <div id="ch01_04_02_01" class="blue_color">
                            Are there things you believe are happening to you but others either don't believe
                            they are occurring or don't recognize the supporting evidence you believe exists?
                            <input name="YesNo_04_02_01" type="radio" value="1" />Yes<input name="YesNo_04_02_01"
                                type="radio" value="0" checked="checked" />No</div>
                        <span id="ch01_04_02_01_01" class="purple_color con_padding hide act">What is occurring?
                            <input id="ch01_04_02_01_01" name="ch01_04_02_01_01" type="text" class="inputTxt-max" /></span><br />
                        <div id="ch01_04_02_02" class="blue_color">
                            Are there things you believe are happening around you (that may or may not be having
                            a direct effect on you) but others either don't believe they are occurring or don't
                            recognize the supporting evidence you believe exists?
                            <input name="YesNo_04_02_02" type="radio" value="1" />Yes<input name="YesNo_04_02_02"
                                type="radio" value="0" checked="checked" />No</div>
                        <span id="ch01_04_02_02_01" class="purple_color con_padding hide act">What is occurring?
                            <input id="ch01_04_02_02_01" name="ch01_04_02_02_01" type="text" class="inputTxt-max" /></span><br />
                        <div id="ch01_04_02_03" class="blue_color">
                            Do you believe you have special talents or abilities but others either don't believe
                            they exist or don't recognize the supporting evidence you believe exists?
                            <input name="YesNo_04_02_03" type="radio" value="1" />Yes<input name="YesNo_04_02_03"
                                type="radio" value="0" checked="checked" />No</div>
                        <span id="ch01_04_02_03_01" class="purple_color con_padding hide act">What are these?
                            <input id="ch01_04_02_03_01" name="ch01_04_02_03_01" type="text" class="inputTxt-max" /></span><br />
                        <div id="ch01_04_02_04" class="blue_color">
                            Do you see special meaning in things happening around you that others believe are
                            just part of normal everyday occurrences?
                            <br />
                            <input name="YesNo_04_02_04" type="radio" value="1" />Yes<input name="YesNo_04_02_04"
                                type="radio" value="0" checked="checked" />No</div>
                        <span id="ch01_04_02_04_01" class="purple_color con_padding hide act">What are these?
                            <input id="ch01_04_02_04_01" name="ch01_04_02_04_01" type="text" class="inputTxt-max" /></span>
                    </div>
                </div>
                <br />
                <span class="red_color">Are you experiencing any of the following: problems paying attention,
                    trouble concentrating, easily distracted, unusually hyper and overactive, compulsive
                    behaviors (e.g. hair pulling, gambling, stealing, sexual activity), impulsive anger
                    or aggressive outbursts, or any other difficulty controlling impulsive or compulsive
                    behaviors?
                    <input name="YesNo_05" type="radio" value="1" />Yes<input name="YesNo_05" type="radio"
                        value="0" checked="checked" />No</span><br />
                <div id="ch01_05" class="con_padding hide">
                    <div class="green_color">
                        Have you had great difficulty sustaining attention to uninteresting activities,
                        been unusually hyper/impulsive, or both?
                        <br />
                        <input name="YesNo_05_01" type="radio" value="1" />Yes<input name="YesNo_05_01" type="radio"
                            value="0" checked="checked" />No<br />
                        <div id="ch01_05_01" class="blue_color con_padding hide">
                            <div>
                                Were these difficulties evident in childhood?
                                <input name="YesNo_05_01_01" type="radio" value="1" />Yes<input name="YesNo_05_01_01"
                                    type="radio" value="0" checked="checked" />No<br />
                                <div id="ch01_05_01_01" class="purple_color con_padding hide">
                                    At what age?
                                    <input id="ch01_05_01_01" name="ch01_05_01_01" type="text" class="inputTxt-max" /></div>
                            </div>
                            <div>
                                Did these difficulties lead to problems in nearly every area of your life?
                                <input name="YesNo_05_01_02" type="radio" value="1" />Yes<input name="YesNo_05_01_02"
                                    type="radio" value="0" checked="checked" />No</div>
                        </div>
                    </div>
                    <br />
                    <div class="green_color">
                        Have you ever had difficulty controlling your anger or any aggressive impulses?
                        <input name="YesNo_05_02" type="radio" value="1" />Yes<input name="YesNo_05_02" type="radio"
                            value="0" checked="checked" />No<br />
                        <div id="ch01_05_02" class="blue_color con_padding hide">
                            <div>
                                Has this ever resulted in injury to yourself or others, damage to property or legal
                                difficulties?
                                <input name="YesNo_05_02_01" type="radio" value="1" />Yes<input name="YesNo_05_02_01"
                                    type="radio" value="0" checked="checked" />No<br />
                                <div id="ch01_05_02_01" class="purple_color con_padding hide">
                                    <div>
                                        Did you injure someone else?
                                        <input name="YesNo_05_02_01_01" type="radio" value="1" />Yes<input name="YesNo_05_02_01_01"
                                            type="radio" value="0" checked="checked" />No<br />
                                        <div id="ch01_05_02_01_01" class="yellow_color con_padding hide">
                                            Who were they in relationship to you and what were the injuries?
                                            <input id="ch01_05_02_01_01" name="ch01_05_02_01_01" type="text" class="inputTxt-max" /></div>
                                    </div>
                                    <div>
                                        Did you cause damage to property?
                                        <input name="YesNo_05_02_01_02" type="radio" value="1" />Yes<input name="YesNo_05_02_01_02"
                                            type="radio" value="0" checked="checked" />No<br />
                                        <div id="ch01_05_02_01_02" class="yellow_color con_padding hide">
                                            Please explain:
                                            <input id="ch01_05_02_01_02" name="ch01_05_02_01_02" type="text" class="inputTxt-max" /></div>
                                    </div>
                                    <div>
                                        Did the behavior result in legal difficulties?
                                        <input name="YesNo_05_02_01_03" type="radio" value="1" />Yes<input name="YesNo_05_02_01_03"
                                            type="radio" value="0" checked="checked" />No<br />
                                        <div id="ch01_05_02_01_03" class="yellow_color con_padding hide">
                                            Please explain:
                                            <input id="ch01_05_02_01_03" name="ch01_05_02_01_03" type="text" class="inputTxt-max" /></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <br />
                    <div class="green_color">
                        Have you had a significant difficulty relating to anyone in authority (e.g. parent,
                        guardian, boss, police) and any attempts by you to control this behavior usually
                        fails?
                        <input name="YesNo_05_03" type="radio" value="1" />Yes<input name="YesNo_05_03" type="radio"
                            value="0" checked="checked" />No<br />
                        <div id="ch01_05_03" class="blue_color con_padding hide">
                            Did these difficulties begin in childhood in relation to your parent(s), guardian(s),
                            or teacher(s)?
                            <input name="YesNo_05_03_01" type="radio" value="1" />Yes<input name="YesNo_05_03_01"
                                type="radio" value="0" checked="checked" />No<br />
                            <div id="ch01_05_03_01" class="purple_color con_padding hide">
                                Did they lead to significant consequences (legal or otherwise)?
                                <input name="YesNo_05_03_01_01" type="radio" value="1" />Yes<input name="YesNo_05_03_01_01"
                                    type="radio" value="0" checked="checked" />No<br />
                                <div id="ch01_05_03_01_01" class="yellow_color con_padding hide">
                                    Please explain:
                                    <input id="ch01_05_03_01_01" name="ch01_05_03_01_01" type="text" class="inputTxt-max" /></div>
                            </div>
                        </div>
                    </div>
                    <br />
                    <div class="green_color">
                        Have you intentionally either caused harm to others or animals, or have you intentionally
                        stolen or damaged property that has significant value?
                        <input name="YesNo_05_04" type="radio" value="1" />Yes<input name="YesNo_05_04" type="radio"
                            value="0" checked="checked" />No<br />
                        <div id="ch01_05_04" class="blue_color con_padding hide">
                            <div>
                                Were they injuries to others or animals?
                                <input name="YesNo_05_04_01" type="radio" value="1" />Yes<input name="YesNo_05_04_01"
                                    type="radio" value="0" checked="checked" />No<br />
                                <div id="ch01_05_04_01" class="purple_color con_padding hide">
                                    Who were the victims and what was the extent of the injury?
                                    <input id="ch01_05_04_01" name="ch01_05_04_01" type="text" class="inputTxt-max" /></div>
                            </div>
                            <div>
                                Was it stolen or damaged property?
                                <input name="YesNo_05_04_02" type="radio" value="1" />Yes<input name="YesNo_05_04_02"
                                    type="radio" value="0" checked="checked" />No<br />
                                <div id="ch01_05_04_02" class="purple_color con_padding hide">
                                    What was the property and was it stolen or damaged?
                                    <input id="ch01_05_04_02" name="ch01_05_04_02" type="text" class="inputTxt-max" /></div>
                            </div>
                            <div>
                                What were the consequences of this behavior (legal or otherwise)?
                                <input id="ch01_05_04_03" name="ch01_05_04_03" type="text" class="inputTxt-max" /></div>
                        </div>
                    </div>
                    <br />
                    <div class="green_color">
                        Have you had sporadic (yet numerous) difficulties with substance abuse?
                        <input name="YesNo_05_05" type="radio" value="1" />Yes<input name="YesNo_05_05" type="radio"
                            value="0" checked="checked" />No<br />
                        <div id="ch01_05_05" class="blue_color con_padding hide">
                            [If not already walked through substance abuse cluster questions, offer them at
                            this point] *****</div>
                    </div>
                    <br />
                    <div class="green_color">
                        Have you had either short and numerous relationships or had difficulty maintaining
                        most relationships?
                        <input name="YesNo_05_06" type="radio" value="1" />Yes<input name="YesNo_05_06" type="radio"
                            value="0" checked="checked" />No<br />
                        <div id="ch01_05_06" class="blue_color con_padding hide">
                            <div>
                                Have a significant number of these relationships been sexual?
                                <input name="YesNo_05_06_01" type="radio" value="1" />Yes<input name="YesNo_05_06_01"
                                    type="radio" value="0" checked="checked" />No<br />
                                <div id="ch01_05_06_01" class="purple_color con_padding hide">
                                    Describe them and how they ended:
                                    <input id="ch01_05_06_01" name="ch01_05_06_01" type="text" class="inputTxt-max" /></div>
                            </div>
                            <div>
                                Have any of these relationships involved violence, injury or abuse?
                                <input name="YesNo_05_06_02" type="radio" value="1" />Yes<input name="YesNo_05_06_02"
                                    type="radio" value="0" checked="checked" />No<br />
                                <div id="ch01_05_06_02" class="purple_color con_padding hide">
                                    Describe the violence, injury or abuse:
                                    <input id="ch01_05_06_02" name="ch01_05_06_02" type="text" class="inputTxt-max" /></div>
                            </div>
                        </div>
                    </div>
                    <br />
                    <div class="green_color">
                        Have you had difficulty with compulsive behaviors that it seems you can not stop
                        doing even though you may have attempted to stop in the past?
                        <input name="YesNo_05_07" type="radio" value="1" />Yes<input name="YesNo_05_07" type="radio"
                            value="0" checked="checked" />No<br />
                        <div id="ch01_05_07" class="blue_color con_padding hide">
                            <div>
                                Has it involved games of chance?
                                <input name="YesNo_05_07_01" type="radio" value="1" />Yes<input name="YesNo_05_07_01"
                                    type="radio" value="0" checked="checked" />No
                                <div id="ch01_05_07_01" class="purple_color con_padding hide">
                                    <div>
                                        What do you gamble on?
                                        <br />
                                        <input name="ch01_05_07_01_01" type="checkbox" value="Horses" />Horses<br />
                                        <input name="ch01_05_07_01_02" type="checkbox" value="Casinos" />Casinos<br />
                                        <input name="ch01_05_07_01_03" type="checkbox" value="Cards" />Cards<br />
                                        <input name="ch01_05_07_01_04" type="checkbox" value="Lottery" />Lottery<br />
                                        <input name="ch01_05_07_01_05" type="checkbox" value="Personal wagers" />Personal
                                        wagers<br />
                                        <input name="ch01_05_07_01_06" type="checkbox" value="Sporting event" />Sporting
                                        event<br />
                                        <input name="ch01_05_07_01_07" type="checkbox" value="Office" />Office/work pools<br />
                                        <input name="ch01_05_07_01_08" type="checkbox" value="Bingo" />Bingo<br />
                                    </div>
                                    <br />
                                    <div id="ch01_05_07_01_02">
                                        Have you ever tried to change the amount you gamble?<input name="YesNo_05_07_01_02"
                                            type="radio" value="1" />Yes<input name="YesNo_05_07_01_02" type="radio" value="0"
                                                checked="checked" />No</div>
                                    <br />
                                    <div>
                                        Do you get angry when someone questions or criticizes your gambling?
                                        <input name="YesNo_05_07_01_03" type="radio" value="1" />Yes<input name="YesNo_05_07_01_03"
                                            type="radio" value="0" checked="checked" />No</div>
                                    <br />
                                    <div>
                                        Have you ever felt guilty because of your gambling?
                                        <input name="YesNo_05_07_01_04" type="radio" value="1" />Yes<input name="YesNo_05_07_01_04"
                                            type="radio" value="0" checked="checked" />No</div>
                                    <br />
                                    <div>
                                        Have you ever had significant life problems as a result of your gambling?
                                        <input name="YesNo_05_07_01_05" type="radio" value="1" />Yes<input name="YesNo_05_07_01_05"
                                            type="radio" value="0" checked="checked" />No<br />
                                        <div id="ch01_05_07_01_05" class="yellow_color con_padding hide">
                                            Check all that apply:
                                            <br />
                                            <input name="ch01_05_07_01_05_01" type="checkbox" value="Legal" />Legal<br />
                                            <input name="ch01_05_07_01_05_02" type="checkbox" value="Family" />Family<br />
                                            <input name="ch01_05_07_01_05_03" type="checkbox" value="Work" />Work<br />
                                            <input name="ch01_05_07_01_05_04" type="checkbox" value="School" />School<br />
                                        </div>
                                    </div>
                                    <br />
                                    <div>
                                        Do you ever sell things or borrow money to use for gambling?
                                        <input name="YesNo_05_07_01_06" type="radio" value="1" />Yes<input name="YesNo_05_07_01_06"
                                            type="radio" value="0" checked="checked" />No</div>
                                    <br />
                                    <div>
                                        Have you ever been to treatment for gambling addiction?
                                        <input name="YesNo_05_07_01_07" type="radio" value="1" />Yes<input name="YesNo_05_07_01_07"
                                            type="radio" value="0" checked="checked" />No<br />
                                        <div id="ch01_05_07_01_07" class="yellow_color con_padding hide">
                                            <span>
                                                <input name="ch01_05_07_01_07_01" type="checkbox" value="1" />Inpatient<br />
                                            </span>
                                            <div id="ch01_05_07_01_07_01" class="dad_color con_padding hide">
                                                When?
                                                <input id="ch01_05_07_01_07_01_01" name="ch01_05_07_01_07_01_01" type="text" class="inputTxt-max" /><br />
                                                <br />
                                                Where?
                                                <input id="ch01_05_07_01_07_01_02" name="ch01_05_07_01_07_01_02" type="text" class="inputTxt-max" /><br />
                                            </div>
                                            <span>
                                                <input name="ch01_05_07_01_07_02" type="checkbox" value="1" />Residential<br />
                                            </span>
                                            <div id="ch01_05_07_01_07_02" class="dad_color con_padding hide">
                                                When?
                                                <input id="ch01_05_07_01_07_02_01" name="ch01_05_07_01_07_02_01" type="text" class="inputTxt-max" /><br />
                                                <br />
                                                Where?
                                                <input id="ch01_05_07_01_07_02_02" name="ch01_05_07_01_07_02_02" type="text" class="inputTxt-max" /><br />
                                            </div>
                                            <span>
                                                <input name="ch01_05_07_01_07_03" type="checkbox" value="1" />Intensive outpatient<br />
                                            </span>
                                            <div id="ch01_05_07_01_07_03" class="dad_color con_padding hide">
                                                When?
                                                <input id="ch01_05_07_01_07_03_01" name="ch01_05_07_01_07_03_01" type="text" class="inputTxt-max" /><br />
                                                <br />
                                                Where?
                                                <input id="ch01_05_07_01_07_03_02" name="ch01_05_07_01_07_03_02" type="text" class="inputTxt-max" /><br />
                                            </div>
                                            <span>
                                                <input name="ch01_05_07_01_07_04" type="checkbox" value="1" />Group<br />
                                            </span>
                                            <div id="ch01_05_07_01_07_04" class="dad_color con_padding hide">
                                                When?
                                                <input id="ch01_05_07_01_07_04_01" name="ch01_05_07_01_07_04_01" type="text" class="inputTxt-max" /><br />
                                                <br />
                                                Where?
                                                <input id="ch01_05_07_01_07_04_02" name="ch01_05_07_01_07_04_02" type="text" class="inputTxt-max" /><br />
                                            </div>
                                        </div>
                                    </div>
                                    <br />
                                    <div>
                                        Do you attend Gamblers Anonymous?
                                        <input name="YesNo_05_07_01_08" type="radio" value="1" />Yes<input name="YesNo_05_07_01_08"
                                            type="radio" value="0" checked="checked" />No<br />
                                        <div id="ch01_05_07_01_08" class="yellow_color con_padding hide">
                                            How often
                                            <input id="ch01_05_07_01_08" name="ch01_05_07_01_08_01" type="text" class="inputTxt-max" /></div>
                                    </div>
                                    <br />
                                    <div>
                                        Do you utilize the Gambler's Help Line?
                                        <input name="YesNo_05_07_01_09" type="radio" value="1" />Yes<input name="YesNo_05_07_01_09"
                                            type="radio" value="0" checked="checked" />No<br />
                                        <div id="ch01_05_07_01_09" class="yellow_color con_padding hide">
                                            How often
                                            <input id="ch01_05_07_01_09" name="ch01_05_07_01_09" type="text" class="inputTxt-max" /></div>
                                        <div>
                                        </div>
                                    </div>
                                </div>
                                <br />
                                <span>Has it involved pulling hair or picking at scabs/sores on your body?<input
                                    name="YesNo_05_07_02" type="radio" value="1" />Yes<input name="YesNo_05_07_02" type="radio"
                                        value="0" checked="checked" />No<br />
                                    <div id="ch01_05_07_02" class="purple_color con_padding hide">
                                        <div>
                                            Has it caused significant hair loss?
                                            <input name="YesNo_05_07_02_01" type="radio" value="1" />Yes<input name="YesNo_05_07_02_01"
                                                type="radio" value="0" checked="checked" />No<br />
                                            <div id="ch01_05_07_02_01" class="yellow_color con_padding hide">
                                                Where on your body is the hair loss?
                                                <input id="ch01_05_07_02_01" name="ch01_05_07_02_01" type="text" class="inputTxt-max" /></div>
                                        </div>
                                        <div id="ch01_05_07_02_02">
                                            If you pick at sores/scabs on your body, where are these areas that are affected?
                                            <input id="ch01_05_07_02_02" name="ch01_05_07_02_02" type="text" class="inputTxt-max" /></div>
                                    </div>
                                </span><span>Has it involved sexual behavior?
                                    <input name="YesNo_05_07_03" type="radio" value="1" />Yes<input name="YesNo_05_07_03"
                                        type="radio" value="0" checked="checked" />No<br />
                                    <div id="ch01_05_07_03" class="purple_color con_padding hide">
                                        <div>
                                            Has it directly caused any illness or STD?
                                            <input name="YesNo_05_07_03_01" type="radio" value="1" />Yes<input name="YesNo_05_07_03_01"
                                                type="radio" value="0" checked="checked" />No<br />
                                            <div id="ch01_05_07_03_01" class="yellow_color con_padding hide">
                                                Please explain:
                                                <input id="ch01_05_07_03_01" name="ch01_05_07_03_01" type="text" class="inputTxt-max" /></div>
                                        </div>
                                        <div id="ch01_05_07_03_02">
                                            Approximately how many sexual partners have you had?
                                            <input id="ch01_05_07_03_02" name="ch01_05_07_03_02" type="text" class="inputTxt-max" /></div>
                                        <div>
                                            Have you had any inappropriate sexual partners (e.g. parent, guardian, authority
                                            figure, sibling, or same-sex relationship even though you don't consider yourself
                                            homosexual in orientation)?
                                            <input name="YesNo_05_07_03_03" type="radio" value="1" />Yes<input name="YesNo_05_07_03_03"
                                                type="radio" value="0" checked="checked" />No<br />
                                            <div id="ch01_05_07_03_03" class="yellow_color con_padding hide">
                                                Please list and describe the relationship(s):
                                                <input id="ch01_05_07_03_03" name="ch01_05_07_03_03" type="text" class="inputTxt-max" /></div>
                                        </div>
                                    </div>
                                </span><span>Has it involved fire setting?
                                    <input name="YesNo_05_07_04" type="radio" value="1" />Yes<input name="YesNo_05_07_04"
                                        type="radio" value="0" checked="checked" />No<br />
                                    <div id="ch01_05_07_04" class="purple_color con_padding hide">
                                        <div>
                                            Was this fire setting done almost exclusively for financial or personal gain?
                                            <input name="YesNo_05_07_04_01" type="radio" value="1" />Yes<input name="YesNo_05_07_04_01"
                                                type="radio" value="0" checked="checked" />No</div>
                                        <div>
                                            Did it result in significant damage to property or was any person or animal injured?
                                            <input name="YesNo_05_07_04_02" type="radio" value="1" />Yes<input name="YesNo_05_07_04_02"
                                                type="radio" value="0" checked="checked" />No<br />
                                            <div id="ch01_05_07_04_02" class="yellow_color con_padding hide">
                                                Please explain:
                                                <input id="ch01_05_07_04_02" name="ch01_05_07_04_02" type="text" class="inputTxt-max" /></div>
                                        </div>
                                    </div>
                                </span>
                            </div>
                            <br />
                            <div class="green_color">
                                Have these behaviors occurred almost exclusively in the presence of substance abuse?
                                <input name="YesNo_05_08" type="radio" value="1" />Yes<input name="YesNo_05_08" type="radio"
                                    value="0" checked="checked" />No<br />
                                <div id="ch01_05_08" class="blue_color con_padding hide">
                                    [Offer to take clinician to substance abuse cluster questions or return to same
                                    at a later time] ******</div>
                            </div>
                            <br />
                            <div class="green_color">
                                Are these behaviors often preceded by intense feeling of need or anxiety, and once
                                completed, followed by feelings of intense relief or satisfaction?
                                <input name="YesNo_05_09" type="radio" value="1" />Yes<input name="YesNo_05_09" type="radio"
                                    value="0" checked="checked" />No<br />
                                <div id="ch01_05_09" class="blue_color con_padding hide">
                                    Please explain:
                                    <input id="ch01_05_09" name="ch01_05_09" type="text" class="inputTxt-max" /></div>
                            </div>
                            <br />
                            <div class="green_color">
                                Have you made numerous attempts to control or stop these behaviors without any long
                                term effect?
                                <input name="YesNo_05_10" type="radio" value="1" />Yes<input name="YesNo_05_10" type="radio"
                                    value="0" checked="checked" />No<br />
                                <div id="ch01_05_10" class="blue_color con_padding hide">
                                    Has this involved any formal treatment or the help of others?<input name="YesNo_05_10_01"
                                        type="radio" value="1" />Yes<input name="YesNo_05_10_01" type="radio" value="0" checked="checked" />No<br />
                                    <div id="ch01_05_10_01" class="purple_color con_padding hide">
                                        Please explain:
                                        <input id="ch01_05_10_01" name="ch01_05_10_01" type="text" class="inputTxt-max" /></div>
                                </div>
                            </div>
                            <br />
                            <div class="green_color">
                                Have you continued these behaviors in spite of experiencing numerous significant
                                consequences as a result (e.g. financial, legal, relational, disease/injury)?
                                <input name="YesNo_05_11" type="radio" value="1" />Yes<input name="YesNo_05_11" type="radio"
                                    value="0" checked="checked" />No<br />
                                <div id="ch01_05_11" class="blue_color con_padding hide">
                                    Please list and describe the consequences experienced:
                                    <input id="ch01_05_11" name="ch01_05_11" type="text" class="inputTxt-max" /></div>
                            </div>
                        </div>
                        <br />
                    </div>
                </div>
                <br />
                <span class="red_color">Have you recently experienced any of the following: Significant
                    anxiety, repeated ER visits for somatic complaints without them finding any source,
                    re-experiencing past traumatic experiences, social avoidance, significantly heightened
                    awareness/startle/vigilance, obsessive thoughts, compulsive behaviors, significant
                    fear of specific things, or avoidance of experiences you fear will lead to anxiety
                    or negative outcomes?
                    <br />
                    <input name="YesNo_06" type="radio" value="1" />Yes<input name="YesNo_06" type="radio"
                        value="0" checked="checked" />No</span><br />
                <div id="ch01_06" class="con_padding hide">
                    <div class="green_color">
                        Have you had discrete episodes of panic, where you feel consumed by some feeling
                        of impending doom or negative outcome (with or without associated physical symptoms)?
                        <input name="YesNo_06_01" type="radio" value="1" />Yes<input name="YesNo_06_01" type="radio"
                            value="0" checked="checked" />No<br />
                        <div id="ch01_06_01" class="blue_color con_padding hide">
                            <div>
                                Have these episodes led to your avoidance of things/experiences you fear will lead
                                to additional episodes?
                                <input name="YesNo_06_01_01" type="radio" value="1" />Yes<input name="YesNo_06_01_01"
                                    type="radio" value="0" checked="checked" />No<br />
                                <div id="ch01_06_01_01" class="purple_color con_padding hide">
                                    Have they led to you being nearly completely housebound?
                                    <input name="YesNo_06_01_01_01" type="radio" value="1" />Yes<input name="YesNo_06_01_01_01"
                                        type="radio" value="0" checked="checked" />No
                                    <div id="ch01_06_01_01_01" class="yellow_color con_padding2 hide">
                                        Please describe your daily routine:
                                        <input id="ch01_06_01_01_01" name="ch01_06_01_01_01" type="text" class="inputTxt-max" /></div>
                                </div>
                            </div>
                            <br />
                            <div>
                                What has been the frequency of these episodes (per day, week or month)?
                                <input id="ch01_06_01_02" name="ch01_06_01_02" type="text" class="inputTxt-max" /></div>
                            <br />
                            <div>
                                Please describe the character of these episodes:
                                <input id="ch01_06_01_03" name="ch01_06_01_03" type="text" class="inputTxt-max" /></div>
                            <br />
                            <div>
                                Have you had any physical symptoms associated with these episodes?
                                <input name="YesNo_06_01_04" type="radio" value="1" />Yes<input name="YesNo_06_01_04"
                                    type="radio" value="0" checked="checked" />No<br />
                                <div id="ch01_06_01_04" class="purple_color con_padding hide">
                                    Please list and describe them:
                                    <input id="ch01_06_01_04" name="ch01_06_01_04" type="text" class="inputTxt-max" /></div>
                            </div>
                        </div>
                    </div>
                    <br />
                    <div class="green_color">
                        Do you feel a nearly uncontrollable level of background stress or anxiety most days
                        and most of each day?
                        <input name="YesNo_06_02" type="radio" value="1" />Yes<input name="YesNo_06_02" type="radio"
                            value="0" checked="checked" />No<br />
                        <div id="ch01_06_02" class="blue_color con_padding hide">
                            <div>
                                Has this experience had a negative effect(s) on any of the following: Employment,
                                education, or relationship(s)?
                                <input name="YesNo_06_02_01" type="radio" value="1" />Yes<input name="YesNo_06_02_01"
                                    type="radio" value="0" checked="checked" />No<br />
                                <div id="ch01_06_02_01" class="purple_color con_padding hide">
                                    Please list and describe them:<input id="ch01_06_02_01" name="ch01_06_02_01" type="text"
                                        class="inputTxt-max" /></div>
                            </div>
                        </div>
                    </div>
                    <br />
                    <div class="green_color">
                        Have you ever had what you would consider an extremely traumatizing experience (or
                        experiences)?
                        <input name="YesNo_06_03" type="radio" value="1" />Yes<input name="YesNo_06_03" type="radio"
                            value="0" checked="checked" />No<br />
                        <div id="ch01_06_03" class="blue_color con_padding hide">
                            <div>
                                Please list and describe them:
                                <input id="ch01_06_03_01" name="ch01_06_03_01" type="text" class="inputTxt-max" /></div>
                            <div>
                                Do you ever re-experience any component of these remembered events (in dreams or
                                otherwise)?
                                <input name="YesNo_06_03_02" type="radio" value="1" />Yes<input name="YesNo_06_03_02"
                                    type="radio" value="0" checked="checked" />No<br />
                                <div id="ch01_06_03_02" class="purple_color con_padding hide">
                                    Please list and describe them including how intense you feel they are:
                                    <input id="ch01_06_03_02" name="ch01_06_03_02" type="text" class="inputTxt-max" /></div>
                            </div>
                            <div>
                                Have you avoided anyone or anything you fear may lead to or intensify a re-experience
                                of these traumatic events?
                                <br />
                                <input name="YesNo_06_03_03" type="radio" value="1" />Yes<input name="YesNo_06_03_03"
                                    type="radio" value="0" checked="checked" />No<br />
                                <div id="ch01_06_03_03" class="purple_color con_padding hide">
                                    Please list and describe your rationale for avoiding:
                                    <input id="ch01_06_03_03" name="ch01_06_03_03" type="text" class="inputTxt-max" /></div>
                            </div>
                            <div>
                                Do you have any physical effects (whether or not they've been medically confirmed/documented)
                                as a result of the traumatic event?
                                <input name="YesNo_06_03_04" type="radio" value="1" />Yes<input name="YesNo_06_03_04"
                                    type="radio" value="0" checked="checked" />No<br />
                                <div id="ch01_06_03_04" class="purple_color con_padding hide">
                                    Please list and describe them:
                                    <input id="ch01_06_03_04" name="ch01_06_03_04" type="text" class="inputTxt-max" /></div>
                            </div>
                            <div>
                                Do you feel you have a heightened level of anticipation or startle reaction associated
                                with needing to avoid any chance of having a repeat of the traumatic event(s)?
                                <input name="YesNo_06_03_05" type="radio" value="1" />Yes<input name="YesNo_06_03_05"
                                    type="radio" value="0" checked="checked" />No<br />
                                <div id="ch01_06_03_05" class="purple_color con_padding hide">
                                    Please describe how this feels and what you experience:
                                    <input id="ch01_06_03_05" name="ch01_06_03_05" type="text" class="inputTxt-max" /></div>
                            </div>
                        </div>
                    </div>
                    <br />
                    <div class="green_color">
                        Do you experience intrusive, obsessive thoughts (realistic in nature or not) that
                        you can't seem to stop thinking about in spite of repeated attempts to make them
                        go away?
                        <input name="YesNo_06_04" type="radio" value="1" />Yes<input name="YesNo_06_04" type="radio"
                            value="0" checked="checked" />No<br />
                        <div id="ch01_06_04" class="blue_color con_padding hide">
                            <div>
                                Please describe them and give an approximation of how much of each day is occupied
                                by thinking about them:
                                <input id="ch01_06_04_01" name="ch01_06_04_01" type="text" class="inputTxt-max" /></div>
                            <br />
                            <div>
                                What have you done or thought about doing in an attempt to stop having these obsessive
                                thoughts?
                                <input id="ch01_06_04_02" name="ch01_06_04_02" type="text" class="inputTxt-max" /></div>
                            <br />
                            <div>
                                Have these feelings been nearly exclusively the result of or associated with some
                                type of substance use or abuse?
                                <br />
                                <input name="YesNo_06_04_03" type="radio" value="1" />Yes<input name="YesNo_06_04_03"
                                    type="radio" value="0" checked="checked" />No<br />
                                <div id="ch01_06_04_03" class="purple_color con_padding hide">
                                    [If not already completed, offer to take the clinician to the substance abuse cluster
                                    questions] *****</div>
                            </div>
                        </div>
                    </div>
                    <br />
                    <div class="green_color">
                        Do you perform repeated actions of any type in a compulsive manner (i.e. the action
                        must be repeated in order to give you some reassurance or peace that either something
                        positive will happen or something negative will not happen)?
                        <input name="YesNo_06_05" type="radio" value="1" />Yes<input name="YesNo_06_05" type="radio"
                            value="0" checked="checked" />No<br />
                        <div id="ch01_06_05" class="blue_color con_padding hide">
                            <div>
                                Do you consider these actions needed and rational?
                                <input name="YesNo_06_05_01" type="radio" value="1" checked="checked" />Yes<input
                                    name="YesNo_06_05_01" type="radio" value="0" />No<br />
                            </div>
                            <div>
                                Please describe them, how often they occur and how much of your day is occupied
                                by them:
                                <input id="ch01_06_05_01" name="ch01_06_05_01" type="text" class="inputTxt-max" />
                            </div>
                            <div>
                                Do others generally consider these actions needed and rational?
                                <input name="YesNo_06_05_02" type="radio" value="1" checked="checked" />Yes<input
                                    name="YesNo_06_05_02" type="radio" value="0" />No<br />
                                <div id="ch01_06_05_02" class="purple_color con_padding hide">
                                    If not, what kind of feedback do you generally get when these actions are either
                                    described by you to others or witnessed by others?
                                    <input id="ch01_06_05_02" name="ch01_06_05_02" type="text" class="inputTxt-max" /></div>
                            </div>
                            <div>
                                Have these actions had (as considered by you or anyone else) a negative effect on
                                you or your life? Y/N<input name="YesNo_06_05_03" type="radio" value="1" checked="checked" />Yes<input
                                    name="YesNo_06_05_03" type="radio" value="0" />No<br />
                                <div id="ch01_06_05_03" class="purple_color con_padding hide">
                                    Please list and describe:
                                    <input id="ch01_06_05_03" name="ch01_06_05_03" type="text" class="inputTxt-max" /></div>
                            </div>
                            <div>
                                Have these feelings been nearly exclusively the result of or associated with some
                                type of substance use or abuse?
                                <br />
                                <input name="YesNo_06_05_04" type="radio" value="1" checked="checked" />Yes<input
                                    name="YesNo_06_05_04" type="radio" value="0" />No<br />
                                <div id="ch01_06_05_04" class="purple_color con_padding hide">
                                    [If not already completed, offer to take the clinician to the substance abuse cluster
                                    questions] ****</div>
                            </div>
                        </div>
                    </div>
                    <br />
                    <div class="green_color">
                        Are there social or performance situations which (when experienced) lead to a significant
                        level of anxiety/stress (with or without physical symptoms)?
                        <input name="YesNo_06_06" type="radio" value="1" />Yes<input name="YesNo_06_06" type="radio"
                            value="0" checked="checked" />No<br />
                        <div id="ch01_06_06" class="blue_color con_padding hide">
                            <div>
                                Are these limited to performances of any type (e.g. playing an instrument solo,
                                singing on a stage, giving a speech, giving a sermon, giving a job presentation)?
                                <input name="YesNo_06_06_01" type="radio" value="1" />Yes<input name="YesNo_06_06_01"
                                    type="radio" value="0" checked="checked" />No<br />
                                <div id="ch01_06_06_01" class="purple_color con_padding hide">
                                    Please list and describe:
                                    <input id="ch01_06_06_01" name="ch01_06_06_01" type="text" class="inputTxt-max" /></div>
                            </div>
                            <div>
                                Does this occur in social situations?
                                <input name="YesNo_06_06_02" type="radio" value="1" />Yes<input name="YesNo_06_06_02"
                                    type="radio" value="0" checked="checked" />No<br />
                                <div id="ch01_06_06_02" class="purple_color con_padding hide">
                                    <div>
                                        Is it limited to situations which are new to you?
                                        <input name="YesNo_06_06_02_01" type="radio" value="1" />Yes<input name="YesNo_06_06_02_01"
                                            type="radio" value="0" checked="checked" />No<br />
                                        <div id="ch01_06_06_02_01" class="yellow_color con_padding hide">
                                            Please list and describe:
                                            <input id="ch01_06_06_02_01" name="ch01_06_06_02_01" type="text" class="inputTxt-max" /></div>
                                    </div>
                                    <div>
                                        Does it occur in nearly all social experiences?
                                        <input name="YesNo_06_06_02_02" type="radio" value="1" />Yes<input name="YesNo_06_06_02_02"
                                            type="radio" value="0" checked="checked" />No<br />
                                        <div id="ch01_06_06_02_02" class="yellow_color con_padding hide">
                                            Please list and describe:
                                            <input id="ch01_06_06_02_02" name="ch01_06_06_02_02" type="text" class="inputTxt-max" /></div>
                                    </div>
                                    <div>
                                        Has it led to your avoidance of subsequent social opportunities or isolation from
                                        others?
                                        <input name="YesNo_06_06_02_03" type="radio" value="1" />Yes<input name="YesNo_06_06_02_03"
                                            type="radio" value="0" checked="checked" />No<br />
                                        <div id="ch01_06_06_02_03" class="yellow_color con_padding hide">
                                            Please list and describe:
                                            <input id="ch01_06_06_02_03" name="ch01_06_06_02_03" type="text" class="inputTxt-max" /></div>
                                    </div>
                                </div>
                            </div>
                            <div>
                                What other negative effects (if any) have these feelings/experiences had on you
                                or your life?
                                <input id="ch01_06_06_03" name="ch01_06_06_03" type="text" class="inputTxt-max" /></div>
                            <div>
                                Have these feelings been nearly exclusively the result of or associated with some
                                type of substance use or abuse?
                                <input name="YesNo_06_06_04" type="radio" value="1" />Yes<input name="YesNo_06_06_04"
                                    type="radio" value="0" checked="checked" />No<br />
                                <div id="ch01_06_06_04" class="purple_color con_padding hide">
                                    [If not already completed, offer to take the clinician to the substance abuse cluster
                                    questions] *****</div>
                            </div>
                        </div>
                    </div>
                    <br />
                    <div class="green_color">
                        Are there items (animate or inanimate) or experiences which, when experienced lead
                        to intense anxiety for you and are always (or nearly always) avoided by you when
                        possible?
                        <input name="YesNo_06_07" type="radio" value="1" />Yes<input name="YesNo_06_07" type="radio"
                            value="0" checked="checked" />No<br />
                        <div id="ch01_06_07" class="blue_color con_padding hide">
                            1. Please list them and describe your reactions/feelings towards them:
                            <input name="ch01_06_07" type="text" class="inputTxt-max" /></div>
                    </div>
                </div>
                <br />
            </div>
            <span class="title_bold">
                <img src="../../Content/images/tree/tree_less.gif" id="img02" width="9" height="9" />&nbsp;&nbsp;II.
                HISTORY OF PREVIOUS MENTAL HEALTH TREATMENT</span><a name="menu2" id="menu2"></a><br />
            <div id="ch02" class="con_padding">
                <span class="red_color">Have you ever experienced mental health problems? Any previous
                    mental health services?
                    <input name="YesNo2_01" type="radio" value="1" />Yes<input name="YesNo2_01" type="radio"
                        value="0" checked="checked" />No</span><br />
                <div id="ch02_01" class="green_color con_padding hide">
                    <div>
                        Have you ever attempted suicide?
                        <input name="YesNo2_01_01" type="radio" value="1" />Yes<input name="YesNo2_01_01"
                            type="radio" value="0" checked="checked" />No<br />
                        <div id="ch02_01_01" class="blue_color con_padding hide">
                            <div>
                                What did the attempt(s) involve?
                                <input name="ch02_01_01_01" type="text" class="inputTxt-max" /></div>
                            <div>
                                Were others aware of your attempt(s)?
                                <input name="YesNo2_01_01_02" type="radio" value="1" />Yes<input name="YesNo2_01_01_02"
                                    type="radio" value="0" checked="checked" />No<br />
                                <div id="ch02_01_01_02" class="purple_color con_padding hide">
                                    What was their reaction?
                                    <input name="ch02_01_01_02" type="text" class="inputTxt-max" /></div>
                            </div>
                            <div>
                                Were you hospitalized as a result of the attempt(s)?
                                <input name="YesNo2_01_01_03" type="radio" value="1" />Yes<input name="YesNo2_01_01_03"
                                    type="radio" value="0" checked="checked" />No<br />
                                <div id="ch02_01_01_03" class="purple_color con_padding hide">
                                    <p>
                                        Where?<input name="ch02_01_01_03_01" type="text" class="inputTxt-max" /></p>
                                    <p>
                                        For how long?
                                        <input name="ch02_01_01_03_02" type="text" class="inputTxt-max" /></p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <br />
                    <div>
                        Have you ever been in treatment before?
                        <input name="YesNo2_01_02" type="radio" value="1" />Yes<input name="YesNo2_01_02"
                            type="radio" value="0" checked="checked" />No<br />
                        <div id="ch02_01_02" class="blue_color con_padding hide">
                            <div>
                                <input name="ch02_01_02_01" type="checkbox" value="1" />Inpatient (list)
                                <div id="ch02_01_02_01" class="purple_color con_padding hide">
                                    <div>
                                        When?
                                        <input name="ch02_01_02_01_01" type="text" class="inputTxt-max" /><br />
                                        <br />
                                        <div class="con_padding">
                                            <p>
                                                Where?
                                                <input name="ch02_01_02_01_01_01" type="text" class="inputTxt-max" />
                                            </p>
                                            <p>
                                                For how long?
                                                <input name="ch02_01_02_01_01_02" type="text" class="inputTxt-max" /></p>
                                        </div>
                                    </div>
                                    <div>
                                        When?
                                        <input name="ch02_01_02_01_02" type="text" class="inputTxt-max" /><br />
                                        <br />
                                        <div class="con_padding">
                                            <p>
                                                Where?
                                                <input name="ch02_01_02_01_02_01" type="text" class="inputTxt-max" />
                                            </p>
                                            <p>
                                                For how long?
                                                <input name="ch02_01_02_01_02_02" type="text" class="inputTxt-max" /></p>
                                        </div>
                                    </div>
                                    <div>
                                        When?
                                        <input name="ch02_01_02_01_03" type="text" class="inputTxt-max" /><br />
                                        <br />
                                        <div class="con_padding">
                                            <p>
                                                Where?
                                                <input name="ch02_01_02_01_03_01" type="text" class="inputTxt-max" />
                                            </p>
                                            <p>
                                                For how long?
                                                <input name="ch02_01_02_01_03_02" type="text" class="inputTxt-max" /></p>
                                        </div>
                                    </div>
                                    <div>
                                        When?
                                        <input name="ch02_01_02_01_04" type="text" class="inputTxt-max" /><br />
                                        <br />
                                        <div class="con_padding">
                                            <p>
                                                Where?
                                                <input name="ch02_01_02_01_04_01" type="text" class="inputTxt-max" />
                                            </p>
                                            <p>
                                                For how long?
                                                <input name="ch02_01_02_01_04_02" type="text" class="inputTxt-max" /></p>
                                        </div>
                                    </div>
                                    <div>
                                        When?
                                        <input name="ch02_01_02_01_05" type="text" class="inputTxt-max" /><br />
                                        <br />
                                        <div class="con_padding">
                                            <p>
                                                Where?
                                                <input name="ch02_01_02_01_05_01" type="text" class="inputTxt-max" />
                                            </p>
                                            <p>
                                                For how long?
                                                <input name="ch02_01_02_01_05_02" type="text" class="inputTxt-max" /></p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div>
                                <input name="ch02_01_02_02" type="checkbox" value="1" />Outpatient (list)
                                <div id="ch02_01_02_02" class="purple_color con_padding hide">
                                    <div>
                                        When?
                                        <input name="ch02_01_02_02_01" type="text" class="inputTxt-max" /><br />
                                        <br />
                                        <div class="con_padding">
                                            <p>
                                                Where?
                                                <input name="ch02_01_02_02_01_01" type="text" class="inputTxt-max" />
                                            </p>
                                            <p>
                                                For how long?
                                                <input name="ch02_01_02_02_01_02" type="text" class="inputTxt-max" /></p>
                                        </div>
                                    </div>
                                    <div>
                                        When?
                                        <input name="ch02_01_02_02_02" type="text" class="inputTxt-max" /><br />
                                        <br />
                                        <div class="con_padding">
                                            <p>
                                                Where?
                                                <input name="ch02_01_02_02_02_01" type="text" class="inputTxt-max" />
                                            </p>
                                            <p>
                                                For how long?
                                                <input name="ch02_01_02_02_02_02" type="text" class="inputTxt-max" /></p>
                                        </div>
                                    </div>
                                    <div>
                                        When?
                                        <input name="ch02_01_02_02_03" type="text" class="inputTxt-max" /><br />
                                        <br />
                                        <div class="con_padding">
                                            <p>
                                                Where?
                                                <input name="ch02_01_02_02_03_01" type="text" class="inputTxt-max" />
                                            </p>
                                            <p>
                                                For how long?
                                                <input name="ch02_01_02_02_03_02" type="text" class="inputTxt-max" /></p>
                                        </div>
                                    </div>
                                    <div>
                                        When?
                                        <input name="ch02_01_02_02_04" type="text" class="inputTxt-max" /><br />
                                        <br />
                                        <div class="con_padding">
                                            <p>
                                                Where?
                                                <input name="ch02_01_02_02_04_01" type="text" class="inputTxt-max" />
                                            </p>
                                            <p>
                                                For how long?
                                                <input name="ch02_01_02_02_04_02" type="text" class="inputTxt-max" /></p>
                                        </div>
                                    </div>
                                    <div>
                                        When?
                                        <input name="ch02_01_02_02_05" type="text" class="inputTxt-max" /><br />
                                        <br />
                                        <div class="con_padding">
                                            <p>
                                                Where?
                                                <input name="ch02_01_02_02_05_01" type="text" class="inputTxt-max" />
                                            </p>
                                            <p>
                                                For how long?
                                                <input name="ch02_01_02_02_05_02" type="text" class="inputTxt-max" /></p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <br />
                    <div>
                        Did you take any medications for your difficulties during any of these treatments
                        (list)?
                        <input name="YesNo2_01_03" type="radio" value="1" />Yes<input name="YesNo2_01_03"
                            type="radio" value="0" checked="checked" />No<br />
                        <div id="ch02_01_03" class="blue_color con_padding hide">
                            <div>
                                1.
                                <input name="ch02_01_03_01" type="text" class="inputTxt" />
                                <div id="ch02_01_03_01" class="purple_color con_padding hide">
                                    <p>
                                        What was your dose?
                                        <input name="ch02_01_03_01_01" type="text" class="inputTxt-max" /></p>
                                    <p>
                                        How often taken each day?
                                        <input name="ch02_01_03_01_02" type="text" class="inputTxt-max" /></p>
                                    <p>
                                        How long were you on it uninterrupted?
                                        <input name="ch02_01_03_01_03" type="text" class="inputTxt-max" /></p>
                                    <p>
                                        Was it at all effective?
                                        <select name="ch02_01_03_01_04" class="select_max">
                                            <option value="not effective">not effective</option>
                                            <option value="somewhat effective">somewhat effective</option>
                                            <option value="moderately effective">moderately effective</option>
                                            <option value="very effective">very effective</option>
                                        </select>
                                    </p>
                                </div>
                            </div>
                            <br />
                            <div>
                                2.
                                <input name="ch02_01_03_02" type="text" class="inputTxt" />
                                <div id="ch02_01_03_02" class="purple_color con_padding hide">
                                    <p>
                                        What was your dose?
                                        <input name="ch02_01_03_02_01" type="text" class="inputTxt-max" /></p>
                                    <p>
                                        How often taken each day?
                                        <input name="ch02_01_03_02_02" type="text" class="inputTxt-max" /></p>
                                    <p>
                                        How long were you on it uninterrupted?
                                        <input name="ch02_01_03_02_03" type="text" class="inputTxt-max" /></p>
                                    <p>
                                        Was it at all effective?
                                        <select name="ch02_01_03_02_04" class="select_max">
                                            <option value="not effective">not effective</option>
                                            <option value="somewhat effective">somewhat effective</option>
                                            <option value="moderately effective">moderately effective</option>
                                            <option value="very effective">very effective</option>
                                        </select>
                                    </p>
                                </div>
                            </div>
                            <br />
                            <div>
                                3.
                                <input name="ch02_01_03_03" type="text" class="inputTxt" />
                                <div id="ch02_01_03_03" class="purple_color con_padding hide">
                                    <p>
                                        What was your dose?
                                        <input name="ch02_01_03_03_01" type="text" class="inputTxt-max" /></p>
                                    <p>
                                        How often taken each day?
                                        <input name="ch02_01_03_03_02" type="text" class="inputTxt-max" /></p>
                                    <p>
                                        How long were you on it uninterrupted?
                                        <input name="ch02_01_03_03_03" type="text" class="inputTxt-max" /></p>
                                    <p>
                                        Was it at all effective?
                                        <select name="ch02_01_03_03_04" class="select_max">
                                            <option value="not effective">not effective</option>
                                            <option value="somewhat effective">somewhat effective</option>
                                            <option value="moderately effective">moderately effective</option>
                                            <option value="very effective">very effective</option>
                                        </select>
                                    </p>
                                </div>
                            </div>
                            <br />
                            <div>
                                4.
                                <input name="ch02_01_03_04" type="text" class="inputTxt" />
                                <div id="ch02_01_03_04" class="purple_color con_padding hide">
                                    <p>
                                        What was your dose?
                                        <input name="ch02_01_03_04_01" type="text" class="inputTxt-max" /></p>
                                    <p>
                                        How often taken each day?
                                        <input name="ch02_01_03_04_02" type="text" class="inputTxt-max" /></p>
                                    <p>
                                        How long were you on it uninterrupted?
                                        <input name="ch02_01_03_04_03" type="text" class="inputTxt-max" /></p>
                                    <p>
                                        Was it at all effective?
                                        <select name="ch02_01_03_04_04" class="select_max">
                                            <option value="not effective">not effective</option>
                                            <option value="somewhat effective">somewhat effective</option>
                                            <option value="moderately effective">moderately effective</option>
                                            <option value="very effective">very effective</option>
                                        </select>
                                    </p>
                                </div>
                            </div>
                            <br />
                            <div>
                                5.
                                <input name="ch02_01_03_05" type="text" class="inputTxt" />
                                <div id="ch02_01_03_05" class="purple_color con_padding hide">
                                    <p>
                                        What was your dose?
                                        <input name="ch02_01_03_05_01" type="text" class="inputTxt-max" /></p>
                                    <p>
                                        How often taken each day?
                                        <input name="ch02_01_03_05_02" type="text" class="inputTxt-max" /></p>
                                    <p>
                                        How long were you on it uninterrupted?
                                        <input name="ch02_01_03_05_03" type="text" class="inputTxt-max" /></p>
                                    <p>
                                        Was it at all effective?
                                        <select name="ch02_01_03_05_04" class="select_max">
                                            <option value="not effective">not effective</option>
                                            <option value="somewhat effective">somewhat effective</option>
                                            <option value="moderately effective">moderately effective</option>
                                            <option value="very effective">very effective</option>
                                        </select>
                                    </p>
                                </div>
                            </div>
                            <br />
                            <div>
                                6.
                                <input name="ch02_01_03_06" type="text" class="inputTxt" />
                                <div id="ch02_01_03_06" class="purple_color con_padding hide">
                                    <p>
                                        What was your dose?
                                        <input name="ch02_01_03_06_01" type="text" class="inputTxt-max" /></p>
                                    <p>
                                        How often taken each day?
                                        <input name="ch02_01_03_06_02" type="text" class="inputTxt-max" /></p>
                                    <p>
                                        How long were you on it uninterrupted?
                                        <input name="ch02_01_03_06_03" type="text" class="inputTxt-max" /></p>
                                    <p>
                                        Was it at all effective?
                                        <select name="ch02_01_03_06_04" class="select_max">
                                            <option value="not effective">not effective</option>
                                            <option value="somewhat effective">somewhat effective</option>
                                            <option value="moderately effective">moderately effective</option>
                                            <option value="very effective">very effective</option>
                                        </select>
                                    </p>
                                </div>
                            </div>
                            <br />
                            <div>
                                7.
                                <input name="ch02_01_03_07" type="text" class="inputTxt" />
                                <div id="ch02_01_03_07" class="purple_color con_padding hide">
                                    <p>
                                        What was your dose?
                                        <input name="ch02_01_03_07_01" type="text" class="inputTxt-max" /></p>
                                    <p>
                                        How often taken each day?
                                        <input name="ch02_01_03_07_02" type="text" class="inputTxt-max" /></p>
                                    <p>
                                        How long were you on it uninterrupted?
                                        <input name="ch02_01_03_07_03" type="text" class="inputTxt-max" /></p>
                                    <p>
                                        Was it at all effective?
                                        <select name="ch02_01_03_07_04" class="select_max">
                                            <option value="not effective">not effective</option>
                                            <option value="somewhat effective">somewhat effective</option>
                                            <option value="moderately effective">moderately effective</option>
                                            <option value="very effective">very effective</option>
                                        </select>
                                    </p>
                                </div>
                            </div>
                            <br />
                            <div>
                                8.
                                <input name="ch02_01_03_08" type="text" class="inputTxt" />
                                <div id="ch02_01_03_08" class="purple_color con_padding hide">
                                    <p>
                                        What was your dose?
                                        <input name="ch02_01_03_08_01" type="text" class="inputTxt-max" /></p>
                                    <p>
                                        How often taken each day?
                                        <input name="ch02_01_03_08_02" type="text" class="inputTxt-max" /></p>
                                    <p>
                                        How long were you on it uninterrupted?
                                        <input name="ch02_01_03_08_03" type="text" class="inputTxt-max" /></p>
                                    <p>
                                        Was it at all effective?
                                        <select name="ch02_01_03_08_04" class="select_max">
                                            <option value="not effective">not effective</option>
                                            <option value="somewhat effective">somewhat effective</option>
                                            <option value="moderately effective">moderately effective</option>
                                            <option value="very effective">very effective</option>
                                        </select>
                                    </p>
                                </div>
                            </div>
                            <br />
                            <div>
                                9.
                                <input name="ch02_01_03_09" type="text" class="inputTxt" />
                                <div id="ch02_01_03_09" class="purple_color con_padding hide">
                                    <p>
                                        What was your dose?
                                        <input name="ch02_01_03_09_01" type="text" class="inputTxt-max" /></p>
                                    <p>
                                        How often taken each day?
                                        <input name="ch02_01_03_09_02" type="text" class="inputTxt-max" /></p>
                                    <p>
                                        How long were you on it uninterrupted?
                                        <input name="ch02_01_03_09_03" type="text" class="inputTxt-max" /></p>
                                    <p>
                                        Was it at all effective?
                                        <select name="ch02_01_03_09_04" class="select_max">
                                            <option value="not effective">not effective</option>
                                            <option value="somewhat effective">somewhat effective</option>
                                            <option value="moderately effective">moderately effective</option>
                                            <option value="very effective">very effective</option>
                                        </select>
                                    </p>
                                </div>
                            </div>
                            <br />
                            <div>
                                10.
                                <input name="ch02_01_03_10" type="text" class="inputTxt" />
                                <div id="ch02_01_03_10" class="purple_color con_padding hide">
                                    <p>
                                        What was your dose?
                                        <input name="ch02_01_03_10_01" type="text" class="inputTxt-max" /></p>
                                    <p>
                                        How often taken each day?
                                        <input name="ch02_01_03_10_02" type="text" class="inputTxt-max" /></p>
                                    <p>
                                        How long were you on it uninterrupted?
                                        <input name="ch02_01_03_10_03" type="text" class="inputTxt-max" /></p>
                                    <p>
                                        Was it at all effective?
                                        <select name="ch02_01_03_10_04" class="select_max">
                                            <option value="not effective">not effective</option>
                                            <option value="somewhat effective">somewhat effective</option>
                                            <option value="moderately effective">moderately effective</option>
                                            <option value="very effective">very effective</option>
                                        </select>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <br />
                    <div>
                        Is anyone in your family supportive of you seeking treatment?
                        <input name="YesNo2_01_04" type="radio" value="1" />Yes<input name="YesNo2_01_04"
                            type="radio" value="0" checked="checked" />No<br />
                        <div id="ch02_01_04" class="blue_color con_padding hide">
                            <div>
                                <input name="ch02_01_04_01" type="checkbox" value="1" />Parents</div>
                            <div>
                                <input name="ch02_01_04_06" type="checkbox" value="1" />Spouse</div>
                            <div>
                                <input name="ch02_01_04_02" type="checkbox" value="1" />Siblings</div>
                            <div>
                                <input name="ch02_01_04_03" type="checkbox" value="1" />Grandparents</div>
                            <div>
                                <input name="ch02_01_04_04" type="checkbox" value="1" />Children</div>
                            <div>
                                <input name="ch02_01_04_05" type="checkbox" value="1" />Other(s) (list) <span id="ch02_01_04_05"
                                    class="hide">
                                    <input name="ch02_01_04_05_01" type="text" class="inputTxt-max" /></span></div>
                        </div>
                    </div>
                    <br />
                    <div>
                        Who do you want involved in your treatment?
                        <input name="ch02_01_05" type="text" class="inputTxt-max" /></div>
                </div>
            </div>
            <br />
            <span class="title_bold">
                <img src="../../Content/images/tree/tree_less.gif" id="img03" width="9" height="9" />&nbsp;&nbsp;III.
                CHILDHOOD DEVELOPMENT</span><a name="menu3" id="menu3"></a><br />
            <div id="ch03" class="con_padding">
                <span class="red_color">Is this patient a child or adolescent under the age of 18?
                    <input name="YesNo3_01" type="radio" value="1" />Yes<input name="YesNo3_01" type="radio"
                        value="0" checked="checked" />No</span><br />
                <div id="ch03_01" class="green_color con_padding hide">
                    <div>
                        Were there any problems with delivery?
                        <input name="YesNo3_01_01" type="radio" value="1" />Yes<input name="YesNo3_01_01"
                            type="radio" value="0" checked="checked" />No<br />
                        <div id="ch03_01_01" class="blue_color con_padding hide">
                            <div>
                                <input name="ch03_01_01_01" type="checkbox" value="1" />Difficult delivery</div>
                            <div>
                                <input name="ch03_01_01_02" type="checkbox" value="1" />Drug exposure during pregnancy</div>
                            <div>
                                <input name="ch03_01_01_03" type="checkbox" value="1" />Eclampsia/pre-eclampsia</div>
                            <div>
                                <input name="ch03_01_01_04" type="checkbox" value="1" />Emergency C-section</div>
                            <div>
                                <input name="ch03_01_01_05" type="checkbox" value="1" />Premature birth</div>
                            <div>
                                <input name="ch03_01_01_06" type="checkbox" value="1" />Low birth weight
                                <div id="ch03_01_01_06_01" class="purple_color con_padding hide">
                                    Weight?
                                    <input name="ch03_01_01_06_01" type="text" class="inputTxt-max" /></div>
                            </div>
                            <div>
                                <input name="ch03_01_01_07" type="checkbox" value="1" />Infection (baby and/or mother)</div>
                            <div>
                                <input name="ch03_01_01_08" type="checkbox" value="1" />Did you take medications
                                during pregnancy (list)
                                <!--<input name="YesNo3_01_01_08" type="radio" value="1" />Yes<input name="YesNo3_01_01_08" type="radio" value="0" checked="checked" />No-->
                                <div id="ch03_01_01_08" class="purple_color con_padding hide">
                                    <div>
                                        1.
                                        <input name="ch03_01_01_08_01" type="text" class="inputTxt" /><br />
                                        <br />
                                        <div id="ch03_01_01_08_01" class="yellow_color con_padding hide">
                                            Dose
                                            <input name="ch03_01_01_08_01_01" type="text" class="inputTxt" /></div>
                                        <br />
                                    </div>
                                    <div>
                                        2.
                                        <input name="ch03_01_01_08_02" type="text" class="inputTxt" /><br />
                                        <br />
                                        <div id="ch03_01_01_08_02" class="yellow_color con_padding hide">
                                            Dose
                                            <input name="ch03_01_01_08_02_01" type="text" class="inputTxt" /></div>
                                        <br />
                                    </div>
                                    <div>
                                        3.
                                        <input name="ch03_01_01_08_03" type="text" class="inputTxt" /><br />
                                        <br />
                                        <div id="ch03_01_01_08_03" class="yellow_color con_padding hide">
                                            Dose
                                            <input name="ch03_01_01_08_03_01" type="text" class="inputTxt" /></div>
                                        <br />
                                    </div>
                                    <div>
                                        4.
                                        <input name="ch03_01_01_08_04" type="text" class="inputTxt" /><br />
                                        <br />
                                        <div id="ch03_01_01_08_04" class="yellow_color con_padding hide">
                                            Dose
                                            <input name="ch03_01_01_08_04_01" type="text" class="inputTxt" /></div>
                                        <br />
                                    </div>
                                    <div>
                                        5.
                                        <input name="ch03_01_01_08_05" type="text" class="inputTxt" /><br />
                                        <br />
                                        <div id="ch03_01_01_08_05" class="yellow_color con_padding hide">
                                            Dose
                                            <input name="ch03_01_01_08_05_01" type="text" class="inputTxt" /></div>
                                        <br />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <br />
                    <div>
                        Were there any problems in infancy?
                        <input name="YesNo3_01_02" type="radio" value="1" />Yes<input name="YesNo3_01_02"
                            type="radio" value="0" checked="checked" />No
                        <div id="ch03_01_02" class="blue_color con_padding hide">
                            <div>
                                <input name="ch03_01_02_01" type="checkbox" value="1" />Frequent infections</div>
                            <div>
                                <input name="ch03_01_02_02" type="checkbox" value="1" />Head injury</div>
                            <div>
                                <input name="ch03_01_02_03" type="checkbox" value="1" />Failure to thrive</div>
                        </div>
                    </div>
                    <br />
                    <div>
                        Were there any problems with development?
                        <input name="YesNo3_01_03" type="radio" value="1" />Yes<input name="YesNo3_01_03"
                            type="radio" value="0" checked="checked" />No
                        <div id="ch03_01_03" class="blue_color con_padding hide">
                            <div>
                                <input name="ch03_01_03_01" type="checkbox" value="1" />Poor language skills</div>
                            <div>
                                <input name="ch03_01_03_02" type="checkbox" value="1" />Hearing deficit</div>
                            <div>
                                <input name="ch03_01_03_03" type="checkbox" value="1" />Slow motor development</div>
                            <div>
                                <input name="ch03_01_03_04" type="checkbox" value="1" />Coordination difficulties</div>
                            <div>
                                <input name="ch03_01_03_05" type="checkbox" value="1" />Eye problems</div>
                            <div>
                                <input name="ch03_01_03_06" type="checkbox" value="1" />Head injury</div>
                            <div>
                                <input name="ch03_01_03_07" type="checkbox" value="1" />Broken bones</div>
                            <div>
                                <input name="ch03_01_03_08" type="checkbox" value="1" />Speech problems</div>
                        </div>
                    </div>
                    <br />
                    <div>
                        List the age at which the following occurred:
                        <div id="ch03_01_04" class="blue_color con_padding">
                            <p>
                                Sitting up
                                <input name="ch03_01_04_01" type="text" class="inputTxt" /></p>
                            <p>
                                Crawling
                                <input name="ch03_01_04_02" type="text" class="inputTxt" /></p>
                            <p>
                                Standing alone
                                <input name="ch03_01_04_03" type="text" class="inputTxt" /></p>
                            <p>
                                Walking alone
                                <input name="ch03_01_04_04" type="text" class="inputTxt" /></p>
                            <p>
                                Fed self
                                <input name="ch03_01_04_05" type="text" class="inputTxt" /></p>
                            <p>
                                Dress self
                                <input name="ch03_01_04_06" type="text" class="inputTxt" /></p>
                            <p>
                                First word
                                <input name="ch03_01_04_07" type="text" class="inputTxt" /></p>
                            <p>
                                First sentence
                                <input name="ch03_01_04_08" type="text" class="inputTxt" /></p>
                            <p>
                                Toilet trained
                                <input name="ch03_01_04_09" type="text" class="inputTxt" /></p>
                            <p>
                                Rode tricycle
                                <input name="ch03_01_04_10" type="text" class="inputTxt" /></p>
                            <p>
                                Rode bicycle
                                <input name="ch03_01_04_11" type="text" class="inputTxt" /></p>
                            <p>
                                Tied shoes
                                <input name="ch03_01_04_12" type="text" class="inputTxt" /></p>
                        </div>
                        <div>
                        </div>
                    </div>
                </div>
            </div>
            <br />
            <span class="title_bold">
                <img src="../../Content/images/tree/tree_less.gif" id="img04" width="9" height="9" />&nbsp;&nbsp;IV.
                HISTORY OF PREVIOUS MEDICAL Treatment</span><a name="menu4" id="menu4"></a><br />
            <div id="ch04" class="con_padding">
                <span class="red_color">Is there a past history of major medical problems (list)?
                    <input name="YesNo4_01" type="radio" value="1" />Yes<input name="YesNo4_01" type="radio"
                        value="0" checked="checked" />No</span>
                <div id="ch04_01" class="green_color con_padding hide">
                    <div>
                        1.
                        <input name="ch04_01_01" type="text" class="inputTxt" />
                        <div id="ch04_01_01" class="blue_color con_padding hide">
                            Age of onset
                            <input name="ch04_01_01_01" type="text" class="inputTxt" /></div>
                    </div>
                    <br />
                    <div>
                        2.<input name="ch04_01_02" type="text" class="inputTxt" />
                        <div id="ch04_01_02" class="blue_color con_padding hide">
                            Age of onset
                            <input name="ch04_01_02_01" type="text" class="inputTxt" /></div>
                    </div>
                    <br />
                    <div>
                        3.
                        <input name="ch04_01_03" type="text" class="inputTxt" />
                        <div id="ch04_01_03" class="blue_color con_padding hide">
                            Age of onset
                            <input name="ch04_01_03_01" type="text" class="inputTxt" /></div>
                    </div>
                    <br />
                    <div>
                        4.
                        <input name="ch04_01_04" type="text" class="inputTxt" />
                        <div id="ch04_01_04" class="blue_color con_padding hide">
                            Age of onset
                            <input name="ch04_01_04_01" type="text" class="inputTxt" /></div>
                    </div>
                    <br />
                    <div>
                        5.
                        <input name="ch04_01_05" type="text" class="inputTxt" />
                        <div id="ch04_01_05" class="blue_color con_padding hide">
                            Age of onset
                            <input name="ch04_01_05_01" type="text" class="inputTxt" /></div>
                    </div>
                </div>
                <br />
                <span class="red_color">Is there a past history of major surgeries (list)?
                    <input name="YesNo4_02" type="radio" value="1" />Yes<input name="YesNo4_02" type="radio"
                        value="0" checked="checked" />No</span>
                <div id="ch04_02" class="green_color con_padding hide">
                    <div>
                        1.
                        <input name="ch04_02_01" type="text" class="inputTxt" />
                        <div id="ch04_02_01" class="blue_color con_padding hide">
                            Age at the time
                            <input name="ch04_02_01_01" type="text" class="inputTxt" /></div>
                    </div>
                    <br />
                    <div>
                        2.
                        <input name="ch04_02_02" type="text" class="inputTxt" />
                        <div id="ch04_02_02" class="blue_color con_padding hide">
                            Age at the time
                            <input name="ch04_02_02_01" type="text" class="inputTxt" /></div>
                    </div>
                    <br />
                    <div>
                        3.
                        <input name="ch04_02_03" type="text" class="inputTxt" />
                        <div id="ch04_02_03" class="blue_color con_padding hide">
                            Age at the time
                            <input name="ch04_02_03_01" type="text" class="inputTxt" /></div>
                    </div>
                    <br />
                    <div>
                        4.
                        <input name="ch04_02_04" type="text" class="inputTxt" />
                        <div id="ch04_02_04" class="blue_color con_padding hide">
                            Age at the time
                            <input name="ch04_02_04_01" type="text" class="inputTxt" /></div>
                    </div>
                    <br />
                    <div>
                        5.
                        <input name="ch04_02_05" type="text" class="inputTxt" />
                        <div id="ch04_02_05" class="blue_color con_padding hide">
                            Age at the time
                            <input name="ch04_02_05_01" type="text" class="inputTxt" /></div>
                    </div>
                </div>
                <br />
                <span class="red_color">Are there any current medical problems (list)?
                    <input name="YesNo4_03" type="radio" value="1" />Yes<input name="YesNo4_03" type="radio"
                        value="0" checked="checked" />No</span>
                <div id="ch04_03" class="green_color con_padding hide">
                    <div>
                        1.
                        <input name="ch04_03_01" type="text" class="inputTxt" />
                        <div id="ch04_03_01" class="blue_color con_padding hide">
                            Under control?
                            <input name="YesNo4_03_01" type="radio" value="1" />Yes<input name="YesNo4_03_01"
                                type="radio" value="0" checked="checked" />No</div>
                    </div>
                    <br />
                    <div>
                        2.
                        <input name="ch04_03_02" type="text" class="inputTxt" />
                        <div id="ch04_03_02" class="blue_color con_padding hide">
                            Under control?
                            <input name="YesNo4_03_02" type="radio" value="1" />Yes<input name="YesNo4_03_02"
                                type="radio" value="0" checked="checked" />No</div>
                    </div>
                    <br />
                    <div>
                        3.
                        <input name="ch04_03_03" type="text" class="inputTxt" />
                        <div id="ch04_03_03" class="blue_color con_padding hide">
                            Under control?
                            <input name="YesNo4_03_03" type="radio" value="1" />Yes<input name="YesNo4_03_03"
                                type="radio" value="0" checked="checked" />No</div>
                    </div>
                    <br />
                    <div>
                        4.
                        <input name="ch04_03_04" type="text" class="inputTxt" />
                        <div id="ch04_03_04" class="blue_color con_padding hide">
                            Under control?
                            <input name="YesNo4_03_04" type="radio" value="1" />Yes<input name="YesNo4_03_04"
                                type="radio" value="0" checked="checked" />No</div>
                    </div>
                    <br />
                    <div>
                        5.
                        <input name="ch04_03_05" type="text" class="inputTxt" />
                        <div id="ch04_03_05" class="blue_color con_padding hide">
                            Under control?
                            <input name="YesNo4_03_05" type="radio" value="1" />Yes<input name="YesNo4_03_05"
                                type="radio" value="0" checked="checked" />No</div>
                    </div>
                </div>
                <br />
                <span class="red_color">Are you on any current medications (list)?
                    <input name="YesNo4_04" type="radio" value="1" />Yes<input name="YesNo4_04" type="radio"
                        value="0" checked="checked" />No </span>
                <div id="ch04_04" class="green_color con_padding hide">
                    <div>
                        1.
                        <input name="ch04_04_01" type="text" class="inputTxt" />
                        <div id="ch04_04_01" class="blue_color con_padding hide">
                            Dose
                            <input name="ch04_04_01_01" type="text" class="inputTxt" /></div>
                    </div>
                    <br />
                    <div>
                        2.
                        <input name="ch04_04_02" type="text" class="inputTxt" />
                        <div id="ch04_04_02" class="blue_color con_padding hide">
                            Dose
                            <input name="ch04_04_02_01" type="text" class="inputTxt" /></div>
                    </div>
                    <br />
                    <div>
                        3.
                        <input name="ch04_04_03" type="text" class="inputTxt" />
                        <div id="ch04_04_03" class="blue_color con_padding hide">
                            Dose
                            <input name="ch04_04_03_01" type="text" class="inputTxt" /></div>
                    </div>
                    <br />
                    <div>
                        4.
                        <input name="ch04_04_04" type="text" class="inputTxt" />
                        <div id="ch04_04_04" class="blue_color con_padding hide">
                            Dose
                            <input name="ch04_04_04_01" type="text" class="inputTxt" /></div>
                    </div>
                    <br />
                    <div>
                        5.
                        <input name="ch04_04_05" type="text" class="inputTxt" />
                        <div id="ch04_04_05" class="blue_color con_padding hide">
                            Dose
                            <input name="ch04_04_05_01" type="text" class="inputTxt" /></div>
                    </div>
                    <br />
                    <div>
                        6.
                        <input name="ch04_04_06" type="text" class="inputTxt" />
                        <div id="ch04_04_06" class="blue_color con_padding hide">
                            Dose
                            <input name="ch04_04_06_01" type="text" class="inputTxt" /></div>
                    </div>
                    <br />
                    <div>
                        7.
                        <input name="ch04_04_07" type="text" class="inputTxt" />
                        <div id="ch04_04_07" class="blue_color con_padding hide">
                            Dose
                            <input name="ch04_04_07_01" type="text" class="inputTxt" /></div>
                    </div>
                    <br />
                    <div>
                        8.
                        <input name="ch04_04_08" type="text" class="inputTxt" />
                        <div id="ch04_04_08" class="blue_color con_padding hide">
                            Dose
                            <input name="ch04_04_08_01" type="text" class="inputTxt" /></div>
                    </div>
                    <br />
                    <div>
                        9.
                        <input name="ch04_04_09" type="text" class="inputTxt" />
                        <div id="ch04_04_09" class="blue_color con_padding hide">
                            Dose
                            <input name="ch04_04_09_01" type="text" class="inputTxt" /></div>
                    </div>
                    <br />
                    <div>
                        10.
                        <input name="ch04_04_10" type="text" class="inputTxt" />
                        <div id="ch04_04_10" class="blue_color con_padding hide">
                            Dose
                            <input name="ch04_04_10_01" type="text" class="inputTxt" /></div>
                    </div>
                </div>
            </div>
            <br />
            <span class="title_bold">
                <img src="../../Content/images/tree/tree_less.gif" id="img05" width="9" height="9" />&nbsp;&nbsp;V.
                FAMILY HOUSEHOLD INFORMATION</span><a name="menu5" id="menu5"></a>
            <div id="ch05" class="con_padding">
                <span class="red_color">Are you a child or do you have a legal guardian?
                    <input name="YesNo5_01" type="radio" value="1" />Yes<input name="YesNo5_01" type="radio"
                        value="0" checked="checked" />No</span>
                <div id="ch05_01" class="green_color con_padding hide">
                    <div>
                        You currently live with:
                        <div>
                            <input name="ch05_01_01_01" type="checkbox" value="1" />Biological mother</div>
                        <div>
                            <input name="ch05_01_01_02" type="checkbox" value="1" />Biological father</div>
                        <div>
                            <input name="ch05_01_01_03" type="checkbox" value="1" />Both biological parents</div>
                        <div>
                            <input name="ch05_01_01_04" type="checkbox" value="1" />Step-mother</div>
                        <div>
                            <input name="ch05_01_01_05" type="checkbox" value="1" />Step-father</div>
                        <div>
                            <input name="ch05_01_01_06" type="checkbox" value="1" />Biological parent plus a
                            step-parent</div>
                        <div>
                            <input name="ch05_01_01_07" type="checkbox" value="1" />Adoptive parent(s)</div>
                        <div>
                            <input name="ch05_01_01_08" type="checkbox" value="1" />Grandparent(s)</div>
                        <div>
                            <input name="ch05_01_01_09" type="checkbox" value="1" />Other extended family member(s)</div>
                        <div>
                            <input name="ch05_01_01_10" type="checkbox" value="1" />Other (list)
                            <input name="ch05_01_01_10_01" type="text" class="inputTxt" /></div>
                    </div>
                    <br />
                    <div>
                        Who has legal custody of this juvenile?
                        <input name="ch05_01_02" type="text" class="inputTxt-max" /></div>
                    <br />
                    <div>
                        Have parental rights been terminated for either biological parent?
                        <input name="YesNo5_01_03" type="radio" value="1" />Yes<input name="YesNo5_01_03"
                            type="radio" value="0" checked="checked" />No
                        <div id="ch05_01_03" class="blue_color con_padding hide">
                            Who and why?
                            <input name="ch05_01_03_01" type="text" class="inputTxt-max" /></div>
                    </div>
                    <br />
                    <div>
                        Type of discipline used in household:
                        <div>
                            <input name="ch05_01_04_01" type="checkbox" value="1" />Time out</div>
                        <div>
                            <input name="ch05_01_04_02" type="checkbox" value="1" />Grounding</div>
                        <div>
                            <input name="ch05_01_04_03" type="checkbox" value="1" />Taking privileges</div>
                        <div>
                            <input name="ch05_01_04_04" type="checkbox" value="1" />Spanking</div>
                        <div>
                            <input name="ch05_01_04_05" type="checkbox" value="1" />Ignoring</div>
                        <div>
                            <input name="ch05_01_04_06" type="checkbox" value="1" />Positive reinforcement</div>
                        <div>
                            <input name="ch05_01_04_07" type="checkbox" value="1" />Other
                            <input name="ch05_01_04_07_01" type="text" class="inputTxt" /></div>
                    </div>
                    <br />
                    <div>
                        Has this child/adolescent ever been placed outside the home (list)?
                        <input name="YesNo5_01_05" type="radio" value="1" />Yes<input name="YesNo5_01_05"
                            type="radio" value="0" checked="checked" />No
                        <div id="ch05_01_05" class="blue_color con_padding hide">
                            <div>
                                When?
                                <input name="ch05_01_05_01" type="text" class="inputTxt" />
                                <div id="ch05_01_05_01" class="purple_color con_padding hide">
                                    <p>
                                        With whom?
                                        <input name="ch05_01_05_01_01" type="text" class="inputTxt-max" /></p>
                                    <p>
                                        For how long?
                                        <input name="ch05_01_05_01_02" type="text" class="inputTxt-max" /></p>
                                </div>
                            </div>
                            <br />
                            <div>
                                When?
                                <input name="ch05_01_05_02" type="text" class="inputTxt" />
                                <div id="ch05_01_05_02" class="purple_color con_padding hide">
                                    <p>
                                        With whom?
                                        <input name="ch05_01_05_02_01" type="text" class="inputTxt-max" /></p>
                                    <p>
                                        For how long?
                                        <input name="ch05_01_05_02_02" type="text" class="inputTxt-max" /></p>
                                </div>
                            </div>
                            <br />
                            <div>
                                When?
                                <input name="ch05_01_05_03" type="text" class="inputTxt" />
                                <div id="ch05_01_05_03" class="purple_color con_padding hide">
                                    <p>
                                        With whom?
                                        <input name="ch05_01_05_03_01" type="text" class="inputTxt-max" /></p>
                                    <p>
                                        For how long?
                                        <input name="ch05_01_05_03_02" type="text" class="inputTxt-max" /></p>
                                </div>
                            </div>
                            <br />
                            <div>
                                When?
                                <input name="ch05_01_05_04" type="text" class="inputTxt" />
                                <div id="ch05_01_05_04" class="purple_color con_padding hide">
                                    <p>
                                        With whom?
                                        <input name="ch05_01_05_04_01" type="text" class="inputTxt-max" /></p>
                                    <p>
                                        For how long?
                                        <input name="ch05_01_05_04_02" type="text" class="inputTxt-max" /></p>
                                </div>
                            </div>
                            <br />
                            <div>
                                When?
                                <input name="ch05_01_05_05" type="text" class="inputTxt" />
                                <div id="ch05_01_05_05" class="purple_color con_padding hide">
                                    <p>
                                        With whom?
                                        <input name="ch05_01_05_05_01" type="text" class="inputTxt-max" /></p>
                                    <p>
                                        For how long?
                                        <input name="ch05_01_05_05_02" type="text" class="inputTxt-max" /></p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <br />
                    <div>
                        Are the parents in this household employed?
                        <input name="YesNo5_01_06" type="radio" value="1" />Yes<input name="YesNo5_01_06"
                            type="radio" value="0" checked="checked" />No
                        <div id="ch05_01_06" class="blue_color con_padding hide">
                            Occupation(s)
                            <input name="ch05_01_06_01" type="text" class="inputTxt-max" /></div>
                    </div>
                </div>
                <br />
                <br />
                <span class="red_color">Biological parents are:&nbsp;&nbsp;&nbsp;
                    <select name="ch05_02">
                        <option value="Married and together">Married and together</option>
                        <option value="Married and separated">Married and separated</option>
                        <option value="Unmarried and together">Unmarried and together</option>
                        <option value="Never married and separated">Never married and separated</option>
                        <option value="Divorced and living apart">Divorced and living apart</option>
                        <option value="Deceased">One or both deceased</option>
                        <option value="Unknown">Unknown</option>
                    </select>
                </span>
                <br />
                <br />
                <span class="red_color">Do you have any siblings (list)?
                    <input name="YesNo5_03" type="radio" value="1" />Yes<input name="YesNo5_03" type="radio"
                        value="0" checked="checked" />No</span>
                <div id="ch05_03" class="green_color con_padding hide">
                    <div>
                        1.
                        <input name="ch05_03_01" type="text" class="inputTxt" />
                        <div id="ch05_03_01" class="blue_color con_padding hide">
                            <p>
                                Age
                                <input name="ch05_03_01_01" type="text" class="inputTxt" /></p>
                            <p>
                                How related?&nbsp;&nbsp;
                                <select name="ch05_03_01_02">
                                    <option value="Full">Full</option>
                                    <option value="Half">Half</option>
                                    <option value="Step">Step</option>
                                </select>
                            </p>
                            <p>
                                Living in same home as you?
                                <input name="YesNo5_03_01_03" type="radio" value="1" />Yes<input name="YesNo5_03_01_03"
                                    type="radio" value="0" checked="checked" />No</p>
                        </div>
                    </div>
                    <br />
                    <div>
                        2.
                        <input name="ch05_03_02" type="text" class="inputTxt" />
                        <div id="ch05_03_02" class="blue_color con_padding hide">
                            <p>
                                Age
                                <input name="ch05_03_02_01" type="text" class="inputTxt" /></p>
                            <p>
                                How related?&nbsp;&nbsp;
                                <select name="ch05_03_02_02">
                                    <option value="Full">Full</option>
                                    <option value="Half">Half</option>
                                    <option value="Step">Step</option>
                                </select>
                            </p>
                            <p>
                                Living in same home as you?
                                <input name="YesNo5_03_02_03" type="radio" value="1" />Yes<input name="YesNo5_03_02_03"
                                    type="radio" value="0" checked="checked" />No</p>
                        </div>
                    </div>
                    <br />
                    <div>
                        3.
                        <input name="ch05_03_03" type="text" class="inputTxt" />
                        <div id="ch05_03_03" class="blue_color con_padding hide">
                            <p>
                                Age
                                <input name="ch05_03_03_01" type="text" class="inputTxt" /></p>
                            <p>
                                How related?&nbsp;&nbsp;
                                <select name="ch05_03_03_02">
                                    <option value="Full">Full</option>
                                    <option value="Half">Half</option>
                                    <option value="Step">Step</option>
                                </select>
                            </p>
                            <p>
                                Living in same home as you?
                                <input name="YesNo5_03_03_03" type="radio" value="1" />Yes<input name="YesNo5_03_03_03"
                                    type="radio" value="0" checked="checked" />No</p>
                        </div>
                    </div>
                    <br />
                    <div>
                        4.
                        <input name="ch05_03_04" type="text" class="inputTxt" />
                        <div id="ch05_03_04" class="blue_color con_padding hide">
                            <p>
                                Age
                                <input name="ch05_03_04_01" type="text" class="inputTxt" /></p>
                            <p>
                                How related?&nbsp;&nbsp;
                                <select name="ch05_03_04_02">
                                    <option value="Full">Full</option>
                                    <option value="Half">Half</option>
                                    <option value="Step">Step</option>
                                </select>
                            </p>
                            <p>
                                Living in same home as you?
                                <input name="YesNo5_03_04_03" type="radio" value="1" />Yes<input name="YesNo5_03_04_03"
                                    type="radio" value="0" checked="checked" />No</p>
                        </div>
                    </div>
                    <br />
                    <div>
                        5.
                        <input name="ch05_03_05" type="text" class="inputTxt" />
                        <div id="ch05_03_05" class="blue_color con_padding hide">
                            <p>
                                Age
                                <input name="ch05_03_05_01" type="text" class="inputTxt" /></p>
                            <p>
                                How related?&nbsp;&nbsp;
                                <select name="ch05_03_05_02">
                                    <option value="Full">Full</option>
                                    <option value="Half">Half</option>
                                    <option value="Step">Step</option>
                                </select>
                            </p>
                            <p>
                                Living in same home as you?
                                <input name="YesNo5_03_05_03" type="radio" value="1" />Yes<input name="YesNo5_03_05_03"
                                    type="radio" value="0" checked="checked" />No</p>
                        </div>
                    </div>
                    <br />
                    <div>
                        6.
                        <input name="ch05_03_06" type="text" class="inputTxt" />
                        <div id="ch05_03_06" class="blue_color con_padding hide">
                            <p>
                                Age
                                <input name="ch05_03_06_01" type="text" class="inputTxt" /></p>
                            <p>
                                How related?&nbsp;&nbsp;
                                <select name="ch05_03_06_02">
                                    <option value="Full">Full</option>
                                    <option value="Half">Half</option>
                                    <option value="Step">Step</option>
                                </select>
                            </p>
                            <p>
                                Living in same home as you?
                                <input name="YesNo5_03_06_03" type="radio" value="1" />Yes<input name="YesNo5_03_06_03"
                                    type="radio" value="0" checked="checked" />No</p>
                        </div>
                    </div>
                    <br />
                    <div>
                        7.
                        <input name="ch05_03_07" type="text" class="inputTxt" />
                        <div id="ch05_03_07" class="blue_color con_padding hide">
                            <p>
                                Age
                                <input name="ch05_03_07_01" type="text" class="inputTxt" /></p>
                            <p>
                                How related?&nbsp;&nbsp;
                                <select name="ch05_03_07_02">
                                    <option value="Full">Full</option>
                                    <option value="Half">Half</option>
                                    <option value="Step">Step</option>
                                </select>
                            </p>
                            <p>
                                Living in same home as you?
                                <input name="YesNo5_03_07_03" type="radio" value="1" />Yes<input name="YesNo5_03_07_03"
                                    type="radio" value="0" checked="checked" />No</p>
                        </div>
                    </div>
                    <br />
                    <div>
                        8.
                        <input name="ch05_03_08" type="text" class="inputTxt" />
                        <div id="ch05_03_08" class="blue_color con_padding hide">
                            <p>
                                Age
                                <input name="ch05_03_08_01" type="text" class="inputTxt" /></p>
                            <p>
                                How related?&nbsp;&nbsp;
                                <select name="ch05_03_08_02">
                                    <option value="Full">Full</option>
                                    <option value="Half">Half</option>
                                    <option value="Step">Step</option>
                                </select>
                            </p>
                            <p>
                                Living in same home as you?
                                <input name="YesNo5_03_08_03" type="radio" value="1" />Yes<input name="YesNo5_03_08_03"
                                    type="radio" value="0" checked="checked" />No</p>
                        </div>
                    </div>
                    <br />
                    <div>
                        9.
                        <input name="ch05_03_09" type="text" class="inputTxt" />
                        <div id="ch05_03_09" class="blue_color con_padding hide">
                            <p>
                                Age
                                <input name="ch05_03_09_01" type="text" class="inputTxt" /></p>
                            <p>
                                How related?&nbsp;&nbsp;
                                <select name="ch05_03_09_02">
                                    <option value="Full">Full</option>
                                    <option value="Half">Half</option>
                                    <option value="Step">Step</option>
                                </select>
                            </p>
                            <p>
                                Living in same home as you?
                                <input name="YesNo5_03_09_03" type="radio" value="1" />Yes<input name="YesNo5_03_09_03"
                                    type="radio" value="0" checked="checked" />No</p>
                        </div>
                    </div>
                </div>
                <br />
                <span class="red_color">Have your symptoms/difficulties affected others in the family/household?
                    <input name="YesNo5_04" type="radio" value="1" />Yes<input name="YesNo5_04" type="radio"
                        value="0" checked="checked" />No</span>
                <div id="ch05_04" class="green_color con_padding hide">
                    In what way?
                    <input name="ch05_04_01" type="text" class="inputTxt-max" /></div>
                <br />
                <br />
                <span class="red_color">Do you have contact with your biological:</span>
                <div id="ch05_05" class="green_color con_padding">
                    <div>
                        <input name="ch05_05_01" type="checkbox" value="1" />Mother?
                        <div id="ch05_05_01" class="blue_color con_padding hide">
                            Relationship is:
                            <select name="ch05_05_01_01">
                                <option value="Good">Good</option>
                                <option value="Poor">Poor</option>
                                <option value="Stressful">Stressful</option>
                                <option value="Detached">Detached</option>
                            </select><br />
                        </div>
                    </div>
                    <div>
                        <input name="ch05_05_02" type="checkbox" value="1" />Father?
                        <div id="ch05_05_02" class="blue_color con_padding hide">
                            Relationship is:
                            <select name="ch05_05_02_01">
                                <option value="Good">Good</option>
                                <option value="Poor">Poor</option>
                                <option value="Stressful">Stressful</option>
                                <option value="Detached">Detached</option>
                            </select><br />
                        </div>
                    </div>
                    <div>
                        <input name="ch05_05_03" type="checkbox" value="1" />Siblings?
                        <div id="ch05_05_03" class="green_color con_padding hide">
                            <div>
                                1.
                                <input name="ch05_05_03_01" type="text" class="inputTxt" />
                                <div id="ch05_05_03_01" class="blue_color con_padding hide">
                                    Relationship is:
                                    <select name="ch05_05_03_01_01">
                                        <option value="Good">Good</option>
                                        <option value="Poor">Poor</option>
                                        <option value="Stressful">Stressful</option>
                                        <option value="Detached">Detached</option>
                                    </select>
                                </div>
                            </div>
                            <br />
                            <div>
                                2.
                                <input name="ch05_05_03_02" type="text" class="inputTxt" />
                                <div id="ch05_05_03_02" class="blue_color con_padding hide">
                                    Relationship is:
                                    <select name="ch05_05_03_02_01">
                                        <option value="Good">Good</option>
                                        <option value="Poor">Poor</option>
                                        <option value="Stressful">Stressful</option>
                                        <option value="Detached">Detached</option>
                                    </select>
                                </div>
                            </div>
                            <br />
                            <div>
                                3.
                                <input name="ch05_05_03_03" type="text" class="inputTxt" />
                                <div id="ch05_05_03_03" class="blue_color con_padding hide">
                                    Relationship is:
                                    <select name="ch05_05_03_03_01">
                                        <option value="Good">Good</option>
                                        <option value="Poor">Poor</option>
                                        <option value="Stressful">Stressful</option>
                                        <option value="Detached">Detached</option>
                                    </select>
                                </div>
                            </div>
                            <br />
                            <div>
                                4.
                                <input name="ch05_05_03_04" type="text" class="inputTxt" />
                                <div id="ch05_05_03_04" class="blue_color con_padding hide">
                                    Relationship is:
                                    <select name="ch05_05_03_04_01">
                                        <option value="Good">Good</option>
                                        <option value="Poor">Poor</option>
                                        <option value="Stressful">Stressful</option>
                                        <option value="Detached">Detached</option>
                                    </select>
                                </div>
                            </div>
                            <br />
                            <div>
                                5.
                                <input name="ch05_05_03_05" type="text" class="inputTxt" />
                                <div id="ch05_05_03_05" class="blue_color con_padding hide">
                                    Relationship is:
                                    <select name="ch05_05_03_05_01">
                                        <option value="Good">Good</option>
                                        <option value="Poor">Poor</option>
                                        <option value="Stressful">Stressful</option>
                                        <option value="Detached">Detached</option>
                                    </select>
                                </div>
                            </div>
                            <br />
                            <div>
                                6.
                                <input name="ch05_05_03_06" type="text" class="inputTxt" />
                                <div id="ch05_05_03_06" class="blue_color con_padding hide">
                                    Relationship is:
                                    <select name="ch05_05_03_06_01">
                                        <option value="Good">Good</option>
                                        <option value="Poor">Poor</option>
                                        <option value="Stressful">Stressful</option>
                                        <option value="Detached">Detached</option>
                                    </select>
                                </div>
                            </div>
                            <br />
                            <div>
                                7.
                                <input name="ch05_05_03_07" type="text" class="inputTxt" />
                                <div id="ch05_05_03_07" class="blue_color con_padding hide">
                                    Relationship is:
                                    <select name="ch05_05_03_07_01">
                                        <option value="Good">Good</option>
                                        <option value="Poor">Poor</option>
                                        <option value="Stressful">Stressful</option>
                                        <option value="Detached">Detached</option>
                                    </select>
                                </div>
                            </div>
                            <br />
                            <div>
                                8.
                                <input name="ch05_05_03_08" type="text" class="inputTxt" />
                                <div id="ch05_05_03_08" class="blue_color con_padding hide">
                                    Relationship is:
                                    <select name="ch05_05_03_08_01">
                                        <option value="Good">Good</option>
                                        <option value="Poor">Poor</option>
                                        <option value="Stressful">Stressful</option>
                                        <option value="Detached">Detached</option>
                                    </select><br />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <br />
                <span class="red_color">Are there people who live in your home (or are there a substantial
                    amount of time) who aren't your parents, guardians, spouse, or siblings (list)?
                    <input name="YesNo5_06" type="radio" value="1" />Yes<input name="YesNo5_06" type="radio"
                        value="0" checked="checked" />No</span>
                <div id="ch05_06" class="green_color con_padding hide">
                    <div>
                        1.
                        <input name="ch05_06_01" type="text" class="inputTxt" />
                        <div id="ch05_06_01" class="blue_color con_padding hide">
                            If related, how?
                            <input name="ch05_06_01_01" type="text" class="inputTxt-max" />
                        </div>
                    </div>
                    <br />
                    <div>
                        2.
                        <input name="ch05_06_02" type="text" class="inputTxt" />
                        <div id="ch05_06_02" class="blue_color con_padding hide">
                            If related, how?
                            <input name="ch05_06_02_01" type="text" class="inputTxt-max" />
                        </div>
                    </div>
                    <br />
                    <div>
                        3.
                        <input name="ch05_06_03" type="text" class="inputTxt" />
                        <div id="ch05_06_03" class="blue_color con_padding hide">
                            If related, how?
                            <input name="ch05_06_03_01" type="text" class="inputTxt-max" />
                        </div>
                    </div>
                    <br />
                    <div>
                        4.
                        <input name="ch05_06_04" type="text" class="inputTxt" />
                        <div id="ch05_06_04" class="blue_color con_padding hide">
                            If related, how?
                            <input name="ch05_06_04_01" type="text" class="inputTxt-max" />
                        </div>
                    </div>
                    <br />
                    <div>
                        5.
                        <input name="ch05_06_05" type="text" class="inputTxt" />
                        <div id="ch05_06_05" class="blue_color con_padding hide">
                            If related, how?
                            <input name="ch05_06_05_01" type="text" class="inputTxt-max" />
                        </div>
                    </div>
                </div>
                <br />
                <br />
                <span class="red_color">Are there any financial issues/stressors in the home?
                    <input name="YesNo5_07" type="radio" value="1" />Yes<input name="YesNo5_07" type="radio"
                        value="0" checked="checked" />No</span>
                <div id="ch05_07" class="green_color con_padding hide">
                    <div>
                        <input name="ch05_07_01" type="radio" value="Minimal" />Minimal</div>
                    <div>
                        <input name="ch05_07_01" type="radio" value="Moderate" />Moderate</div>
                    <div>
                        <input name="ch05_07_01" type="radio" value="Significant" />Significant</div>
                </div>
                <br />
                <br />
                <span class="red_color">What kind of discipline was used and how were conflicts resolved
                    in your family of origin?</span>
                <div id="ch05_08" class="green_color con_padding">
                    <div>
                        <input name="ch05_08_01" type="checkbox" value="1" />Negotiation</div>
                    <div>
                        <input name="ch05_08_02" type="checkbox" value="1" />Take turns</div>
                    <div>
                        <input name="ch05_08_03" type="checkbox" value="1" />Time out</div>
                    <div>
                        <input name="ch05_08_04" type="checkbox" value="1" />Grounding</div>
                    <div>
                        <input name="ch05_08_05" type="checkbox" value="1" />Corporal punishment</div>
                    <div>
                        <input name="ch05_08_06" type="checkbox" value="1" />Ignoring</div>
                    <div>
                        <input name="ch05_08_07" type="checkbox" value="1" />Manipulation</div>
                    <div>
                        <input name="ch05_08_08" type="checkbox" value="1" />Coercion</div>
                    <div>
                        <input name="ch05_08_09" type="checkbox" value="1" />Threats</div>
                    <div>
                        <input name="ch05_08_10" type="checkbox" value="1" />Physical fights</div>
                </div>
            </div>
            <br />
            <span class="title_bold">
                <img src="../../Content/images/tree/tree_less.gif" id="img06" width="9" height="9" />&nbsp;&nbsp;VI.
                MARITAL/DIVORCE HISTORY</span><a name="menu6" id="menu6"></a>
            <div id="ch06" class="con_padding">
                <span class="red_color">Have you ever been married (list, begin with most recent)?
                    <input name="YesNo6_01" type="radio" value="1" />Yes<input name="YesNo6_01" type="radio"
                        value="0" checked="checked" />No</span>
                <div id="ch06_01" class="green_color con_padding hide">
                    <div>
                        Year married
                        <input name="ch06_01_01" type="text" class="inputTxt" />
                        &nbsp;&nbsp;&nbsp;&nbsp; Year ended (leave blank if still married)<input name="ch06_01_01_01"
                            type="text" class="inputTxt" />
                        &nbsp;&nbsp;&nbsp;&nbsp; <span id="ch06_01_01_01" class="hide">
                            <select name="ch06_01_01_01_01">
                                <option value="Divorce">Divorce</option>
                                <option value="Death">Death</option>
                                <option value="Other">Other</option>
                            </select>
                        </span>
                    </div>
                    <br />
                    <div>
                        Year married
                        <input name="ch06_01_02" type="text" class="inputTxt" />
                        &nbsp;&nbsp;&nbsp;&nbsp; Year ended (leave blank if still married)<input name="ch06_01_02_01"
                            type="text" class="inputTxt" />
                        &nbsp;&nbsp;&nbsp;&nbsp; <span id="ch06_01_02_01" class="hide">
                            <select name="ch06_01_02_01_01">
                                <option value="Divorce">Divorce</option>
                                <option value="Death">Death</option>
                                <option value="Other">Other</option>
                            </select>
                        </span>
                    </div>
                    <br />
                    <div>
                        Year married
                        <input name="ch06_01_03" type="text" class="inputTxt" />
                        &nbsp;&nbsp;&nbsp;&nbsp; Year ended (leave blank if still married)<input name="ch06_01_03_01"
                            type="text" class="inputTxt" />
                        &nbsp;&nbsp;&nbsp;&nbsp; <span id="ch06_01_03_01" class="hide">
                            <select name="ch06_01_03_01_01">
                                <option value="Divorce">Divorce</option>
                                <option value="Death">Death</option>
                                <option value="Other">Other</option>
                            </select>
                        </span>
                    </div>
                    <br />
                    <div>
                        Year married
                        <input name="ch06_01_04" type="text" class="inputTxt" />
                        &nbsp;&nbsp;&nbsp;&nbsp; Year ended (leave blank if still married)<input name="ch06_01_04_01"
                            type="text" class="inputTxt" />
                        &nbsp;&nbsp;&nbsp;&nbsp; <span id="ch06_01_04_01" class="hide">
                            <select name="ch06_01_04_01_01">
                                <option value="Divorce">Divorce</option>
                                <option value="Death">Death</option>
                                <option value="Other">Other</option>
                            </select>
                        </span>
                    </div>
                    <br />
                    <div>
                        Year married
                        <input name="ch06_01_05" type="text" class="inputTxt" />
                        &nbsp;&nbsp;&nbsp;&nbsp; Year ended (leave blank if still married)<input name="ch06_01_05_01"
                            type="text" class="inputTxt" />
                        &nbsp;&nbsp;&nbsp;&nbsp; <span id="ch06_01_05_01" class="hide">
                            <select name="ch06_01_05_01_01">
                                <option value="Divorce">Divorce</option>
                                <option value="Death">Death</option>
                                <option value="Other">Other</option>
                            </select>
                        </span>
                        <br />
                    </div>
                </div>
            </div>
            <br />
            <span class="title_bold">
                <img src="../../Content/images/tree/tree_less.gif" id="img07" width="9" height="9" />&nbsp;&nbsp;VII.
                CHILDREN/AGES</span><a name="menu7" id="menu7"></a>
            <div id="ch07" class="con_padding">
                <span class="red_color">Have you ever had children?
                    <input name="YesNo7_01" type="radio" value="1" />Yes<input name="YesNo7_01" type="radio"
                        value="0" checked="checked" />No</span>
                <div id="ch07_01" class="green_color con_padding hide">
                    <div>
                        1.
                        <input name="ch07_01_01" type="text" class="inputTxt" />
                        <div id="ch07_01_01" class="con_padding hide">
                            <br />
                            <p>
                                Age
                                <input name="ch07_01_01_01" type="text" class="inputTxt" />
                            </p>
                            <p>
                                Lives:
                                <select name="ch07_01_01_02">
                                    <option value="With me">With me</option>
                                    <option value="With other parent">With other parent</option>
                                    <option value="As an adult">As an adult still in parent's home</option>
                                    <option value="As an independent">As an independent adult</option>
                                    <option value="Other">Other</option>
                                </select>
                            </p>
                        </div>
                    </div>
                    <br />
                    <div>
                        2.
                        <input name="ch07_01_02" type="text" class="inputTxt" />
                        <div id="ch07_01_02" class="con_padding hide">
                            <br />
                            <p>
                                Age
                                <input name="ch07_01_02_01" type="text" class="inputTxt" />
                            </p>
                            <p>
                                Lives:
                                <select name="ch07_01_02_02">
                                    <option value="With me">With me</option>
                                    <option value="With other parent">With other parent</option>
                                    <option value="As an adult">As an adult still in parent's home</option>
                                    <option value="As an independent">As an independent adult</option>
                                    <option value="Other">Other</option>
                                </select>
                            </p>
                        </div>
                    </div>
                    <br />
                    <div>
                        3.
                        <input name="ch07_01_03" type="text" class="inputTxt" />
                        <div id="ch07_01_03" class="con_padding hide">
                            <br />
                            <p>
                                Age
                                <input name="ch07_01_03_01" type="text" class="inputTxt" />
                            </p>
                            <p>
                                Lives:
                                <select name="ch07_01_03_02">
                                    <option value="With me">With me</option>
                                    <option value="With other parent">With other parent</option>
                                    <option value="As an adult">As an adult still in parent's home</option>
                                    <option value="As an independent">As an independent adult</option>
                                    <option value="Other">Other</option>
                                </select>
                            </p>
                        </div>
                    </div>
                    <br />
                    <div>
                        4.
                        <input name="ch07_01_04" type="text" class="inputTxt" />
                        <div id="ch07_01_04" class="con_padding hide">
                            <br />
                            <p>
                                Age
                                <input name="ch07_01_04_01" type="text" class="inputTxt" />
                            </p>
                            <p>
                                Lives:
                                <select name="ch07_01_04_02">
                                    <option value="With me">With me</option>
                                    <option value="With other parent">With other parent</option>
                                    <option value="As an adult">As an adult still in parent's home</option>
                                    <option value="As an independent">As an independent adult</option>
                                    <option value="Other">Other</option>
                                </select>
                            </p>
                        </div>
                    </div>
                    <br />
                    <div>
                        5.
                        <input name="ch07_01_05" type="text" class="inputTxt" />
                        <div id="ch07_01_05" class="con_padding hide">
                            <br />
                            <p>
                                Age
                                <input name="ch07_01_05_01" type="text" class="inputTxt" />
                            </p>
                            <p>
                                Lives:
                                <select name="ch07_01_05_02">
                                    <option value="With me">With me</option>
                                    <option value="With other parent">With other parent</option>
                                    <option value="As an adult">As an adult still in parent's home</option>
                                    <option value="As an independent">As an independent adult</option>
                                    <option value="Other">Other</option>
                                </select>
                            </p>
                        </div>
                    </div>
                    <br />
                    <div>
                        6.
                        <input name="ch07_01_06" type="text" class="inputTxt" />
                        <div id="ch07_01_06" class="con_padding hide">
                            <br />
                            <p>
                                Age
                                <input name="ch07_01_06_01" type="text" class="inputTxt" />
                            </p>
                            <p>
                                Lives:
                                <select name="ch07_01_06_02">
                                    <option value="With me">With me</option>
                                    <option value="With other parent">With other parent</option>
                                    <option value="As an adult">As an adult still in parent's home</option>
                                    <option value="As an independent">As an independent adult</option>
                                    <option value="Other">Other</option>
                                </select>
                            </p>
                        </div>
                    </div>
                    <br />
                    <div>
                        7.
                        <input name="ch07_01_07" type="text" class="inputTxt" />
                        <div id="ch07_01_07" class="con_padding hide">
                            <br />
                            <p>
                                Age
                                <input name="ch07_01_07_01" type="text" class="inputTxt" />
                            </p>
                            <p>
                                Lives:
                                <select name="ch07_01_07_02">
                                    <option value="With me">With me</option>
                                    <option value="With other parent">With other parent</option>
                                    <option value="As an adult">As an adult still in parent's home</option>
                                    <option value="As an independent">As an independent adult</option>
                                    <option value="Other">Other</option>
                                </select>
                            </p>
                        </div>
                    </div>
                    <br />
                    <div>
                        8.
                        <input name="ch07_01_08" type="text" class="inputTxt" />
                        <div id="ch07_01_08" class="con_padding hide">
                            <br />
                            <p>
                                Age
                                <input name="ch07_01_08_01" type="text" class="inputTxt" />
                            </p>
                            <p>
                                Lives:
                                <select name="ch07_01_08_02">
                                    <option value="With me">With me</option>
                                    <option value="With other parent">With other parent</option>
                                    <option value="As an adult">As an adult still in parent's home</option>
                                    <option value="As an independent">As an independent adult</option>
                                    <option value="Other">Other</option>
                                </select>
                            </p>
                        </div>
                    </div>
                    <br />
                    <div>
                        9.
                        <input name="ch07_01_09" type="text" class="inputTxt" />
                        <div id="ch07_01_09" class="con_padding hide">
                            <br />
                            <p>
                                Age
                                <input name="ch07_01_09_01" type="text" class="inputTxt" />
                            </p>
                            <p>
                                Lives:
                                <select name="ch07_01_09_02">
                                    <option value="With me">With me</option>
                                    <option value="With other parent">With other parent</option>
                                    <option value="As an adult">As an adult still in parent's home</option>
                                    <option value="As an independent">As an independent adult</option>
                                    <option value="Other">Other</option>
                                </select>
                            </p>
                        </div>
                    </div>
                    <br />
                    <div>
                        10.
                        <input name="ch07_01_10" type="text" class="inputTxt" />
                        <div id="ch07_01_10" class="con_padding hide">
                            <br />
                            <p>
                                Age
                                <input name="ch07_01_10_01" type="text" class="inputTxt" />
                            </p>
                            <p>
                                Lives:
                                <select name="ch07_01_10_02">
                                    <option value="With me">With me</option>
                                    <option value="With other parent">With other parent</option>
                                    <option value="As an adult">As an adult still in parent's home</option>
                                    <option value="As an independent">As an independent adult</option>
                                    <option value="Other">Other</option>
                                </select>
                            </p>
                        </div>
                    </div>
                    <br />
                    <br />
                    <span class="red_color">How does everyone get along in your home?
                        <select id="ch07_02" name="ch07_02">
                            <option value="Poor">Poor</option>
                            <option value="Fair">Fair</option>
                            <option value="Good">Good</option>
                            <option value="Variable">Variable</option>
                            <option value="Detached">Detached</option>
                            <option value="Other">Other</option>
                        </select>
                        <span id="ch07_02_hide" class="hide">&nbsp;&nbsp;other:&nbsp;&nbsp;<input name="ch07_02_01"
                            type="text" class="inputTxt-max" /></span> </span>
                    <br />
                    <br />
                    <span class="red_color">What types of discipline/conflict resolution have been used
                        in your home?</span>
                    <div id="ch07_03" class="green_color con_padding">
                        Discuss and decide
                        <div>
                            <input name="ch07_03_01" type="checkbox" value="1" />Negotiation</div>
                        <div>
                            <input name="ch07_03_02" type="checkbox" value="1" />Take turns</div>
                        <div>
                            <input name="ch07_03_03" type="checkbox" value="1" />Time out</div>
                        <div>
                            <input name="ch07_03_04" type="checkbox" value="1" />Grounding</div>
                        <div>
                            <input name="ch07_03_05" type="checkbox" value="1" />Corporal punishment</div>
                        <div>
                            <input name="ch07_03_06" type="checkbox" value="1" />Ignoring</div>
                        <div>
                            <input name="ch07_03_07" type="checkbox" value="1" />Manipulation</div>
                        <div>
                            <input name="ch07_03_08" type="checkbox" value="1" />Coercion</div>
                        <div>
                            <input name="ch07_03_09" type="checkbox" value="1" />Threats</div>
                        <div>
                            <input name="ch07_03_10" type="checkbox" value="1" />Physical fights</div>
                    </div>
                </div>
            </div>
            <br />
            <span class="title_bold">
                <img src="../../Content/images/tree/tree_less.gif" id="img08" width="9" height="9" />&nbsp;&nbsp;VIII.
                CULTURAL HISTORY</span><a name="menu8" id="menu8"></a>
            <div id="ch08" class="con_padding">
                <span class="red_color">
                    <p>
                        What do you consider the culture of your family of origin (describe)?
                    </p>
                    <p>
                        <input name="ch08_01" type="text" class="inputTxt-max" /></p>
                </span>
                <br />
                <br />
                <span class="red_color">
                    <p>
                        What do you consider the culture of your current family/living setting (describe)?
                    </p>
                    <p>
                        <input name="ch08_02" type="text" class="inputTxt-max" /></p>
                </span>
                <br />
                <br />
                <span class="red_color">Are there particular cultural aspects of your current life or
                    in your past history we should be aware of and sensitive to?
                    <input name="YesNo8_03" type="radio" value="1" />Yes<input name="YesNo8_03" type="radio"
                        value="0" checked="checked" />No
                    <div id="ch08_03" class="green_color con_padding hide">
                        Please list and describe:
                        <input name="ch08_03_01" type="text" class="inputTxt-max" /></div>
                </span>
            </div>
            <br />
            <span class="title_bold">
                <img src="../../Content/images/tree/tree_less.gif" id="img09" width="9" height="9" />&nbsp;&nbsp;IX.
                FAMILY HISTORY OF PHYSICAL/PSYCHIATRIC ILLNESS</span><a name="menu9" id="menu9"></a>
            <div id="ch09" class="con_padding">
                <span class="red_color">Does anyone in your biological family (alive or deceased) have/had
                    a significant physical illness?
                    <input name="YesNo9_01" type="radio" value="1" />Yes<input name="YesNo9_01" type="radio"
                        value="0" checked="checked" />No</span>
                <div id="ch09_01" class="green_color con_padding hide">
                    <div>
                        <input name="ch09_01_01" type="checkbox" value="1" />Grandparent(s)
                        <div id="ch09_01_01" class="blue_color con_padding hide">
                            Describe
                            <input name="ch09_01_01_01" type="text" class="inputTxt-max" /></div>
                    </div>
                    <div>
                        <input name="ch09_01_02" type="checkbox" value="1" />Parent(s)
                        <div id="ch09_01_02" class="blue_color con_padding hide">
                            Describe
                            <input name="ch09_01_02_01" type="text" class="inputTxt-max" /></div>
                    </div>
                    <div>
                        <input name="ch09_01_03" type="checkbox" value="1" />Aunts/uncles
                        <div id="ch09_01_03" class="blue_color con_padding hide">
                            Describe
                            <input name="ch09_01_03_01" type="text" class="inputTxt-max" /></div>
                    </div>
                    <div>
                        <input name="ch09_01_04" type="checkbox" value="1" />Sibling(s)
                        <div id="ch09_01_04" class="blue_color con_padding hide">
                            Describe
                            <input name="ch09_01_04_01" type="text" class="inputTxt-max" /></div>
                    </div>
                    <div>
                        <input name="ch09_01_05" type="checkbox" value="1" />Other
                        <div id="ch09_01_05" class="blue_color con_padding hide">
                            Describe
                            <input name="ch09_01_05_01" type="text" class="inputTxt-max" /></div>
                    </div>
                </div>
                <br />
                <br />
                <span class="red_color">Does anyone in your biological family (alive or deceased) have/had
                    a significant mental illness?
                    <input name="YesNo9_02" type="radio" value="1" />Yes<input name="YesNo9_02" type="radio"
                        value="0" checked="checked" />No</span>
                <div id="ch09_02" class="green_color con_padding hide">
                    <div>
                        <input name="ch09_02_01" type="checkbox" value="1" />Grandparent(s)
                        <div id="ch09_02_01" class="blue_color con_padding hide">
                            Describe
                            <input name="ch09_02_01_01" type="text" class="inputTxt-max" /></div>
                    </div>
                    <div>
                        <input name="ch09_02_02" type="checkbox" value="1" />Parent(s)
                        <div id="ch09_02_02" class="blue_color con_padding hide">
                            Describe
                            <input name="ch09_02_02_01" type="text" class="inputTxt-max" /></div>
                    </div>
                    <div>
                        <input name="ch09_02_03" type="checkbox" value="1" />Aunts/uncles
                        <div id="ch09_02_03" class="blue_color con_padding hide">
                            Describe
                            <input name="ch09_02_03_01" type="text" class="inputTxt-max" /></div>
                    </div>
                    <div>
                        <input name="ch09_02_04" type="checkbox" value="1" />Sibling(s)
                        <div id="ch09_02_04" class="blue_color con_padding hide">
                            Describe
                            <input name="ch09_02_04_01" type="text" class="inputTxt-max" /></div>
                    </div>
                    <div>
                        <input name="ch09_02_05" type="checkbox" value="1" />Other
                        <div id="ch09_02_05" class="blue_color con_padding hide">
                            Describe
                            <input name="ch09_02_05_01" type="text" class="inputTxt-max" /></div>
                    </div>
                </div>
            </div>
            <br />
            <span class="title_bold">
                <img src="../../Content/images/tree/tree_less.gif" id="img10" width="9" height="9" />&nbsp;&nbsp;X.
                PHYSICAL/EMOTIONAL/SEXUAL ABUSE HISTORY</span><a name="menu10" id="menu10"></a>
            <div id="ch10" class="con_padding">
                <span class="red_color">Have you ever been the victim of any kind of abuse?
                    <input name="YesNo10_01" type="radio" value="1" />Yes<input name="YesNo10_01" type="radio"
                        value="0" checked="checked" />No</span>
                <div id="ch10_01" class="green_color con_padding hide">
                    <div>
                        Have you ever been physically abused?
                        <input name="YesNo10_01_01" type="radio" value="1" />Yes<input name="YesNo10_01_01"
                            type="radio" value="0" checked="checked" />No
                        <div id="ch10_01_01" class="blue_color con_padding hide">
                            Age at time abuse occurred
                            <input name="ch10_01_01_01" type="text" class="inputTxt-max" /><br />
                            How long did the abuse last?
                            <input name="ch10_01_01_02" type="text" class="inputTxt-max" /><br />
                            Who abused you?
                            <input name="ch10_01_01_03" type="text" class="inputTxt-max" /><br />
                        </div>
                    </div>
                    <div>
                        Have you ever been emotionally abused?
                        <input name="YesNo10_01_02" type="radio" value="1" />Yes<input name="YesNo10_01_02"
                            type="radio" value="0" checked="checked" />No
                        <div id="ch10_01_02" class="blue_color con_padding hide">
                            Age at time abuse occurred
                            <input name="ch10_01_02_01" type="text" class="inputTxt-max" /><br />
                            How long did the abuse last?
                            <input name="ch10_01_02_02" type="text" class="inputTxt-max" /><br />
                            Who abused you?
                            <input name="ch10_01_02_03" type="text" class="inputTxt-max" /><br />
                        </div>
                    </div>
                    <div>
                        Have you ever been sexually abused?
                        <input name="YesNo10_01_03" type="radio" value="1" />Yes<input name="YesNo10_01_03"
                            type="radio" value="0" checked="checked" />No
                        <div id="ch10_01_03" class="blue_color con_padding hide">
                            Age at time abuse occurred
                            <input name="ch10_01_03_01" type="text" class="inputTxt-max" /><br />
                            How long did the abuse last?
                            <input name="ch10_01_03_02" type="text" class="inputTxt-max" /><br />
                            Who abused you?
                            <input name="ch10_01_03_03" type="text" class="inputTxt-max" /><br />
                        </div>
                    </div>
                    <div>
                        Were you ever significantly neglected as a child/adolescent?
                        <input name="YesNo10_01_04" type="radio" value="1" />Yes<input name="YesNo10_01_04"
                            type="radio" value="0" checked="checked" />No
                        <div id="ch10_01_04" class="blue_color con_padding hide">
                            Age at time abuse occurred
                            <input name="ch10_01_04_01" type="text" class="inputTxt-max" /><br />
                            How long did the abuse last?
                            <input name="ch10_01_04_02" type="text" class="inputTxt-max" /><br />
                            Who abused you?
                            <input name="ch10_01_04_03" type="text" class="inputTxt-max" /><br />
                        </div>
                    </div>
                    <div>
                        Are you currently in an abusive relationship?
                        <input name="YesNo10_01_05" type="radio" value="1" />Yes<input name="YesNo10_01_05"
                            type="radio" value="0" checked="checked" />No
                        <div id="ch10_01_05" class="blue_color con_padding hide">
                            Describe the abuse
                            <input name="ch10_01_05_01" type="text" class="inputTxt-max" /><br />
                            How long have you been in this relationship?
                            <input name="ch10_01_05_02" type="text" class="inputTxt-max" /><br />
                        </div>
                    </div>
                </div>
                <br />
                <span class="red_color">Have you ever abused anyone?
                    <input name="YesNo10_01_06" type="radio" value="1" />Yes<input name="YesNo10_01_06"
                        type="radio" value="0" checked="checked" />No </span>
                <div id="ch10_01_06" class="blue_color con_padding hide">
                    <div>
                        Was it physical abuse?
                        <input name="YesNo10_01_06_01" type="radio" value="1" />Yes<input name="YesNo10_01_06_01"
                            type="radio" value="0" checked="checked" />No
                        <div id="ch10_01_06_01" class="purple_color con_padding hide">
                            Your age and age of victim at time abuse occurred.
                            <input name="ch10_01_06_01_01" type="text" class="inputTxt-max" /><br />
                            How long did the abuse last?
                            <input name="ch10_01_06_01_02" type="text" class="inputTxt-max" /><br />
                            Who did you abuse?
                            <input name="ch10_01_06_01_03" type="text" class="inputTxt-max" /><br />
                        </div>
                    </div>
                    <div>
                        Was it emotional abuse?
                        <input name="YesNo10_01_06_02" type="radio" value="1" />Yes<input name="YesNo10_01_06_02"
                            type="radio" value="0" checked="checked" />No
                        <div id="ch10_01_06_02" class="purple_color con_padding hide">
                            Your age and age of victim at time abuse occurred.
                            <input name="ch10_01_06_02_01" type="text" class="inputTxt-max" /><br />
                            How long did the abuse last?
                            <input name="ch10_01_06_02_02" type="text" class="inputTxt-max" /><br />
                            Who did you abuse?
                            <input name="ch10_01_06_02_03" type="text" class="inputTxt-max" /><br />
                        </div>
                    </div>
                    <div>
                        Was it sexual abuse?
                        <input name="YesNo10_01_06_03" type="radio" value="1" />Yes<input name="YesNo10_01_06_03"
                            type="radio" value="0" checked="checked" />No
                        <div id="ch10_01_06_03" class="purple_color con_padding hide">
                            Your age and age of victim at time abuse occurred.
                            <input name="ch10_01_06_03_01" type="text" class="inputTxt-max" /><br />
                            How long did the abuse last?
                            <input name="ch10_01_06_03_02" type="text" class="inputTxt-max" /><br />
                            Who did you abuse?
                            <input name="ch10_01_06_03_03" type="text" class="inputTxt-max" /><br />
                        </div>
                    </div>
                    <div>
                        Was it neglect of a child/adolescent?
                        <input name="YesNo10_01_06_04" type="radio" value="1" />Yes<input name="YesNo10_01_06_04"
                            type="radio" value="0" checked="checked" />No
                        <div id="ch10_01_06_04" class="purple_color con_padding hide">
                            Your age and age of victim at time abuse occurred.
                            <input name="ch10_01_06_04_01" type="text" class="inputTxt-max" /><br />
                            How long did the abuse last?
                            <input name="ch10_01_06_04_02" type="text" class="inputTxt-max" /><br />
                            Who did you abuse?
                            <input name="ch10_01_06_04_03" type="text" class="inputTxt-max" /><br />
                        </div>
                    </div>
                </div>
            </div>
            <br />
            <span class="title_bold">
                <img src="../../Content/images/tree/tree_less.gif" id="img11" width="9" height="9" />&nbsp;&nbsp;XI.
                EDUCATION</span><a name="menu11" id="menu11"></a>
            <div id="ch11" class="con_padding">
                Current grade (or highest grade completed):
                <input name="current_grade" type="text" class="inputTxt-max" /><br />
                Name of school:
                <input name="school_name" type="text" class="inputTxt-max" /><br />
                <%--<span class="red_color">Have you completed high school?
                    <input name="YesNo11_01" type="radio" value="1" />Yes<input name="YesNo11_01" type="radio"
                        value="0" checked="checked" />No</span><br />
                <div id="ch11_01" class="green_color con_padding hide">
                    Did you get a GED?
                    <input name="YesNo11_01_01" type="radio" value="1" />Yes<input name="YesNo11_01_01"
                        type="radio" value="0" checked="checked" />No</div>--%>
                What year did you graduate high school or obtain your GED?
                <input name="graduate_time" type="text" class="inputTxt-max" /><br />
                <br />
                If you should be attending school now but are not, please explain why not:
                <input name="explain" type="text" class="inputTxt-max" /><br />
                <span class="red_color">Were you ever in gifted classes?
                    <input name="YesNo11_02" type="radio" value="1" />Yes<input name="YesNo11_02" type="radio"
                        value="0" checked="checked" />No</span><br />
                <div id="ch11_02" class="green_color con_padding hide">
                    What grade?
                    <input name="ch11_02_01" type="text" class="inputTxt-max" /></div>
                <span class="red_color">Did you ever have to repeat a grade?
                    <input name="YesNo11_03" type="radio" value="1" />Yes<input name="YesNo11_03" type="radio"
                        value="0" checked="checked" />No</span><br />
                <div id="ch11_03" class="green_color con_padding hide">
                    What grade(s)?
                    <input name="ch11_03_01" type="text" class="inputTxt-max" /></div>
                <span class="red_color">Do you have any learning disabilities?
                    <input name="YesNo11_04" type="radio" value="1" />Yes<input name="YesNo11_04" type="radio"
                        value="0" checked="checked" />No </span>
                <br />
                <div id="ch11_04" class="green_color con_padding hide">
                    Is it trouble with:
                    <p>
                        <input name="ch11_04_01" type="checkbox" value="1" />Math</p>
                    <p>
                        <input name="ch11_04_02" type="checkbox" value="1" />Reading</p>
                    <p>
                        <input name="ch11_04_03" type="checkbox" value="1" />Spelling</p>
                    <p>
                        <input name="ch11_04_04" type="checkbox" value="1" />Speech</p>
                    <p>
                        <input name="ch11_04_05" type="checkbox" value="1" />Writing</p>
                    <p>
                        <input name="ch11_04_06" type="checkbox" value="1" />Other <span id="ch11_04_06"
                            class="hide">
                            <input name="ch11_04_06_01" type="text" class="inputTxt-max" />
                        </span>
                    </p>
                </div>
                <span class="red_color">Were you ever in special education classes?
                    <input name="YesNo11_05" type="radio" value="1" />Yes<input name="YesNo11_05" type="radio"
                        value="0" checked="checked" />No</span><br />
                <div id="ch11_05" class="green_color con_padding hide">
                    What grade(s)?
                    <input name="ch11_05_01" type="text" class="inputTxt-max" /></div>
                <span class="red_color">Were you ever in classes for emotionally or behaviorally disabled
                    children?
                    <input name="YesNo11_06" type="radio" value="1" />Yes<input name="YesNo11_06" type="radio"
                        value="0" checked="checked" />No</span><br />
                <div id="ch11_06" class="green_color con_padding hide">
                    <p>
                        What grade(s)?
                        <input name="ch11_06_01" type="text" class="inputTxt-max" /></p>
                    <p>
                        What was the nature of your difficulty?
                        <input name="ch11_06_02" type="text" class="inputTxt-max" />
                    </p>
                </div>
                <span class="red_color">Have you ever been suspended?
                    <input name="YesNo11_07" type="radio" value="1" />Yes<input name="YesNo11_07" type="radio"
                        value="0" checked="checked" />No</span><br />
                <div id="ch11_07" class="green_color con_padding hide">
                    <div>
                        <input name="ch11_07_01" type="checkbox" value="1" />In school</div>
                    <div>
                        <input name="ch11_07_02" type="checkbox" value="1" />Out of school</div>
                    <div>
                        <input name="ch11_07_03" type="checkbox" value="1" />How many times? <span id="ch11_07_03"
                            class="hide">
                            <select id="ch11_07_03_01" name="ch07_02">
                                <option value="Once">Once</option>
                                <option value="A few times">A few times</option>
                                <option value="Quite a bit">Quite a bit</option>
                            </select>
                        </span>
                    </div>
                </div>
                <span class="red_color">Have you ever been expelled?<input name="YesNo11_08" type="radio"
                    value="1" />Yes<input name="YesNo11_08" type="radio" value="0" checked="checked" />No</span><br />
                <div id="ch11_08" class="green_color con_padding hide">
                    <p>
                        What was the reason?
                        <input name="ch11_08_01" type="text" class="inputTxt-max" /></p>
                    <p>
                        What Grade(s)
                        <input name="ch11_08_02" type="text" class="inputTxt-max" /></p>
                </div>
                <span class="red_color">Have the difficulties you experience ever affected your performance
                    or relationships at school?
                    <input name="YesNo11_09" type="radio" value="1" />Yes<input name="YesNo11_09" type="radio"
                        value="0" checked="checked" />No</span><br />
                <div id="ch11_09" class="green_color con_padding hide">
                    Please describe how they were affected:
                    <input name="ch11_09_01" type="text" class="inputTxt-max" /></div>
                <span class="red_color">Have you had any education beyond High School (even if you didn't
                    complete your high school education)?
                    <input name="YesNo11_10" type="radio" value="1" />Yes<input name="YesNo11_10" type="radio"
                        value="0" checked="checked" />No</span><br />
                <div id="ch11_10" class="green_color con_padding hide">
                    <div>
                        Was it a professional, technical or trade school?
                        <input name="YesNo11_10_01" type="radio" value="1" />Yes<input name="YesNo11_10_01"
                            type="radio" value="0" checked="checked" />No
                        <div id="ch11_10_01" class="blue_color con_padding hide">
                            <div>
                                What was the name of the school/program?
                                <input name="ch11_10_01_01" type="text" class="inputTxt-max" /></div>
                            <div>
                                Are you still attending?
                                <input name="YesNo11_10_01_02" type="radio" value="1" />Yes<input name="YesNo11_10_01_02"
                                    type="radio" value="0" checked="checked" />No
                                <div id="ch11_10_01_02" class="purple_color con_padding hide">
                                    When will you finish?
                                    <input name="ch11_10_01_02_01" type="text" class="inputTxt-max" /></div>
                            </div>
                            <div>
                                Did you complete the program?
                                <input name="YesNo11_10_01_03" type="radio" value="1" />Yes<input name="YesNo11_10_01_03"
                                    type="radio" value="0" checked="checked" />No
                                <div id="ch11_10_01_03" class="purple_color con_padding hide">
                                    What trade/skill did you learn?
                                    <input name="ch11_10_01_03_01" type="text" class="inputTxt-max" /></div>
                            </div>
                            <div>
                                If not completed and not attending please explain:
                                <input name="ch11_10_01_04" type="text" class="inputTxt-max" /></div>
                        </div>
                    </div>
                    <div>
                        Was it a college or university?
                        <input name="YesNo11_10_02" type="radio" value="1" />Yes<input name="YesNo11_10_02"
                            type="radio" value="0" checked="checked" />No
                        <div id="ch11_10_02" class="blue_color con_padding hide">
                            <div>
                                What was the name of the college or university?
                                <input name="ch11_10_02_01" type="text" class="inputTxt-max" /></div>
                            <div>
                                Are you still attending?
                                <input name="YesNo11_10_02_02" type="radio" value="1" />Yes<input name="YesNo11_10_02_02"
                                    type="radio" value="0" checked="checked" />No
                                <div id="ch11_10_02_02" class="purple_color con_padding hide">
                                    When will you finish?
                                    <input name="ch11_10_02_02_01" type="text" class="inputTxt-max" /></div>
                            </div>
                            <div>
                                Did you complete a program or degree?
                                <input name="YesNo11_10_02_03" type="radio" value="1" />Yes<input name="YesNo11_10_02_03"
                                    type="radio" value="0" checked="checked" />No
                                <div id="ch11_10_02_03" class="purple_color con_padding hide">
                                    What certificate or degree did you earn?
                                    <input name="ch11_10_02_03_01" type="text" class="inputTxt-max" /></div>
                            </div>
                            <div>
                                If not completed and not attending please explain:
                                <input name="ch11_10_02_04" type="text" class="inputTxt-max" /></div>
                        </div>
                    </div>
                    <div>
                        Was it a professional or trade internship or on-the-job training?
                        <input name="YesNo11_10_03" type="radio" value="1" />Yes<input name="YesNo11_10_03"
                            type="radio" value="0" checked="checked" />No
                        <div id="ch11_10_03" class="blue_color con_padding hide">
                            <div>
                                What company or individual were you training with?
                                <input name="ch11_10_03_01" type="text" class="inputTxt-max" /></div>
                            <div>
                                Are you still in training?
                                <input name="YesNo11_10_03_02" type="radio" value="1" />Yes<input name="YesNo11_10_03_02"
                                    type="radio" value="0" checked="checked" />No
                                <div id="ch11_10_03_02" class="purple_color con_padding hide">
                                    When will you finish?
                                    <input name="ch11_10_03_02_01" type="text" class="inputTxt-max" /></div>
                            </div>
                            <div>
                                Did you complete the training?
                                <input name="YesNo11_10_03_03" type="radio" value="1" />Yes<input name="YesNo11_10_03_03"
                                    type="radio" value="0" checked="checked" />No
                                <div id="ch11_10_03_03" class="purple_color con_padding hide">
                                    What skill, certificate or professional qualification did you learn/earn?
                                    <input name="ch11_10_03_03_01" type="text" class="inputTxt-max" /></div>
                            </div>
                            <div>
                                If not completed and not attending please explain:
                                <input name="ch11_10_03_04" type="text" class="inputTxt-max" /></div>
                        </div>
                    </div>
                    <div>
                        Have you had any post-graduate schooling or training (e.g. Masters, PhD, MD, DO,
                        Lawyer, MBA, EdD)?
                        <input name="YesNo11_10_04" type="radio" value="1" />Yes<input name="YesNo11_10_04"
                            type="radio" value="0" checked="checked" />No
                        <div id="ch11_10_04" class="blue_color con_padding hide">
                            <div>
                                What was the name of the school, program, college or university?
                                <input name="ch11_10_04_01" type="text" class="inputTxt-max" /></div>
                            <div>
                                Are you still attending?
                                <input name="YesNo11_10_04_02" type="radio" value="1" />Yes<input name="YesNo11_10_04_02"
                                    type="radio" value="0" checked="checked" />No
                                <div id="ch11_10_04_02" class="purple_color con_padding hide">
                                    When will you finish?
                                    <input name="ch11_10_04_02_01" type="text" class="inputTxt-max" /></div>
                            </div>
                            <div>
                                Did you complete the program?
                                <input name="YesNo11_10_04_03" type="radio" value="1" />Yes<input name="YesNo11_10_04_03"
                                    type="radio" value="0" checked="checked" />No
                                <div id="ch11_10_04_03" class="purple_color con_padding hide">
                                    What skill, certificate or professional qualification did you learn/earn?
                                    <input name="ch11_10_04_03_01" type="text" class="inputTxt-max" /></div>
                            </div>
                            <div>
                                If not completed and not attending please explain:
                                <input name="ch11_10_04_04" type="text" class="inputTxt-max" /></div>
                        </div>
                    </div>
                </div>
            </div>
            <br />
            <span class="title_bold">
                <img src="../../Content/images/tree/tree_less.gif" id="img12" width="9" height="9" />&nbsp;&nbsp;XII.
                SOCIAL HABITS</span><a name="menu12" id="menu12"></a>
            <div id="ch12" class="con_padding">
                <span class="red_color">Do you prefer to be with friends or alone (pick one):
                    <select id="ch12_01" name="ch07_02">
                        <option value="Friends">Friends</option>
                        <option value="Alone">Alone</option>
                        <option value="both">Doesn't matter, like both</option>
                    </select>
                </span>
                <br />
                <br />
                <span class="red_color">Do you make friends easily?
                    <input name="YesNo12_02" type="radio" value="1" checked="checked" />Yes<input name="YesNo12_02"
                        type="radio" value="0" />No</span><br />
                <div id="ch12_02" class="green_color con_padding hide">
                    What difficulties do you have making friends?
                    <input name="ch12_02_01" type="text" class="inputTxt-max" /></div>
                <span class="red_color">Are most of your friends the same age (+/- one year if child,
                    two years if adolescent, 5 years if an adult)?
                    <input name="YesNo12_03" type="radio" value="1" checked="checked" />Yes<input name="YesNo12_03"
                        type="radio" value="0" />No</span><br />
                <div id="ch12_03" class="green_color con_padding hide">
                    What is it about much older/younger friends that you prefer?
                    <input name="ch12_03_01" type="text" class="inputTxt-max" /></div>
                <span class="red_color">In general, what is the quality of your interactions with (other)
                    adults (other than immediate family)?
                    <select id="ch12_04" name="ch12_04">
                        <option value="Non-existent">Non-existent</option>
                        <option value="Poor">Poor</option>
                        <option value="Fair">Fair</option>
                        <option value="Good">Good</option>
                        <option value="Excellent">Excellent</option>
                    </select>
                </span>
                <br />
                <br />
                <span class="red_color">What type(s) of activities/hobbies/interests outside of work/school
                    do you enjoy?
                    <input name="ch12_05" type="text" class="inputTxt-max" /></span><br />
                <br />
                <span class="red_color">What are your favorite hobbies or interests?
                    <input name="ch12_06" type="text" class="inputTxt-max" /></span><br />
                <br />
                <span class="red_color">How many close/intimate friends do you have?
                    <input name="ch12_07" type="text" class="inputTxt-max" /></span><br />
                <br />
                <span class="red_color">Are you fairly comfortable in social situations/interactions?
                    <input name="YesNo12_08" type="radio" value="1" />Yes<input name="YesNo12_08" type="radio"
                        value="0" checked="checked" />No</span><br />
                <br />
                <span class="red_color">Who do you talk to when you need help? </span>
                <div class="green_color con_padding">
                    <div>
                        <input name="ch12_09_01" type="checkbox" value="1" />Family</div>
                    <div>
                        <input name="ch12_09_02" type="checkbox" value="1" />Friends</div>
                    <div>
                        <input name="ch12_09_03" type="checkbox" value="1" />Best friend</div>
                    <div>
                        <input name="ch12_09_04" type="checkbox" value="1" />Significant other</div>
                    <div>
                        <input name="ch12_09_05" type="checkbox" value="1" />Religious leader</div>
                    <div>
                        <input name="ch12_09_06" type="checkbox" value="1" />Counselor/therapist</div>
                    <div>
                        <input name="ch12_09_07" type="checkbox" value="1" />Other professional</div>
                    <div>
                        <input name="ch12_09_08" type="checkbox" value="1" />Other <span id="ch12_09_08"
                            class="hide">
                            <input name="ch12_09_08_01" type="text" class="inputTxt-max" /></span></div>
                </div>
            </div>
            <br />
            <span class="title_bold">
                <img src="../../Content/images/tree/tree_less.gif" id="img13" width="9" height="9" />&nbsp;&nbsp;XIII.
                EMPLOYMENT</span><a name="menu13" id="menu13"></a>
            <div id="ch13" class="con_padding">
                <span class="red_color">Are you currently or have you ever been employed or worked as
                    an independent contractor earning a wage or any type of compensation?
                    <input name="YesNo13_01" type="radio" value="1" />Yes<input name="YesNo13_01" type="radio"
                        value="0" checked="checked" />No</span>
                <div id="ch13_01" class="green_color con_padding hide">
                    <div>
                        Are you currently employed?
                        <input name="YesNo13_01_01" type="radio" value="1" />Yes<input name="YesNo13_01_01"
                            type="radio" value="0" checked="checked" />No
                        <div id="ch13_01_01" class="blue_color con_padding hide">
                            <p>
                                Name of employer:
                                <input name="ch13_01_01_01" type="text" class="inputTxt-max" /></p>
                            <p>
                                Years at current employer:
                                <input name="ch13_01_01_02" type="text" class="inputTxt-max" /></p>
                            <p>
                                Type of work
                                <input name="ch13_01_01_03" type="text" class="inputTxt-max" /></p>
                        </div>
                    </div>
                    <div>
                        Have you ever been fired from a job?
                        <input name="YesNo13_01_02" type="radio" value="1" />Yes<input name="YesNo13_01_02"
                            type="radio" value="0" checked="checked" />No
                        <div id="ch13_01_02" class="blue_color con_padding hide">
                            <p>
                                How many times?
                                <input name="ch13_01_02_01" type="text" class="inputTxt-max" /></p>
                            <p>
                                What were the reasons?
                                <input name="ch13_01_02_02" type="text" class="inputTxt-max" /></p>
                        </div>
                    </div>
                    <div>
                        What other type of work have you done in the past?
                        <input name="ch13_01_03" type="text" class="inputTxt-max" /></div>
                    <div>
                        Are you currently or have you ever been on disability?
                        <input name="YesNo13_01_04" type="radio" value="1" />Yes<input name="YesNo13_01_04"
                            type="radio" value="0" checked="checked" />No
                        <div id="ch13_01_04" class="blue_color con_padding hide">
                            <p>
                                For how long?
                                <input name="ch13_01_04_01" type="text" class="inputTxt-max" /></p>
                            <p>
                                For what reasons?
                                <input name="ch13_01_04_02" type="text" class="inputTxt-max" /></p>
                        </div>
                    </div>
                </div>
            </div>
            <br />
            <span class="title_bold">
                <img src="../../Content/images/tree/tree_less.gif" id="img14" width="9" height="9" />&nbsp;&nbsp;XIV.
                MILITARY HISTORY</span><a name="menu14" id="menu14"></a>
            <div id="ch14" class="con_padding">
                <span class="red_color">Are you currently in or ever been in a branch of military service
                    (active or reserves)?
                    <input name="YesNo14_01" type="radio" value="1" />Yes<input name="YesNo14_01" type="radio"
                        value="0" checked="checked" />No</span>
                <div id="ch14_01" class="green_color con_padding hide">
                    <p>
                        Branch:
                        <select id="ch14_01_01" name="ch14_01_01">
                            <option value="Army">Army</option>
                            <option value="Navy">Navy</option>
                            <option value="Air Force">Air Force</option>
                            <option value="Marines">Marines</option>
                            <option value="Coast Guard">Coast Guard</option>
                            <option value="Other">Other</option>
                        </select>
                        <span id="ch14_01_01_hide" class="hide">&nbsp;&nbsp;Other:
                            <input name="ch14_01_01_01" type="text" class="inputTxt-max" /></span>
                    </p>
                    <p>
                        How many years did/have you served?
                        <input name="ch14_01_02" type="text" class="inputTxt-max" /></p>
                    <p>
                        If discharged, what was the nature of your discharge?
                        <input name="ch14_01_03" type="text" class="inputTxt-max" /></p>
                </div>
            </div>
            <br />
            <span class="title_bold">
                <img src="../../Content/images/tree/tree_less.gif" id="img15" width="9" height="9" />&nbsp;&nbsp;XV.
                STRENGTHS AND WEAKNESSES(as stated by client)</span><a name="menu15" id="menu15"></a>
            <div id="ch15" class="con_padding">
                <p>
                    Strengths:
                    <input name="ch15_01" type="text" class="inputTxt-max" /></p>
                <p>
                    Weaknesses:
                    <input name="ch15_02" type="text" class="inputTxt-max" /></p>
            </div>
            <br />
            <span class="title_bold">
                <img src="../../Content/images/tree/tree_less.gif" id="img16" width="9" height="9" />&nbsp;&nbsp;XVI.
                LEGAL INVOLVEMENT</span><a name="menu16" id="menu16"></a>
            <div id="ch16" class="con_padding">
                <span class="red_color">Have you ever been arrested or charged with a crime?
                    <input name="YesNo16_01" type="radio" value="1" />Yes<input name="YesNo16_01" type="radio"
                        value="0" checked="checked" />No</span>
                <div id="ch16_01" class="green_color con_padding hide">
                    <div>
                        How old were you?
                        <input name="ch16_01_01" type="text" class="inputTxt-max" /></div>
                    <br />
                    <div>
                        What was the charge?
                        <input name="ch16_01_02" type="text" class="inputTxt-max" /></div>
                    <div>
                        Where you incarcerated?
                        <input name="YesNo16_01_03" type="radio" value="1" />Yes<input name="YesNo16_01_03"
                            type="radio" value="0" checked="checked" />No
                        <div id="ch16_01_03" class="blue_color con_padding hide">
                            <p>
                                For how long?
                                <input name="ch16_01_03_01" type="text" class="inputTxt-max" /></p>
                            <p>
                                Where?
                                <input name="ch16_01_03_02" type="text" class="inputTxt-max" /></p>
                        </div>
                    </div>
                    <div>
                        Are you currently and/or ever been on probation/parole?
                        <input name="YesNo16_01_04" type="radio" value="1" />Yes<input name="YesNo16_01_04"
                            type="radio" value="0" checked="checked" />No
                        <div id="ch16_01_04" class="blue_color con_padding hide">
                            Name of probation/parole officer:
                            <input name="ch16_01_04_01" type="text" class="inputTxt-max" /></div>
                    </div>
                    <br />
                    <div>
                        Describe any other police involvement:
                        <input name="ch16_01_05" type="text" class="inputTxt-max" /></div>
                </div>
            </div>
            <br />
            <span class="title_bold">
                <img src="../../Content/images/tree/tree_less.gif" id="img17" width="9" height="9" />&nbsp;&nbsp;XVII.
                SPIRITUAL/RELIGIOUS INFLUENCE</span><a name="menu17" id="menu17"></a>
            <div id="ch17" class="con_padding">
                <span class="red_color">Do you have a religious affiliation or do you identify with
                    any form of spiritual belief?
                    <input name="YesNo17_01" type="radio" value="1" />Yes<input name="YesNo17_01" type="radio"
                        value="0" checked="checked" />No</span>
                <div id="ch17_01" class="green_color con_padding hide">
                    <div>
                        Please describe your religion/spiritual belief:
                        <input name="ch17_01_01" type="text" class="inputTxt-max" /></div>
                    <div>
                        Do you currently attend a place of worship?
                        <input name="YesNo17_01_02" type="radio" value="1" />Yes<input name="YesNo17_01_02"
                            type="radio" value="0" checked="checked" />No <span id="ch17_01_02" class="hide">&nbsp;&nbsp;&nbsp;&nbsp;
                                <select id="ch17_01_02_01" name="ch17_01_02_01">
                                    <option value="Several">Several times a week</option>
                                    <option value="Weekly">Weekly</option>
                                    <option value="couple">A couple of times a month</option>
                                    <option value="Marines">A few times a year</option>
                                    <option value="rarely">rarely</option>
                                </select>
                            </span>
                    </div>
                    <div>
                        Is your place of worship a significant part of your support system?
                        <input name="YesNo17_01_03" type="radio" value="1" />Yes<input name="YesNo17_01_03"
                            type="radio" value="0" checked="checked" />No</div>
                    <div>
                        When you have any struggles/difficulties, do you generally believe things will eventually
                        get better?
                        <input name="YesNo17_01_04" type="radio" value="1" />Yes<input name="YesNo17_01_04"
                            type="radio" value="0" checked="checked" />No</div>
                    <div>
                        Are you able to accept help from others when it is offered?
                        <input name="YesNo17_01_05" type="radio" value="1" />Yes<input name="YesNo17_01_05"
                            type="radio" value="0" checked="checked" />No</div>
                    <div>
                        Do you feel there is purpose to your life?
                        <input name="YesNo17_01_06" type="radio" value="1" />Yes<input name="YesNo17_01_06"
                            type="radio" value="0" checked="checked" />No</div>
                </div>
            </div>
            <span class="title_bold">
                <img src="../../Content/images/tree/tree_less.gif" id="img18" width="9" height="9" />&nbsp;&nbsp;XVIII.
                SEXUAL HISTORY</span><a name="menu18" id="menu18"></a>
            <div id="ch18" class="con_padding">
                <span class="red_color">Have you ever been sexually active?
                    <input name="YesNo18_01" type="radio" value="1" />Yes<input name="YesNo18_01" type="radio"
                        value="0" checked="checked" />No</span>
                <div id="ch18_01" class="green_color con_padding hide">
                    <div>
                        Are you currently sexually active?
                        <input name="YesNo18_01_01" type="radio" value="1" />Yes<input name="YesNo18_01_01"
                            type="radio" value="0" checked="checked" />No</div>
                    <div>
                        Do you have a history of sexually transmitted diseases?
                        <input name="YesNo18_01_02" type="radio" value="1" />Yes<input name="YesNo18_01_02"
                            type="radio" value="0" checked="checked" />No</div>
                    <div>
                        Are you aware of the "high risk" diseases associated with drinking and using drugs
                        such as HIV, STD, and TB?
                        <input name="YesNo18_01_03" type="radio" value="1" />Yes<input name="YesNo18_01_03"
                            type="radio" value="0" checked="checked" />No</div>
                    <div>
                        How many sexual partners have you had in the past six months?
                        <input name="ch18_01_04" type="text" class="inputTxt-max" /></div>
                </div>
            </div>
            <br />
            <span class="title_bold">
                <img src="../../Content/images/tree/tree_less.gif" id="img19" width="9" height="9" />&nbsp;&nbsp;XIX.
                MENTAL STATUS EXAM</span><a name="menu19" id="menu19"></a>
            <div id="ch19" class="con_padding">
                <div class="green_color con_padding">
                    Appearance/grooming:
                    <div>
                        <input type="checkbox" value="1" name="ch19_01_01" />
                        Neat</div>
                    <div>
                        <input type="checkbox" value="1" name="ch19_01_02" />
                        Unkempt</div>
                    <div>
                        <input type="checkbox" value="1" name="ch19_01_03" />
                        Good hygiene</div>
                    <div>
                        <input type="checkbox" value="1" name="ch19_01_04" />
                        Fair hygiene</div>
                    <div>
                        <input type="checkbox" value="1" name="ch19_01_05" />
                        Bad hygiene</div>
                    <div>
                        <input type="checkbox" value="1" name="ch19_01_06" />
                        Appropriate dress</div>
                    <div>
                        <input type="checkbox" value="1" name="ch19_01_07" />
                        Unusual/inappropriate dress</div>
                    <div>
                        <input type="checkbox" value="1" name="ch19_01_08" />
                        Recent significant weight gain</div>
                    <div>
                        <input type="checkbox" value="1" name="ch19_01_09" />
                        Recent significant weight loss</div>
                    <div>
                        <input type="checkbox" value="1" name="ch19_01_10" />
                        Other<span id="ch19_01_10" class="hide">
                            <input name="ch19_01_10_01" type="text" class="inputTxt-max" />
                        </span>
                    </div>
                </div>
                <div class="green_color con_padding">
                    Interaction quality:
                    <div>
                        <input type="checkbox" value="1" name="ch19_02_01" />
                        Friendly</div>
                    <div>
                        <input type="checkbox" value="1" name="ch19_02_02" />
                        Cooperative</div>
                    <div>
                        <input type="checkbox" value="1" name="ch19_02_03" />
                        Hostile</div>
                    <div>
                        <input type="checkbox" value="1" name="ch19_02_04" />
                        Belligerent</div>
                    <div>
                        <input type="checkbox" value="1" name="ch19_02_05" />
                        Guarded</div>
                    <div>
                        <input type="checkbox" value="1" name="ch19_02_06" />
                        Evasive</div>
                    <div>
                        <input type="checkbox" value="1" name="ch19_02_07" />
                        Flippant</div>
                    <div>
                        <input type="checkbox" value="1" name="ch19_02_08" />
                        Detached</div>
                    <div>
                        <input type="checkbox" value="1" name="ch19_02_09" />
                        Passive</div>
                    <div>
                        <input type="checkbox" value="1" name="ch19_02_10" />
                        Other<span id="ch19_02_10" class="hide">
                            <input name="ch19_02_10_01" type="text" class="inputTxt-max" />
                        </span>
                    </div>
                </div>
                <div class="green_color con_padding">
                    Attention/concentration:
                    <div>
                        <input type="checkbox" value="1" name="ch19_03_01" />
                        Alert</div>
                    <div>
                        <input type="checkbox" value="1" name="ch19_03_02" />
                        Attentive</div>
                    <div>
                        <input type="checkbox" value="1" name="ch19_03_03" />
                        Focused</div>
                    <div>
                        <input type="checkbox" value="1" name="ch19_03_04" />
                        Bored</div>
                    <div>
                        <input type="checkbox" value="1" name="ch19_03_05" />
                        Confused</div>
                    <div>
                        <input type="checkbox" value="1" name="ch19_03_06" />
                        Listless</div>
                    <div>
                        <input type="checkbox" value="1" name="ch19_03_07" />
                        Distractible</div>
                    <div>
                        <input type="checkbox" value="1" name="ch19_03_08" />
                        Needed redirection</div>
                    <div>
                        <input type="checkbox" value="1" name="ch19_03_09" />
                        Other<span id="ch19_03_09" class="hide">
                            <input name="ch19_03_09_01" type="text" class="inputTxt-max" />
                        </span>
                    </div>
                </div>
                <div class="green_color con_padding">
                    Psychomotor activity:
                    <div>
                        <input type="checkbox" value="1" name="ch19_04_01" />
                        Normal</div>
                    <div>
                        <input type="checkbox" value="1" name="ch19_04_02" />
                        Overactive</div>
                    <div>
                        <input type="checkbox" value="1" name="ch19_04_03" />
                        Slowed</div>
                    <div>
                        <input type="checkbox" value="1" name="ch19_04_04" />
                        Fidgety</div>
                    <div>
                        <input type="checkbox" value="1" name="ch19_04_05" />
                        Facial tics/twitches</div>
                    <div>
                        <input type="checkbox" value="1" name="ch19_04_06" />
                        Other<span id="ch19_04_06" class="hide">
                            <input name="ch19_04_06_01" type="text" class="inputTxt-max" />
                        </span>
                    </div>
                </div>
                <div class="green_color con_padding">
                    Observed affect:
                    <div>
                        <input type="checkbox" value="1" name="ch19_05_01" />
                        Full range</div>
                    <div>
                        <input type="checkbox" value="1" name="ch19_05_02" />
                        Flat</div>
                    <div>
                        <input type="checkbox" value="1" name="ch19_05_03" />
                        Appropriate</div>
                    <div>
                        <input type="checkbox" value="1" name="ch19_05_04" />
                        Labile</div>
                    <div>
                        <input type="checkbox" value="1" name="ch19_05_05" />
                        Blunted</div>
                    <div>
                        <input type="checkbox" value="1" name="ch19_05_06" />
                        Constricted</div>
                    <div>
                        <input type="checkbox" value="1" name="ch19_05_07" />
                        Intense/reactive</div>
                    <div>
                        <input type="checkbox" value="1" name="ch19_05_08" />
                        Incongruent</div>
                    <div>
                        <input type="checkbox" value="1" name="ch19_05_09" />
                        Other<span id="ch19_05_09" class="hide">
                            <input name="ch19_05_09_01" type="text" class="inputTxt-max" />
                        </span>
                    </div>
                </div>
                <div class="green_color con_padding">
                    Report of mood:
                    <div>
                        <input type="checkbox" value="1" name="ch19_06_01" />
                        Euthymic</div>
                    <div>
                        <input type="checkbox" value="1" name="ch19_06_02" />
                        Depressed</div>
                    <div>
                        <input type="checkbox" value="1" name="ch19_06_03" />
                        Anxious</div>
                    <div>
                        <input type="checkbox" value="1" name="ch19_06_04" />
                        Irritable</div>
                    <div>
                        <input type="checkbox" value="1" name="ch19_06_05" />
                        Angry</div>
                    <div>
                        <input type="checkbox" value="1" name="ch19_06_06" />
                        Euphoric</div>
                    <div>
                        <input type="checkbox" value="1" name="ch19_06_07" />
                        Other<span id="ch19_06_07" class="hide">
                            <input name="ch19_06_07_01" type="text" class="inputTxt-max" />
                        </span>
                    </div>
                </div>
                <div class="green_color con_padding">
                    Perceptions/thought content:
                    <div>
                        <input type="checkbox" value="1" name="ch19_07_01" />
                        Hallucinations</div>
                    <div>
                        <input type="checkbox" value="1" name="ch19_07_02" />
                        Delusions</div>
                    <div>
                        <input type="checkbox" value="1" name="ch19_07_03" />
                        Circumstantiality</div>
                    <div>
                        <input type="checkbox" value="1" name="ch19_07_04" />
                        Tangentiality</div>
                    <div>
                        <input type="checkbox" value="1" name="ch19_07_05" />
                        Paucity</div>
                    <div>
                        <input type="checkbox" value="1" name="ch19_07_06" />
                        Illogical</div>
                    <div>
                        <input type="checkbox" value="1" name="ch19_07_07" />
                        Grandiose</div>
                    <div>
                        <input type="checkbox" value="1" name="ch19_07_08" />
                        Suspicious</div>
                    <div>
                        <input type="checkbox" value="1" name="ch19_07_09" />
                        Other<span id="ch19_07_09" class="hide">
                            <input name="ch19_07_09_01" type="text" class="inputTxt-max" />
                        </span>
                    </div>
                </div>
                <div class="green_color con_padding">
                    Speech:
                    <div>
                        <input type="checkbox" value="1" name="ch19_08_01" />
                        Clear</div>
                    <div>
                        <input type="checkbox" value="1" name="ch19_08_02" />
                        Coherent</div>
                    <div>
                        <input type="checkbox" value="1" name="ch19_08_03" />
                        Relevant</div>
                    <div>
                        <input type="checkbox" value="1" name="ch19_08_04" />
                        Loud</div>
                    <div>
                        <input type="checkbox" value="1" name="ch19_08_05" />
                        Verbose</div>
                    <div>
                        <input type="checkbox" value="1" name="ch19_08_06" />
                        Soft</div>
                    <div>
                        <input type="checkbox" value="1" name="ch19_08_07" />
                        Incoherent</div>
                    <div>
                        <input type="checkbox" value="1" name="ch19_08_08" />
                        Pressured</div>
                    <div>
                        <input type="checkbox" value="1" name="ch19_08_09" />
                        Impoverished</div>
                    <div>
                        <input type="checkbox" value="1" name="ch19_08_10" />
                        Word salad</div>
                    <div>
                        <input type="checkbox" value="1" name="ch19_08_11" />
                        Neologisms</div>
                    <div>
                        <input type="checkbox" value="1" name="ch19_08_12" />
                        Unusual content</div>
                    <div>
                        <input type="checkbox" value="1" name="ch19_08_13" />
                        Other<span id="ch19_08_13" class="hide">
                            <input name="ch19_08_13_01" type="text" class="inputTxt-max" />
                        </span>
                    </div>
                </div>
                <div class="green_color con_padding">
                    Reliability:
                    <div>
                        <input type="checkbox" value="1" name="ch19_09_01" />
                        Reliable/honest</div>
                    <div>
                        <input type="checkbox" value="1" name="ch19_09_02" />
                        Unable to establish</div>
                    <div>
                        <input type="checkbox" value="1" name="ch19_09_03" />
                        Questionable</div>
                    <div>
                        <input type="checkbox" value="1" name="ch19_09_04" />
                        Unreliable</div>
                    <div>
                        <input type="checkbox" value="1" name="ch19_09_05" />
                        Other<span id="ch19_09_05" class="hide">
                            <input name="ch19_09_05_01" type="text" class="inputTxt-max" />
                        </span>
                    </div>
                </div>
                <div class="green_color con_padding">
                    Orientation:
                    <div>
                        <input type="checkbox" value="1" name="ch19_10_01" />
                        Person</div>
                    <div>
                        <input type="checkbox" value="1" name="ch19_10_02" />
                        Place</div>
                    <div>
                        <input type="checkbox" value="1" name="ch19_10_03" />
                        Time</div>
                    <div>
                        <input type="checkbox" value="1" name="ch19_10_04" />
                        Date</div>
                    <div>
                        <input type="checkbox" value="1" name="ch19_10_05" />
                        Season</div>
                </div>
                <div class="green_color con_padding">
                    Memory:
                    <div>
                        <input type="checkbox" value="1" name="ch19_11_01" />
                        Immediate intact</div>
                    <div>
                        <input type="checkbox" value="1" name="ch19_11_02" />
                        Recent intact</div>
                    <div>
                        <input type="checkbox" value="1" name="ch19_11_03" />
                        Remote intact</div>
                    <div>
                        <input type="checkbox" value="1" name="ch19_11_04" />
                        Deficit of immediate recall</div>
                    <div>
                        <input type="checkbox" value="1" name="ch19_11_05" />
                        Deficit of recent recall</div>
                    <div>
                        <input type="checkbox" value="1" name="ch19_11_06" />
                        Deficit of remote recall</div>
                    <div>
                        <input type="checkbox" value="1" name="ch19_11_07" />
                        Other<span id="ch19_11_07" class="hide">
                            <input name="ch19_11_07_01" type="text" class="inputTxt-max" />
                        </span>
                    </div>
                    <div>
                        <input type="checkbox" value="1" name="ch19_11_08" />
                        Mode of testing used by interviewer<span id="ch19_11_08" class="hide">
                            <input name="ch19_11_08_01" type="text" class="inputTxt-max" />
                        </span>
                    </div>
                </div>
                <div class="green_color con_padding">
                    Intelligence:
                    <div>
                        <input type="checkbox" value="1" name="ch19_12_01" />
                        Below average</div>
                    <div>
                        <input type="checkbox" value="1" name="ch19_12_02" />
                        Average</div>
                    <div>
                        <input type="checkbox" value="1" name="ch19_12_03" />
                        Above average</div>
                    <div>
                        <input type="checkbox" value="1" name="ch19_12_04" />
                        Unable to determine</div>
                    <div>
                        <input type="checkbox" value="1" name="ch19_12_05" />
                        Other<span id="ch19_12_05" class="hide">
                            <input name="ch19_12_05_01" type="text" class="inputTxt-max" />
                        </span>
                    </div>
                </div>
                <div class="green_color con_padding">
                    Insight:
                    <div>
                        <input type="checkbox" value="1" name="ch19_13_01" />
                        Understands nature of problem</div>
                    <div>
                        <input type="checkbox" value="1" name="ch19_13_02" />
                        In denial</div>
                    <div>
                        <input type="checkbox" value="1" name="ch19_13_03" />
                        Blames others</div>
                    <div>
                        <input type="checkbox" value="1" name="ch19_13_04" />
                        Unaware of difficulty</div>
                    <div>
                        <input type="checkbox" value="1" name="ch19_13_05" />
                        Other<span id="ch19_13_05" class="hide">
                            <input name="ch19_13_05_01" type="text" class="inputTxt-max" />
                        </span>
                    </div>
                </div>
                <div class="green_color con_padding">
                    Judgment:
                    <div>
                        <input type="checkbox" value="1" name="ch19_14_01" />
                        Appreciates consequences of behavior</div>
                    <div>
                        <input type="checkbox" value="1" name="ch19_14_02" />
                        Marginal</div>
                    <div>
                        <input type="checkbox" value="1" name="ch19_14_03" />
                        Doesn't understand consequences</div>
                    <div>
                        <input type="checkbox" value="1" name="ch19_14_04" />
                        Poor</div>
                    <div>
                        <input type="checkbox" value="1" name="ch19_14_05" />
                        Intact</div>
                    <div>
                        <input type="checkbox" value="1" name="ch19_14_06" />
                        Other<span id="ch19_14_06" class="hide">
                            <input name="ch19_14_06_01" type="text" class="inputTxt-max" />
                        </span>
                    </div>
                </div>
            </div>
            <br />
            <span class="title_bold">
                <img src="../../Content/images/tree/tree_less.gif" id="img20" width="9" height="9" />&nbsp;&nbsp;XX.
                CLINICAL IMPRESSION</span><a name="menu20" id="menu20"></a>
            <div id="ch20" class="con_padding">
                <span class="red_color">(DSM-IV diagnosis) Note any diagnosis to be ruled out (do not
                    describe, use numeric code)<br />
                    <br />
                    <p>
                        AXIS I:
                        <input name="ch20_01" type="text" class="inputTxt-max" /></p>
                    <p>
                        AXIS I:
                        <input name="ch20_02" type="text" class="inputTxt-max" /></p>
                    <p>
                        AXIS I:
                        <input name="ch20_03" type="text" class="inputTxt-max" /></p>
                    <p>
                        AXIS I:
                        <input name="ch20_04" type="text" class="inputTxt-max" /></p>
                    <p>
                        AXIS I:
                        <input name="ch20_05" type="text" class="inputTxt-max" /></p>
                    <p>
                        AXIS I:
                        <input name="ch20_06" type="text" class="inputTxt-max" /></p>
                    <p>
                        AXIS I:
                        <input name="ch20_07" type="text" class="inputTxt-max" /></p>
                    <p>
                        AXIS I:
                        <input name="ch20_08" type="text" class="inputTxt-max" /></p>
                    <p>
                        AXIS II:
                        <input name="ch20_09" type="text" class="inputTxt-max" /></p>
                    <p>
                        AXIS II:
                        <input name="ch20_10" type="text" class="inputTxt-max" /></p>
                    <p>
                        AXIS II:
                        <input name="ch20_11" type="text" class="inputTxt-max" /></p>
                    <p>
                        AXIS III:
                        <input name="ch20_12" type="text" class="inputTxt-max" /></p>
                    <p>
                        AXIS III:
                        <input name="ch20_13" type="text" class="inputTxt-max" /></p>
                    <p>
                        AXIS III:
                        <input name="ch20_14" type="text" class="inputTxt-max" /></p>
                    <p>
                        AXIS III:
                        <input name="ch20_15" type="text" class="inputTxt-max" /></p>
                    <p>
                        AXIS III:
                        <input name="ch20_16" type="text" class="inputTxt-max" /></p>
                    <p>
                        AXIS IV:
                        <div id="ch20_17" class="green_color con_padding">
                            <div>
                                <input name="ch20_17_01" type="checkbox" value="1" />Problem with primary support
                                group
                                <div id="ch20_17_01" class="blue_color con_padding hide">
                                    Specify
                                    <input name="ch20_17_01_01" type="text" class="inputTxt-max" /></div>
                            </div>
                            <div>
                                <input name="ch20_17_02" type="checkbox" value="1" />Problem related to social environment
                                <div id="ch20_17_02" class="blue_color con_padding hide">
                                    Specify
                                    <input name="ch20_17_02_01" type="text" class="inputTxt-max" /></div>
                            </div>
                            <div>
                                <input name="ch20_17_03" type="checkbox" value="1" />Educational problem
                                <div id="ch20_17_03" class="blue_color con_padding hide">
                                    Specify
                                    <input name="ch20_17_03_01" type="text" class="inputTxt-max" /></div>
                            </div>
                            <div>
                                <input name="ch20_17_04" type="checkbox" value="1" />Occupational problem
                                <div id="ch20_17_04" class="blue_color con_padding hide">
                                    Specify
                                    <input name="ch20_17_04_01" type="text" class="inputTxt-max" /></div>
                            </div>
                            <div>
                                <input name="ch20_17_05" type="checkbox" value="1" />Housing problem:
                                <div id="ch20_17_05" class="blue_color con_padding hide">
                                    Specify
                                    <input name="ch20_17_05_01" type="text" class="inputTxt-max" /></div>
                            </div>
                            <div>
                                <input name="ch20_17_06" type="checkbox" value="1" />Economic problem
                                <div id="ch20_17_06" class="blue_color con_padding hide">
                                    Specify
                                    <input name="ch20_17_06_01" type="text" class="inputTxt-max" /></div>
                            </div>
                            <div>
                                <input name="ch20_17_07" type="checkbox" value="1" />Problem with access to health
                                care:
                                <div id="ch20_17_07" class="blue_color con_padding hide">
                                    Specify
                                    <input name="ch20_17_07_01" type="text" class="inputTxt-max" /></div>
                            </div>
                            <div>
                                <input name="ch20_17_08" type="checkbox" value="1" />Problem related to interaction
                                with legal system
                                <div id="ch20_17_08" class="blue_color con_padding hide">
                                    Specify
                                    <input name="ch20_17_08_01" type="text" class="inputTxt-max" /></div>
                            </div>
                            <div>
                                <input name="ch20_17_09" type="checkbox" value="1" />Other psychosocial and environmental
                                problem
                                <div id="ch20_17_09" class="blue_color con_padding hide">
                                    Specify
                                    <input name="ch20_17_09_01" type="text" class="inputTxt-max" /></div>
                            </div>
                        </div>
                    </p>
                    <br />
                    <p>
                        AXIS V: Initial GAF
                        <input name="ch20_18_01" type="text" class="inputTxt" />
                        Highest GAF past year
                        <input name="ch20_18_02" type="text" class="inputTxt" />
                        Current GAF
                        <input name="ch20_18_03" type="text" class="inputTxt" /></p>
                </span>
            </div>
            <br />
            <span class="title_bold">
                <img src="../../Content/images/tree/tree_less.gif" id="img21" width="9" height="9" />&nbsp;&nbsp;XXI.
                RECENT STRESSFUL LIFE SITUATIONS</span><a name="menu21" id="menu21"></a>
            <div id="ch21" class="con_padding">
                <span class="red_color">Please check any of the following that have occurred in the
                    last two (2) years: </span>
                <div class="green_color">
                    <div>
                        <input name="ch21_01_01" type="checkbox" value="1" />Recently married</div>
                    <div>
                        <input name="ch21_01_02" type="checkbox" value="1" />Recently divorce</div>
                    <div>
                        <input name="ch21_01_03" type="checkbox" value="1" />Legal issues</div>
                    <div>
                        <input name="ch21_01_04" type="checkbox" value="1" />Engagement</div>
                    <div>
                        <input name="ch21_01_05" type="checkbox" value="1" />Separation</div>
                    <div>
                        <input name="ch21_01_06" type="checkbox" value="1" />Break-up of important relationship</div>
                    <div>
                        <input name="ch21_01_07" type="checkbox" value="1" />Child left home</div>
                    <div>
                        <input name="ch21_01_08" type="checkbox" value="1" />Serious argument</div>
                    <div>
                        <input name="ch21_01_09" type="checkbox" value="1" />Personal injury/illness</div>
                    <div>
                        <input name="ch21_01_10" type="checkbox" value="1" />Bad health</div>
                    <div>
                        <input name="ch21_01_11" type="checkbox" value="1" />Death of a loved one</div>
                    <div>
                        <input name="ch21_01_12" type="checkbox" value="1" />Retired/lost job</div>
                    <div>
                        <input name="ch21_01_13" type="checkbox" value="1" />Negative behavior of family
                        member</div>
                    <div>
                        <input name="ch21_01_14" type="checkbox" value="1" />Significant changes at work/school</div>
                    <div>
                        <input name="ch21_01_15" type="checkbox" value="1" />Moved</div>
                    <div>
                        <input name="ch21_01_16" type="checkbox" value="1" />In too much debt</div>
                    <div>
                        <input name="ch21_01_17" type="checkbox" value="1" />Sexual issues</div>
                    <div>
                        <input name="ch21_01_18" type="checkbox" value="1" />Physical/sexual/emotional abuse</div>
                    <div>
                        <input name="ch21_01_19" type="checkbox" value="1" />Homelessness</div>
                    <div>
                        <input name="ch21_01_21" type="checkbox" value="1" />Birth of child</div>
                    <div>
                        <input name="ch21_01_22" type="checkbox" value="1" />Hospitalizations</div>
                    <div>
                        <input name="ch21_01_23" type="checkbox" value="1" />Other <span id="ch21_01_23"
                            class="hide">&nbsp;&nbsp;<input name="ch21_01_23_01" type="text" class="inputTxt-max" /></span></div>
                </div>
            </div>
            <br />
            <span class="title_bold">
                <img src="../../Content/images/tree/tree_less.gif" id="img22" width="9" height="9" />&nbsp;&nbsp;XXII.
                CLIENT STRENGTHS (identified by clinician)</span><a name="menu22" id="menu22"></a>
            <div id="ch22" class="con_padding">
                <span class="red_color">Client Strengths: </span>
                <div class="green_color">
                    <div>
                        <input name="ch22_01_01" type="checkbox" value="1" />Average/above functioning</div>
                    <div>
                        <input name="ch22_01_02" type="checkbox" value="1" />Has transportation</div>
                    <div>
                        <input name="ch22_01_03" type="checkbox" value="1" />Family/other support</div>
                    <div>
                        <input name="ch22_01_04" type="checkbox" value="1" />Good physical health</div>
                    <div>
                        <input name="ch22_01_05" type="checkbox" value="1" />Maintains employment/school
                        responsibilities</div>
                    <div>
                        <input name="ch22_01_06" type="checkbox" value="1" />Good self care</div>
                    <div>
                        <input name="ch22_01_07" type="checkbox" value="1" />Good insight re: problems</div>
                    <div>
                        <input name="ch22_01_08" type="checkbox" value="1" />Good self esteem</div>
                    <div>
                        <input name="ch22_01_09" type="checkbox" value="1" />Good verbal skills</div>
                    <div>
                        <input name="ch22_01_10" type="checkbox" value="1" />Cooperative/motivated</div>
                    <div>
                        <input name="ch22_01_11" type="checkbox" value="1" />Other <span id="ch22_01_11"
                            class="hide">&nbsp;&nbsp;<input name="ch22_01_11_01" type="text" class="inputTxt-max" /></span></div>
                </div>
                <br />
                <span class="red_color">Barriers to treatment: </span>
                <div class="green_color">
                    <div>
                        <input name="ch22_02_01" type="checkbox" value="1" />None</div>
                    <div>
                        <input name="ch22_02_02" type="checkbox" value="1" />Family</div>
                    <div>
                        <input name="ch22_02_03" type="checkbox" value="1" />Work/school interference</div>
                    <div>
                        <input name="ch22_02_04" type="checkbox" value="1" />Spouse interference</div>
                    <div>
                        <input name="ch22_02_05" type="checkbox" value="1" />Transportation problems</div>
                    <div>
                        <input name="ch22_02_06" type="checkbox" value="1" />Health problems</div>
                    <div>
                        <input name="ch22_02_07" type="checkbox" value="1" />Financial problems</div>
                    <div>
                        <input name="ch22_02_08" type="checkbox" value="1" />Below average functioning</div>
                    <div>
                        <input name="ch22_02_09" type="checkbox" value="1" />Limited insight</div>
                    <div>
                        <input name="ch22_02_10" type="checkbox" value="1" />Poor judgment</div>
                    <div>
                        <input name="ch22_02_11" type="checkbox" value="1" />Low self esteem</div>
                    <div>
                        <input name="ch22_02_12" type="checkbox" value="1" />Low frustration tolerance</div>
                    <div>
                        <input name="ch22_02_13" type="checkbox" value="1" />Other <span id="ch22_02_13"
                            class="hide">&nbsp;&nbsp;<input name="ch22_02_13_01" type="text" class="inputTxt-max" /></span></div>
                </div>
            </div>
            <br />
            <span class="title_bold">
                <img src="../../Content/images/tree/tree_less.gif" id="img23" width="9" height="9" />&nbsp;&nbsp;XXIII.
                TREATMENT MODALITY/ISSUES</span><a name="menu23" id="menu23"></a>
            <div id="ch23" class="con_padding">
                <span class="red_color">TREATMENT MODALITY/ISSUES</span>
                <div class="green_color">
                    <div>
                        <input name="ch23_01_01" type="checkbox" value="1" />Individual</div>
                    <div>
                        <input name="ch23_01_02" type="checkbox" value="1" />Family
                    </div>
                    <div>
                        <input name="ch23_01_03" type="checkbox" value="1" />Group
                    </div>
                    <div>
                        <input name="ch23_01_04" type="checkbox" value="1" />Marital
                    </div>
                    <div>
                        <input name="ch23_01_05" type="checkbox" value="1" />Collateral</div>
                    <div>
                        <input name="ch23_01_06" type="checkbox" value="1" />Medication</div>
                    <div>
                        <input name="ch23_01_07" type="checkbox" value="1" />Other<span id="ch23_01_07" class="hide">&nbsp;&nbsp;<input
                            name="ch23_01_07_01" type="text" class="inputTxt-max" /></span></div>
                </div>
            </div>
            <br />
            <span class="title_bold">
                <img src="../../Content/images/tree/tree_less.gif" id="img24" width="9" height="9" />&nbsp;&nbsp;XXIV.
                DISCHARGE</span><a name="menu24" id="menu24"></a>
            <div id="ch24" class="con_padding">
                <span class="red_color">CRITERIA FOR DISCHARGE:
                    <select id="ch24_01_01" name="ch24_01_01">
                        <option value="Achievement">Achievement of patient's stated goals</option>
                        <option value="Treatment">Treatment termination by mutual agreement between patient
                            and clinician</option>
                        <option value="Other">Other</option>
                    </select>
                    <span id="ch24_01_01_hide" class="hide">
                        <br />
                        &nbsp;&nbsp;Other:
                        <input name="ch24_01_01_01" type="text" class="inputTxt-max" /></span> </span>
                <br />
                <br />
                <span class="red_color">DISCHARGE PLANS:
                    <select id="ch24_02" name="ch24_02">
                        <option value="inpatient">Transfer to inpatient</option>
                        <option value="outpatient">Transfer to outpatient</option>
                        <option value="residential">Transfer to residential</option>
                        <option value="current">Discharge to current home setting</option>
                        <option value="different">Discharge to different home setting</option>
                        <option value="Other">Other</option>
                    </select>
                    <span id="ch24_02_hide" class="hide">&nbsp;&nbsp;Other:
                        <input name="ch24_02_01" type="text" class="inputTxt-max" /></span> </span>
            </div>
            <br />
            <br />
            <div class="title_bold">
                INTERPRETIVE SUMMARY/FORMULATION (Treatment teams'comprehensive, holistic view of
                the client and what problems/needs to address in treatment based on all psychiatric,
                medical, and psychosocial and psychological assessments.)<a name="menu25" id="menu25"></a><br />
                <br />
                <textarea name="ch25_01" cols="100" rows="8" class="textarea"></textarea>
            </div>
            <br />
            <div class="title_bold">
                What problems/needs will not be addressed in treatment:<br />
                <br />
                <textarea name="ch26_01" cols="100" rows="4" class="textarea"></textarea>
            </div>
            <br />
            </form>
        </div>
        <!--表单结束-->
    </div>
    <div class="patient-div-left">
        <ul>
            <li><a href="#menu1">I. CURRENT SYMPTOMS</a></li>
            <li><a href="#menu2">II. HISTORY OF PREVIOUS MENTAL HEALTH TREATMENT</a></li>
            <li><a href="#menu3">III. CHILDHOOD DEVELOPMENT</a></li>
            <li><a href="#menu4">IV. HISTORY OF PREVIOUS MEDICAL Treatment</a></li>
            <li><a href="#menu5">V. FAMILY HOUSEHOLD INFORMATION</a></li>
            <li><a href="#menu6">VI. MARITAL/DIVORCE HISTORY</a></li>
            <li><a href="#menu7">VII. CHILDREN/AGES</a></li>
            <li><a href="#menu8">VIII. CULTURAL HISTORY</a></li>
            <li><a href="#menu9">IX. FAMILY HISTORY OF PHYSICAL/PSYCHIATRIC ILLNESS</a></li>
            <li><a href="#menu10">X. PHYSICAL EMOTIONAL SEXUAL ABUSE HISTORY</a></li>
            <li><a href="#menu11">XI. EDUCATION</a></li>
            <li><a href="#menu12">XII. SOCIAL HABITS</a></li>
            <li><a href="#menu13">XIII. EMPLOYMENT</a></li>
            <li><a href="#menu14">XIV. MILITARY HISTORY</a></li>
            <li><a href="#menu15">XV. STRENGTHS AND WEAKNESSES(as stated by client)</a></li>
            <li><a href="#menu16">XVI. LEGAL INVOLVEMENT</a></li>
            <li><a href="#menu17">XVII. SPIRITUAL/RELIGIOUS INFLUENCE</a></li>
            <li><a href="#menu18">XVIII. SEXUAL HISTORY</a></li>
            <li><a href="#menu19">XIX. MENTAL STATUS EXAM</a></li>
            <li><a href="#menu20">XX. CLINICAL IMPRESSION</a></li>
            <li><a href="#menu21">XXI. RECENT STRESSFUL LIFE SITUATIONS</a></li>
            <li><a href="#menu22">XXII. CLIENT STRENGTHS (identified by clinician)</a></li>
            <li><a href="#menu23">XXIII. TREATMENT MODALITY/ISSUES</a></li>
            <li><a href="#menu24">XXIV. DISCHARGE</a></li>
            <li><a href="#menu25">XXV. INTERPRETIVE SUMMARY FORMULATION</a></li>
        </ul>
    </div>
</asp:Content>
<asp:Content ID="ctToolBar" runat="server" ContentPlaceHolderID="phToolBar">
    <input type="submit" value="Save" class="btn-style" onclick="checkForm()" />
    |
    <input type="button" class="btn-style" value="Cancel" onclick="document.location = '/Client/list/';" />
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="phfootBar" runat="server">
    <input type="submit" value="Save" class="btn-style" onclick="checkForm()" />
    |
    <input type="button" class="btn-style" value="Cancel" onclick="document.location = '/Client/list/';" />
</asp:Content>
<asp:Content ID="ctNavigation" runat="server" ContentPlaceHolderID="phNavigation">
    <%:Html.ActionLink("Client list","list")%>
    > New Client
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="HeadContent" runat="server">
    <script type="text/javascript" src="../../Scripts/View/patient.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {

            $("#BirthDay").change(function getAge() {
                $.ajax({
                    type: "POST",
                    dataType: 'json',
                    url: "/Client/GetAge",
                    cache: false,
                    data: "date=" + $(this).val(),
                    timeout: 10000,
                    success: function (result) {
                        if (result && result.Success) {
                            $("#Age").attr("value", result.Age);
                        }
                        else {
                            alert(result.ErrorMsg);
                        }
                    }
                });
            });


            document.documentElement.onkeydown = function (evt) {
                var b = !!evt, oEvent = evt || window.event;
                if (oEvent.keyCode == 8) {
                    var node = b ? oEvent.target : oEvent.srcElement;
                    var reg = /^(input|textarea)$/i, regType = /^(text|textarea)$/i;
                    if (!reg.test(node.nodeName) || !regType.test(node.type) || node.readOnly || node.disabled) {
                        if (b) {
                            oEvent.stopPropagation();
                        }
                        else {
                            oEvent.cancelBubble = true;
                            oEvent.keyCode = 0;
                            oEvent.returnValue = false;
                        }
                    }
                }
            }
        });
    </script>
</asp:Content>
