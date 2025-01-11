<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<Insourcia.Psychotherapy.Model.File>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Upload
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<form name="FilesForm" id="FilesForm" method="post" action="/Files/Upload?patientID=<%=Request.QueryString["patientID"] %>" enctype="multipart/form-data" onkeydown="if(event.keyCode==13){return false;}">
       <table style="">
          <tr>
            <th>
                <%: Html.LabelFor(model => model.FileName) %>
            </th>
            <td >
                <%: Html.TextBoxFor(model => model.FileName, new { @class="inputTxt"})%>
            </td>
         </tr>
         <tr>
              <th>
              </th>
              <td>
                   <input type="file" id="FileUpload" name="FileUpload" style="min-height:21px; width:400px;" />
              </td>
         </tr>
         <tr>
            <th valign="top">
                <%: Html.LabelFor(model => model.Description) %>
            </th>
            <td >
                <%: Html.TextAreaFor(model => model.Description, new { @class = "textarea", style = "height:80px;" })%>
            </td>
         </tr>
         <tr>
              <th>
              </th>
              <td>
                   <h2 id="resultMsg" style=" color:Green"></h2>
                     <div class="erro-box-style" id="erroBox" style="display:none">
                            <span class="erro-icon"></span>
                            <b>Error : </b>
                            <span id="erroMsg"></span>
                     </div>
              </td>
         </tr>
       </table>
</form>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="HeadContent" runat="server">
<style type="text/css">
#FilesForm table{width:100%}
#FilesForm table th{ padding:2px; text-align:right}
#FilesForm table td{ padding:2px; }
</style>
<script type="text/javascript">
    $(document).ready(function () {

        $('input[type=submit]').click(function () {
            if ($('#FileName').val() == '') { alert('Please input filename.'); return false; }
            if ($('#FileUpload').val() == '') { alert('Please choose the upload files.'); return false; }

            var options = {
                dataType: 'htm',
                type: 'POST',
                clearForm: true,
                resetForm: true,
                beforeSubmit: function () {
                    $('input[type=submit]').attr('disabled', true);
                },
                success: function (Result) {
                    var obj = eval('(' + Result + ')');
                    if (obj.Success) {
                        $('#resultMsg').html(obj.Msg).css("color", "Green");
                    }
                    else {
                        $('#resultMsg').html(obj.Msg).css("color", "Red");
                    }
                    $('input[type=submit]').attr('disabled', false);
                }
            };
            $('#FilesForm').ajaxSubmit(options);

        });
    });
</script>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="phToolBar" runat="server">
<input type="submit" value="Save" class="btn-style" />
|
<input type="button" value="Cancel" class="btn-style" onclick="document.location='/Client/Files/<%=Request.QueryString["page"] %>?patientID=<%=Request.QueryString["patientID"] %>';"/>
</asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="phNavigation" runat="server">
<%:Html.ActionLink("Client list", "list", "Client")%> > 
<%:Html.ActionLink(Html.Encode(Session["ClientName"]), "Info", "Client", new { id = Request.QueryString["patientID"] }, null)%> > 
<%:Html.ActionLink("Files", "Files", "Client", new { id = Request.QueryString["page"], patientID = Request.QueryString["patientID"] }, null)%> > 
Upload
</asp:Content>

<asp:Content ID="Content6" ContentPlaceHolderID="phfootBar" runat="server">
<input type="submit" value="Save" class="btn-style" />
|
<input type="button" value="Cancel" class="btn-style" onclick="document.location='/Client/Files/<%=Request.QueryString["page"] %>?patientID=<%=Request.QueryString["patientID"] %>';"/>
</asp:Content>

