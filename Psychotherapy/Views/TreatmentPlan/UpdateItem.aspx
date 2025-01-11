<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<Insourcia.Psychotherapy.Model.TreatmentPlan>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Treatment Plan Update
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h3 class="title">
        Choose The Problems To Address Now</h3>        
   <form id="UpdateItemForm" action="/TreatmentPlan/UpdateItem" method="post" onkeydown="if(event.keyCode==13){return false;}">
   <%:Html.Hidden("PatientID", Model.PatientID)%>
   <%:Html.Hidden("TreatmentPlanID", Model.TreatmentPlanID)%>
        <div id="pyDiv" style=" margin-bottom:30px;">
                <b style="color:#FF6600">Problems/Symptoms</b> (select up to 3)<a href="javascript:void(0)"
                    onclick="displaySymptomItem('<%:Model.ClusterID %>')">Edit</a>
                <%Html.RenderPartial("UcTreatmentPlanTree"); %>
        </div>
    </form>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="HeadContent" runat="server">
    <link href="../../Content/style/UcItem.css" rel="stylesheet" type="text/css" />
    <script src="../../Scripts/TreatmentPlan/Item.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            var ObjectiveAnswer = '<%:Model.ObjectiveAnswer%>';

            var subObjectiveAnswer = ObjectiveAnswer.substring(1, ObjectiveAnswer.length - 3).split(",");
            for (var i = 0; i < subObjectiveAnswer.length; i++) {
                var selOBJ = document.getElementsByName(subObjectiveAnswer[i].split(":")[0]);
                if (selOBJ.length > 0) {
                    checkSelectByValue(selOBJ[0], subObjectiveAnswer[i].split(":")[1], true);
                }
            }

            $('input[type=submit]').click(function () {

                if ($('#planItem').has('ul').length == 0) {
                    alert("Please Choose The Problems To Address");
                    return false;
                }
                var options = {
                    dataType: 'json',
                    beforeSubmit: function () {
                        $('input[type=submit]').attr('disabled', true);
                    },
                    success: function (JsonResult) {
                        if (JsonResult.Success) {
                            alert(JsonResult.Message);
                            document.location = '/TreatmentPlan/TreatmentPlanInfo/<%:Model.TreatmentPlanID %>?page=1&patientID=<%=Request.QueryString["patientID"] %>';
                        }
                        else {
                            alert(JsonResult.Message);
                        }
                        $('input[type=submit]').attr('disabled', false);
                    }
                };

                $('#UpdateItemForm').ajaxSubmit(options);
            });
        });
    </script>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="phToolBar" runat="server">
 <input type="submit" class="btn-style" value="Save"  />
|
 <input type="button" class="btn-style" value="Cancel" onclick="document.location='/TreatmentPlan/TreatmentPlanInfo/<%=Model.TreatmentPlanID %>?page=1&patientID=<%=Request.QueryString["patientID"] %>';"  />
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="phNavigation" runat="server">
    <%:Html.ActionLink("Client list", "list","Client")%>
    >
    <%:Html.ActionLink(Html.Encode(Session["ClientName"]), "Info", "Client", new { id = Request.QueryString["patientID"]}, null)%>
    >
    <%:Html.ActionLink("Treatment Plan List", "TreatmentPlanList", "TreatmentPlan", new { id = 1, patientID = Request.QueryString["patientID"] }, null)%>
    >Update Treatment Plan Items
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="phfootBar" runat="server">
 <input type="submit" class="btn-style" value="Save"  />
|
 <input type="button" class="btn-style" value="Cancel" onclick="document.location='/TreatmentPlan/TreatmentPlanInfo/<%=Model.TreatmentPlanID %>?page=1&patientID=<%=Request.QueryString["patientID"] %>';"  />
</asp:Content>