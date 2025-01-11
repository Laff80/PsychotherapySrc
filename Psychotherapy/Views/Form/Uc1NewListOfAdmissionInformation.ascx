<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<Insourcia.Psychotherapy.Model.FormData>" %>
<%@ Import Namespace="Insourcia.Psychotherapy.Model" %>

<h3 class="title">
       RiverValley and Affilitated companies<br />
       List of Admission information
</h3>

<ul class="beginItem">
      <li><input type="text" name="LAF_ADMISSION_INFORMATION" class="inputTxt-max" /></li>

      <li>By signing below I acknowledge that I have received the following information regarding my services.
      I have had my questions answered by an employee of the agency and agree to abide by the details
      contained in the information I have received</li>

      <li>Name of Client: <input type="text" name="LAF_NAME" class="inputTxt-max" /></li>
      <li>GRID #: <input type="text" name="LAF_GRID" class="inputTxt-max" /></li>
      <li>Signature of Client: <input type="text" name="LAF_SIGNATURE" class="inputTxt-max" /></li>
      <li>Date: <input type="text" name="LAF_DATE_1" class="inputTxt datepicker3" value="<%=Html.Encode(DateTime.Now.ToShortDateString()) %>" /></li>

      <li>Name of Guardian/Responsible Party/Parent
           <ul><li><input type="text" name="LAF_NAME_GUARDIAN" class="inputTxt-max" /></li></ul>
      </li>

      <li>Signature of Guardian/Responsible Party/Parent
           <ul><li><input type="text" name="LAF_SIGNATURE_GUARDIAN" class="inputTxt-max" /></li></ul>
      </li>
      <li>Date: <input type="text" name="LAF_DATE_2" class="inputTxt datepicker3" value="<%=Html.Encode(DateTime.Now.ToShortDateString()) %>" /></li>
      <li>Witness: <input type="text" name="LAF_WITNESS" class="inputTxt-max" /></li>
      <li>Date: <input type="text" name="LAF_DATE_3" class="inputTxt datepicker3" value="<%=Html.Encode(DateTime.Now.ToShortDateString()) %>" /></li>
</ul>
