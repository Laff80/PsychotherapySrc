<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<Insourcia.Psychotherapy.Model.Patient>" %>
<%@ Import Namespace="Insourcia.Common" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Edit Physcosocial
</asp:Content>

<asp:Content ID="ctToolBar" runat="server" ContentPlaceHolderID="phToolBar">
<input type="submit" value="Save" class="btn-style" onclick="checkForm()"/>
|
 <input type="button" class="btn-style" value="Cancel" onclick="document.location = '/Client/list/';" />
</asp:Content>

<asp:Content ID="Content6" ContentPlaceHolderID="phfootBar" runat="server">
<input type="submit" value="Save" class="btn-style" onclick="checkForm()"/>|<input type="button" class="btn-style" value="Cancel" onclick="document.location = '/Client/list/';" />
</asp:Content>

<asp:Content ID="ctNavigation" runat="server" ContentPlaceHolderID="phNavigation">
<%:Html.ActionLink("Client list","list")%> > <%:Html.ActionLink(Session["ClientName"].ToString(), "Info", new { id = Model.PatientID })%> > Edit Psychosocial
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
            <form name="myForm" id="myForm" method="post" action="/Client/Edit" onkeydown="if(event.keyCode==13){return false;}">
            <table>
                <tr>
                    <td align="right">
                        GRID#
                    </td>
                    <td colspan="7">
                        <%: Html.TextBoxFor(model => model.GRID, new { @class = "inputTxt" })%><%: Html.HiddenFor(model => model.PatientID)%>
                        <% string ClientName = Model.LastName + "," + Model.FirstName + (!string.IsNullOrEmpty(Model.MiddleName) ? " " + Model.MiddleName + "." : ""); %>
                        <%: Html.Hidden("ClientName", ClientName)%>
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
                        Middle Name:
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
                            <option value="Caucasian" <%: "Caucasian".Equals(Model.Ethnicity) ? "selected='selected'":string.Empty%>>Caucasian</option>
                            <option value="African American" <%: "African American".Equals(Model.Ethnicity) ? "selected='selected'":string.Empty%>>African American</option>
                            <option value="Biracial" <%: "Biracial".Equals(Model.Ethnicity) ? "selected='selected'":string.Empty%>>Biracial</option>
                            <option value="Hispanic" <%: "Hispanic".Equals(Model.Ethnicity) ? "selected='selected'":string.Empty%>>Hispanic</option>
                            <option value="Other" <%: "Other".Equals(Model.Ethnicity) ? "selected='selected'":string.Empty%>>Other</option>
                        </select>
                    </td>
                    <td colspan="4" align="left" valign="middle">
                        <span id="ethnicity_hide" class="<%: "Other".Equals(Model.Ethnicity) ? string.Empty:"hide"%>" >Other:
                            <input id="ethnicity_other" name="EthnicityOther" type="text" class="inputTxt" value="<%=XMLBean.getValue("EthnicityOther")%>" />
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
                            <option value="Single" <%:"Single".Equals(Model.MaritalStatus) ? "selected='selected'":string.Empty %>>Single</option>
                            <option value="Married" <%:"Married".Equals(Model.MaritalStatus) ? "selected='selected'":string.Empty %>>Married</option>
                            <option value="Divorced" <%:"Divorced".Equals(Model.MaritalStatus) ? "selected='selected'":string.Empty %>>Divorced</option>
                            <option value="Separated" <%: "Separated".Equals(Model.MaritalStatus) ? "selected='selected'":string.Empty %>>Separated</option>
                            <option value="Cohabitating" <%: "Cohabitating".Equals(Model.MaritalStatus) ? "selected='selected'":string.Empty %>>Cohabitating</option>
                            <option value="Widow/Widower" <%: "Widow/Widower".Equals(Model.MaritalStatus) ? "selected='selected'":string.Empty %>>Widow/Widower</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td height="25" align="right">
                        Current Living Situation:
                    </td>
                    <td>
                        <select name="LivingSituation" id="livingsituation" class="select_max">
                            <option value="Home" <%:"Home".Equals(Model.LivingSituation) ? "selected='selected'":string.Empty %>>Home</option>
                            <option value="Other" <%:"Other".Equals(Model.LivingSituation) ? "selected='selected'":string.Empty %>>Other</option>
                        </select>
                    </td>
                    <td colspan="6" align="left">
                        <span id="livingsituation_hide" class="hide">Other:
                            <input id="livingsituation_other" name="LivingSituationOther" type="text" class="inputTxt" value="<%=XMLBean.getValue("LivingSituationOther")%>" />
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
                            <option value="Self" <%: "Self".Equals(Model.Relationship) ? "selected='selected'":string.Empty%>>Self</option>
                            <option value="Parent" <%: "Parent".Equals(Model.Relationship) ? "selected='selected'":string.Empty%>>Parent</option>
                            <option value="DCBS" <%: "DCBS".Equals(Model.Relationship) ? "selected='selected'":string.Empty%>>DCBS</option>
                            <option value="DJJ" <%: "DJJ".Equals(Model.Relationship) ? "selected='selected'":string.Empty%>>DJJ</option>
                            <option value="Other" <%: "Other".Equals(Model.Relationship) ? "selected='selected'":string.Empty%>>Other</option>
                        </select>
                    </td>
                    <td colspan="6" align="left">
                        <span id="relationship_hide" class="<%: "Other".Equals(Model.Relationship) ? string.Empty:"hide"%>">Other:
                            <input id="relationship_other" name="RelationshipOther" type="text" class="inputTxt" value="<%=XMLBean.getValue("RelationshipOther")%>" />
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
                            <option value="Voluntary" <%: "Voluntary".Equals(Model.Treatment) ? "selected='selected'":string.Empty%>>Voluntary</option>
                            <option value="Court Ordered" <%: "Court Ordered".Equals(Model.Treatment) ? "selected='selected'":string.Empty%>>Court Ordered</option>
                            <option value="Inpatient" <%: "Inpatient".Equals(Model.Treatment) ? "selected='selected'":string.Empty%>>Inpatient</option>
                            <option value="Outpatient" <%: "Outpatient".Equals(Model.Treatment) ? "selected='selected'":string.Empty%>>Outpatient</option>
                            <option value="Other" <%: "Other".Equals(Model.Treatment) ? "selected='selected'":string.Empty%>>Other</option>
                        </select>
                    </td>
                    <td colspan="6" align="left">
                        <span id="treatment_hide" class="<%: "Other".Equals(Model.Treatment) ? string.Empty:"hide"%>">Other:
                            <input id="treatment_other" name="TreatmentOther" type="text" class="inputTxt" value="<%=XMLBean.getValue("TreatmentOther")%>" />
                        </span>
                    </td>
                </tr>
            </table>
            <br />
            <%Html.RenderPartial("UcPatient1"); %>
            <%Html.RenderPartial("UcPatient2"); %>
            <%Html.RenderPartial("UcPatient3"); %>
            <%Html.RenderPartial("UcPatient4"); %>
            </form>
        </div>
        <!--表单结束-->
    </div>
    <div class="patient-div-left">
        <ul>
            <li><a href="#menu1">I. CURRENT SYMPTOMS</a></li>
            <li><a href="#menu2">II. HISTORY OF PREVIOUS MENTAL HEALTH TREATMENT</a></li>
            <li><a href="#menu3">III. CHILDHOOD DEVELOPMENT</a></li>
            <li><a href="#menu4">IV. HISTORY OF PREVIOUS MEDICAL TREATMENT</a></li>
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