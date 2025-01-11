<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<Insourcia.Psychotherapy.Model.FormData>" %>
<%@ Import Namespace="Insourcia.Psychotherapy.Model" %>
<h3 class="title">
      RiverValley Behavioral Health<br />Clinical Service Note
</h3>
 <table class="cs">
        <tr>
            <th>
                GRID#:
            </th>
            <td><input type="text" name="CSN_GRID" class = "inputTxt" /></td>
            <th>
                Client Name:
            </th>
            <td><input type="text" name="CSN_CLIENTNAME" class = "inputTxt" /></td>
        </tr>        
        <tr>
            <th>
                Date:
            </th>
            <td colspan="3"><%:Html.TextBox("CSN_DATE", DateTime.Now.ToShortDateString(),new { @class = "inputTxt datepicker3" })%></td>
           
        </tr>
    </table>
    <ul class="beginItem">
       <li>Comments
         <ul>
            <li><textarea  name="CSN_COMMENTS" class="textarea"></textarea></li>
         </ul>
       </li>
    </ul>
   <%-- <table class="cs" cellspacing="1" border="0" cellpadding="0">
           <tr>
               <th>Comments:</th>
                <td>
                                   
                </td>
           </tr>
    </table>--%>

