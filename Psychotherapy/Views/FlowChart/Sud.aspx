<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<Insourcia.Psychotherapy.Model.Cluster>>" %>

<%@ Import Namespace="Insourcia.Psychotherapy.Model" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Sud Flowchart
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <% IList<ProcessGuide> processGuideList = ViewData["processGuideList"] as IList<ProcessGuide>;
       IList<Cluster> clusterList = ViewData["clusterList"] as IList<Cluster>;
       Cluster cluster10 = clusterList.Where(c => c.ClusterID == 10).First();
       Cluster cluster11 = clusterList.Where(c => c.ClusterID == 11).First();
       Cluster cluster12 = clusterList.Where(c => c.ClusterID == 12).First();
       ProcessGuide processGuide30 = processGuideList.Where(u => u.ProcessGuideID == 30).First();
       ProcessGuide processGuide32 = processGuideList.Where(u => u.ProcessGuideID == 32).First();
       ProcessGuide processGuide31 = processGuideList.Where(u => u.ProcessGuideID == 31).First();
       ProcessGuide processGuide33 = processGuideList.Where(u => u.ProcessGuideID == 33).First();
    %>
    <div id="list" style="height: 500px">
        <div class="diagram">
            <div class="main_sud">
                <div class="main_left lfloat">
                    <div class="white_box lfloat" id="processGuide_30_white">
                        <div class="wtopbox">
                            <div class="wlt">
                            </div>
                            <div class="wrt">
                            </div>
                        </div>
                        <div class="wcenterbox">
                            <div class="wlline">
                            </div>
                            <div class="wwordbox">
                                <br />
                                <a id="processGuide_30_whitea" href="javascript:void(0)" onclick="warn()">
                                    <%:processGuide30 == null ? "null" : processGuide30.Title%></a>
                            </div>
                            <div class="wrline">
                            </div>
                        </div>
                        <div class="wbottombox">
                            <div class="wlb">
                            </div>
                            <div class="wrb">
                            </div>
                        </div>
                    </div>
                    <div class="gydarrow_sud key lfloat">
                    </div>
                    <div class="white_box lfloat" id="processGuide_32_white">
                        <div class="wtopbox">
                            <div class="wlt">
                            </div>
                            <div class="wrt">
                            </div>
                        </div>
                        <div class="wcenterbox">
                            <div class="wlline change3">
                            </div>
                            <div class="wwordbox">
                                <a id="processGuide_32_whitea" href="javascript:void(0)" onclick="shownext('processGuide_32_white','processGuide_31_white','/FlowChart/ProcessGuide','yes')">
                                    <%:processGuide32 == null ? "null" : processGuide32.Title%></a><br />
                                <br />
                            </div>
                            <div class="wrline change3">
                            </div>
                        </div>
                        <div class="wbottombox">
                            <div class="wlb">
                            </div>
                            <div class="wrb">
                            </div>
                        </div>
                    </div>
                    <div class="gyldarrow_sud lfloat key">
                    </div>
                </div>
                <div class="main_right">
                    <div class="arrow_line">
                        <div class="rnrarrow_sud lfloat">
                        </div>
                        <div class="rnrtarrow_sud">
                        </div>
                        <div class="white_box lfloat" id="processGuide_31_white">
                            <div class="wtopbox">
                                <div class="wlt">
                                </div>
                                <div class="wrt">
                                </div>
                            </div>
                            <div class="wcenterbox">
                                <div class="wlline">
                                </div>
                                <div class="wwordbox">
                                    <a id="processGuide_31_whitea" href="javascript:void(0)" onclick="shownext('processGuide_31_white','processGuide_32_white','/FlowChart/ProcessGuide','no')">
                                        <%:processGuide31 == null ? "null" : processGuide31.Title%></a>
                                </div>
                                <div class="wrline">
                                </div>
                            </div>
                            <div class="wbottombox">
                                <div class="wlb">
                                </div>
                                <div class="wrb">
                                </div>
                            </div>
                        </div>
                        <div class="arrow_line2">
                            <div class="rndarrow_sud lfloat">
                            </div>
                            <div class="gydarrow_sud lfloat key">
                            </div>
                        </div>
                        <div class="white_box lfloat key2" id="cluster_10_white">
                            <div class="wtopbox">
                                <div class="wlt">
                                </div>
                                <div class="wrt">
                                </div>
                            </div>
                            <div class="wcenterbox">
                                <div class="wlline change">
                                </div>
                                <div class="wwordbox">
                                    <br />
                                    <a id="cluster_10_whitea" href="javascript:void(0)" onclick="warn()">
                                        <%:cluster10 == null ? "null" : cluster10.Title%></a><br />
                                </div>
                                <div class="wrline change">
                                </div>
                            </div>
                            <div class="wbottombox">
                                <div class="wlb">
                                </div>
                                <div class="wrb">
                                </div>
                            </div>
                        </div>
                        <div class="white_box lfloat key3 wchange" id="cluster_12_white">
                            <div class="wtopbox wchange">
                                <div class="wlt">
                                </div>
                                <div class="wrt">
                                </div>
                            </div>
                            <div class="wcenterbox wchange">
                                <div class="wlline change2">
                                </div>
                                <div class="wwordbox wchange2">
                                    <a id="cluster_12_whitea" href="javascript:void(0)" onclick="warn()">
                                        <%:cluster12 == null ? "null" : cluster12.Title%></a></div>
                                <div class="wrline change2">
                                </div>
                            </div>
                            <div class="wbottombox wchange">
                                <div class="wlb">
                                </div>
                                <div class="wrb">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="clear">
            </div>
            <div class="box_line">
                <div class="white_box lfloat" id="processGuide_33_white">
                    <div class="wtopbox">
                        <div class="wlt">
                        </div>
                        <div class="wrt">
                        </div>
                    </div>
                    <div class="wcenterbox">
                        <div class="wlline change3">
                        </div>
                        <div class="wwordbox">
                            <a id="processGuide_33_whitea" href="javascript:void(0)" onclick="warn()">
                                <%:processGuide33 == null ? "null" : processGuide33.Title%></a></div>
                        <div class="wrline change3">
                        </div>
                    </div>
                    <div class="wbottombox">
                        <div class="wlb">
                        </div>
                        <div class="wrb">
                        </div>
                    </div>
                </div>
                <div class="gcarrow_sud lfloat">
                </div>
                <div class="white_box lfloat key4" id="cluster_11_white">
                    <div class="wtopbox">
                        <div class="wlt">
                        </div>
                        <div class="wrt">
                        </div>
                    </div>
                    <div class="wcenterbox">
                        <div class="wlline change">
                        </div>
                        <div class="wwordbox">
                            <br />
                            <a id="cluster_11_whitea" href="javascript:void(0)" onclick="warn()">
                                <%:cluster11 == null ? "null" : cluster11.Title%></a><br />
                        </div>
                        <div class="wrline change">
                        </div>
                    </div>
                    <div class="wbottombox">
                        <div class="wlb">
                        </div>
                        <div class="wrb">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <form name="myForm" id="myForm" method="post" action="/TreatmentPlan/Create" onkeydown="if(event.keyCode==13){return false;}"
    style="display: none">
    <input type="hidden" id="patientID" name="patientID" value='<%: ViewData["patientID"]  %>' />
    <input type="hidden" id="ClusterID" name="ClusterID" value='<%: ViewData["ClusterID"]  %>' />
    <input type="submit" />
    </form>
    <input type="hidden" id="userId" name="userId" value='<%: Session["ClientID"]  %>' />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="HeadContent" runat="server">
    <link type="text/css" href="/Content/style/TreatmentPlan/sub_auto.css" rel="stylesheet" rev="stylesheet" media="screen" />
    <script type="text/javascript" src="../../Scripts/TreatmentPlan/Back.js"></script>
    <script type="text/javascript" src="../../Scripts/TreatmentPlan/OpenDivWindow.js"></script>
    <script type="text/javascript" src="../../Scripts/TreatmentPlan/ProcessGuide.js"></script>
    <script type="text/javascript" src="../../Scripts/TreatmentPlan/ShowWindow.js"></script>
    <script type="text/javascript" src="../../Scripts/TreatmentPlan/TreatmentPlanUtil.js"></script>
    <script type="text/javascript">
        $(function () {
            popCurrentDiv('processGuide_30_white');
        });
        function init() {

            var divId = "processGuide_30_white";
            var url = "/FlowChart/ProcessGuide";
            var ext = "";
            ext = "divId=" + divId;
            url += "?time=" + new Date().getTime();
            // 发送请求
            $.ajax({
                type: "POST",
                url: url,
                cache: false,
                data: ext,
                timeout: 1000000,

                success: function (result) {
                    var yesId = "";
                    var noId = "";
                    $(result).find("yesId").each(function () {
                        //alert("yesId:"+$(this).text());
                        yesId = $(this).text();
                        yesId = idProcessor(yesId);
                        //alert("yesId==="+yesId);
                    });
                    $(result).find("noId").each(function () {
                        //alert("noId:"+$(this).text());
                        noId = $(this).text();
                        noId = idProcessor(noId);
                        //alert("noId==="+noId);
                    });
                    var yesIdWidth = $("#" + yesId).width();
                    var yesIdHeight = $("#" + yesId).height();
                    var noIdWidth = $("#" + noId).width();
                    var noIdHeight = $("#" + noId).height();
                    //red noId
                    var redNoIdContent = getRedContent(noIdHeight, noIdWidth, $("a[id = " + noId + "a]").parent().html());
                    //green yesId
                    var greenYesIdContent = getGreenContent(yesIdHeight, yesIdWidth, $("a[id = " + yesId + "a]").parent().html());


                    $("#" + yesId).html(greenYesIdContent);
                    $("#" + noId).html(redNoIdContent);
                },
                error: function (xmlHttpRequest, error) {
                    alertMessge("", "The request has timed out due to a network error! Please try again.");
                }
            });
        }
        init();

    </script>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="phToolBar" runat="server">
    <input type="button" class="btn-style" value="Treatment Plan List" onclick="document.location = '/TreatmentPlan/TreatmentPlanList/1?patientID=<%:ViewData["patientID"] %>';" />
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="phNavigation" runat="server">
    <%:Html.ActionLink("Client list", "list","Client",null,null)%>
    >
    <%:Html.ActionLink(Html.Encode(Session["ClientName"]), "Info", "Client", new { id = ViewData["patientID"] },null)%>
    >
    <%:Html.ActionLink("Treatment Plan List", "TreatmentPlanList", "TreatmentPlan", new { id = 1,patientID=ViewData["patientID"]}, null)%>
    >
    <%:Html.ActionLink("Cluster", "Cluster", "FlowChart", new { patientID = ViewData["patientID"] }, null)%>
    > SUD
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="phfootBar" runat="server">
</asp:Content>
