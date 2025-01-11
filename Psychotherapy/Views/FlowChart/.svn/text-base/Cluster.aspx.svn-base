<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<Insourcia.Psychotherapy.Model.Cluster>>" %>

<%@ Import Namespace="Insourcia.Psychotherapy.Model" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Cluster Flowchart
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <% IList<ProcessGuide> processGuideList = ViewData["processGuideList"] as IList<ProcessGuide>;
       IList<Cluster> clusterList = ViewData["clusterList"] as IList<Cluster>;
       Cluster cluster1 = clusterList.Where(c => c.ClusterID == 1).FirstOrDefault();
       Cluster cluster2 = clusterList.Where(c => c.ClusterID == 2).FirstOrDefault();
       Cluster cluster3 = clusterList.Where(c => c.ClusterID == 3).FirstOrDefault();
       Cluster cluster4 = clusterList.Where(c => c.ClusterID == 4).FirstOrDefault();
       Cluster cluster5 = clusterList.Where(c => c.ClusterID == 5).FirstOrDefault();
       ProcessGuide processGuide1 = processGuideList.Where(u => u.ProcessGuideID == 1).FirstOrDefault();
       ProcessGuide processGuide2 = processGuideList.Where(u => u.ProcessGuideID == 2).FirstOrDefault();
       ProcessGuide processGuide3 = processGuideList.Where(u => u.ProcessGuideID == 3).FirstOrDefault();
       ProcessGuide processGuide4 = processGuideList.Where(u => u.ProcessGuideID == 4).FirstOrDefault();
       ProcessGuide processGuide7 = processGuideList.Where(u => u.ProcessGuideID == 7).FirstOrDefault();
       ProcessGuide processGuide8 = processGuideList.Where(u => u.ProcessGuideID == 8).FirstOrDefault();
    %>
    <div id="list">
        <div class="diagram">
            <!-- <div class="mood_line">
    	<div class="mood_title">DEPRESSED,ELEVATED,EXPANSIVE OR IRRITABLE MOOD</div>
     </div>
     <div class="clear"></div>
     <div class="line">
      <div class="garrow"></div>
      </div>-->
            <div class="clear">
            </div>
            <div class="diagram_left lfloat" id="diagram_left">
                <div class="white_box lfloat" id="processGuide_1_white">
                    <div class="wtopbox">
                        <div class="wlt">
                        </div>
                        <div class="wrt">
                        </div>
                    </div>
                    <div class="wcenterbox">
                        <div class="wlline">
                        </div>
                        <div class="wwordbox" id="processGuide_1_white_title">
                            <a id="processGuide_1_whitea" onclick="warn()" href="javascript:void(0);">
                                <%:processGuide1 == null ? "null" : processGuide1.Title%></a><br />
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
                <div class="ydarrow">
                </div>
                <div class="white_box lfloat key3" id="cluster_1_white">
                    <div class="wtopbox">
                        <div class="wlt">
                        </div>
                        <div class="wrt">
                        </div>
                    </div>
                    <div class="wcenterbox">
                        <div class="wlline">
                        </div>
                        <div class="wwordbox" id="cluster_1_white_title">
                            <a id="cluster_1_whitea" href="javascript:void(0)" onclick="shownext('cluster_1_white','processGuide_2_white','/FlowChart/ProcessGuide','yes')">
                                GO TO
                                <%:cluster1 == null ? "null" : cluster1.Title%></a><br />
                            <br />
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
            </div>
            <div class="diagram_right">
                <div class="box_line">
                    <div class="rnsarrow rnsarrow2">
                    </div>
                    <div class="white_box lfloat" id="processGuide_2_white">
                        <div class="wtopbox">
                            <div class="wlt">
                            </div>
                            <div class="wrt">
                            </div>
                        </div>
                        <div class="wcenterbox">
                            <div class="wlline">
                            </div>
                            <div class="wwordbox" id="processGuide_2_white_title">
                                <a id="processGuide_2_whitea" href="javascript:void(0)" onclick="shownext('processGuide_2_white','cluster_1_white','/FlowChart/ProcessGuide','no')">
                                    <%:processGuide2 == null ? "null" : processGuide2.Title%></a>
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
                    <div class="gyrarrow">
                    </div>
                    <div class="white_box lfloat" id="cluster_2_white">
                        <div class="wtopbox">
                            <div class="wlt">
                            </div>
                            <div class="wrt">
                            </div>
                        </div>
                        <div class="wcenterbox">
                            <div class="wlline">
                            </div>
                            <div class="wwordbox" id="cluster_2_white_title">
                                <a id="cluster_2_whitea" href="javaScript: void(0);" onclick="warn()">GO TO
                                    <%:cluster2 == null ? "null" : cluster2.Title%></a><br />
                                <br />
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
                </div>
                <div class="line2 lfloat">
                    <div class="rndsarrow">
                    </div>
                </div>
                <div class="box_line lfloat">
                    <div class="space">
                    </div>
                    <div class="white_box lfloat" id="processGuide_3_white">
                        <div class="wtopbox">
                            <div class="wlt">
                            </div>
                            <div class="wrt">
                            </div>
                        </div>
                        <div class="wcenterbox">
                            <div class="wlline">
                            </div>
                            <div class="wwordbox" id="processGuide_3_white_title">
                                <a id="processGuide_3_whitea" href="javaScript: void(0);" onclick="warn()">
                                    <%:processGuide3 == null ? "null" : processGuide3.Title%></a></div>
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
                    <div class="gyrarrow">
                    </div>
                    <div class="white_box lfloat" id="cluster_3_white">
                        <div class="wtopbox">
                            <div class="wlt">
                            </div>
                            <div class="wrt">
                            </div>
                        </div>
                        <div class="wcenterbox">
                            <div class="wlline">
                            </div>
                            <div class="wwordbox" id="cluster_3_white_title">
                                <a id="cluster_3_whitea" href="javaScript: void(0);" onclick="warn()">GO TO
                                    <%:cluster3 == null ? "null" : cluster3.Title%></a>
                                <br />
                                <br />
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
                </div>
                <!--<div class="clear"></div>-->
                <div class="line2">
                    <!--<div class="space2"></div>-->
                    <div class="rndsarrow">
                    </div>
                </div>
                <div class="box_line lfloat">
                    <!--<div class="space3"></div>-->
                    <div class="space">
                    </div>
                    <div class="white_box lfloat" id="processGuide_4_white">
                        <div class="wtopbox">
                            <div class="wlt">
                            </div>
                            <div class="wrt">
                            </div>
                        </div>
                        <div class="wcenterbox">
                            <div class="wlline">
                            </div>
                            <div class="wwordbox" id="processGuide_4_white_title">
                                <a id="processGuide_4_whitea" href="javaScript: void(0);" onclick="warn()">
                                    <%:processGuide4 == null ? "null" : processGuide4.Title%></a>
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
                    <div class="gyrarrow">
                    </div>
                    <div class="white_box lfloat" id="cluster_4_white">
                        <div class="wtopbox">
                            <div class="wlt">
                            </div>
                            <div class="wrt">
                            </div>
                        </div>
                        <div class="wcenterbox">
                            <div class="wlline">
                            </div>
                            <div class="wwordbox" id="cluster_4_white_title">
                                <a id="cluster_4_whitea" href="javaScript: void(0);" onclick="warn()">GO TO
                                    <%:cluster4 == null ? "null" : cluster4.Title%></a><br />
                                <br />
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
                </div>
                <div class="clear">
                </div>
                <div class="line3">
                    <!--	<div class="space2"></div>-->
                    <div class="rndsarrow">
                    </div>
                </div>
                <!-- <div class="clear"></div>
     <div class="box_line box_line2">
        <div class="space3"></div>
        <div class="space"></div>
        <div class="violet_box violet_box2 violet"><a href="#">Is the client <18 years old?</a></div>
        <div class="gyrarrow"></div>
        <div class="mood_white_box"><a href="#">REEVALUATE AND CHOOSE CLUSTER WITH CLOSEST FIT <span class="violet_font">(NOTE TO JAY: RESTART AT TOP AFTER NOTE)</span></a>       </div>
       </div>-->
                <div class="clear">
                </div>
                <!-- <div class="line3">
     	<div class="space2"></div>
        <div class="gdyarrow gdyarrow2"></div>
     </div>-->
                <div class="box_line box_line4 lfloat">
                    <!-- <div class="space3"></div>-->
                    <div class="space">
                    </div>
                    <div class="white_box lfloat" id="processGuide_7_white">
                        <div class="wtopbox">
                            <div class="wlt">
                            </div>
                            <div class="wrt">
                            </div>
                        </div>
                        <div class="wcenterbox">
                            <div class="wlline">
                            </div>
                            <div class="wwordbox" id="processGuide_7_white_title">
                                <a id="processGuide_7_whitea" href="javaScript: void(0);" onclick="warn()">
                                    <%:processGuide7 == null ? "null" : processGuide7.Title%></a></div>
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
                    <div class="rnsarrow">
                    </div>
                    <div class="white_box lfloat" id="processGuide_8_white">
                        <div class="wtopbox">
                            <div class="wlt">
                            </div>
                            <div class="wrt">
                            </div>
                        </div>
                        <div class="wcenterbox">
                            <div class="wlline">
                            </div>
                            <div class="wwordbox" id="processGuide_8_white_title">
                                <a id="processGuide_8_whitea" href="javaScript: void(0);" onclick="warn()">
                                    <%:processGuide8 == null ? "null" : processGuide8.Title%></a></div>
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
                </div>
                <div class="clear">
                </div>
                <div class="line4">
                    <!--<div class="space2"></div>-->
                    <div class="ydarrow key2">
                    </div>
                </div>
                <div class="clear">
                </div>
                <div class="box_line box_line3">
                    <!--<div class="space3"></div>-->
                    <div class="space">
                    </div>
                    <div class="white_box lfloat" id="cluster_5_white">
                        <div class="wtopbox">
                            <div class="wlt">
                            </div>
                            <div class="wrt">
                            </div>
                        </div>
                        <div class="wcenterbox">
                            <div class="wlline">
                            </div>
                            <div class="wwordbox" id="cluster_5_white_title">
                                <a id="cluster_5_whitea" href="javaScript: void(0);" onclick="warn()">GO TO
                                    <%:cluster5 == null ? "null" : cluster5.Title%></a><br />
                                <br />
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
                    <div class="space">
                    </div>
                    <div class="space3">
                    </div>
                </div>
            </div>
        </div>
        <div id="fullbg" style="position: absolute; display: none;">
        </div>
    </div>
    <input type="hidden" value="<%:ViewData["patientID"]%>" name="patientID" id="patientID" />
    <input type="hidden" id="userId" name="userId" value='<%: Session["ClientID"]  %>' />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="HeadContent" runat="server">
    <link type="text/css" href="/Content/style/TreatmentPlan/clusters_auto.css" rel="stylesheet"
        rev="stylesheet" media="screen" />
    <script type="text/javascript" src="../../Scripts/TreatmentPlan/Back.js"></script>
    <script type="text/javascript" src="../../Scripts/TreatmentPlan/OpenDivWindow.js"></script>
    <script type="text/javascript" src="../../Scripts/TreatmentPlan/ProcessGuide.js"></script>
    <script type="text/javascript" src="../../Scripts/TreatmentPlan/ShowWindow.js"></script>
    <script type="text/javascript" src="../../Scripts/TreatmentPlan/TreatmentPlanUtil.js"></script>
    <script type="text/javascript">
        $(function () {
            popCurrentDiv('processGuide_1_white');

            $('#btStartOver').click(function () {
                document.location.reload();
            });
        });
        function init() {

            var divId = "processGuide_1_white";
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
                    //var FirstNodeWidth = $("#" + divId).width();
                    //var FirstNodeHeight = $("#" + divId).height();
                    //red noId
                    var redNoIdContent = getRedContent(noIdHeight, noIdWidth, $("a[id = " + noId + "a]").parent().html());
                    //green yesId
                    var greenYesIdContent = getGreenContent(yesIdHeight, yesIdWidth, $("a[id = " + yesId + "a]").parent().html());
                    //blue currentId
                    //var blueFirstNodeContent = getElementContent(FirstNodeHeight, FirstNodeWidth, $("a[id = " + divId + "a]").parent().html());
                    //$("#"+divId).html(blueFirstNodeContent);
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
    &nbsp;&nbsp;
    <input type="button" class="btn-style" value="Start Over" id="btStartOver" />
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="phNavigation" runat="server">
    <%:Html.ActionLink("Client list", "list","Client",null,null)%>
    >
    <%:Html.ActionLink(Html.Encode(Session["ClientName"]), "Info", "Client", new { id = ViewData["patientID"] },null)%>
    >
    <%:Html.ActionLink("Treatment Plan List", "TreatmentPlanList", "TreatmentPlan", new { id = 1,patientID=ViewData["patientID"]}, null)%>
    > Cluster
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="phfootBar" runat="server">
</asp:Content>
