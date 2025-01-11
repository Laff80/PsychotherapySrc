<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<Insourcia.Psychotherapy.Model.Cluster>>" %>

<%@ Import Namespace="Insourcia.Psychotherapy.Model" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Anxiety Disorder
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <% IList<ProcessGuide> processGuideList = ViewData["processGuideList"] as IList<ProcessGuide>;
       IList<Cluster> clusterList = ViewData["clusterList"] as IList<Cluster>;
       Cluster cluster22 = clusterList.Where(c => c.ClusterID == 22).First();
       Cluster cluster23 = clusterList.Where(c => c.ClusterID == 23).First();
       Cluster cluster38 = clusterList.Where(c => c.ClusterID == 38).First();
       Cluster cluster25 = clusterList.Where(c => c.ClusterID == 25).First();
       Cluster cluster26 = clusterList.Where(c => c.ClusterID == 26).First();
       Cluster cluster47 = clusterList.Where(c => c.ClusterID == 47).First();
       Cluster cluster55 = clusterList.Where(c => c.ClusterID == 55).First();
       Cluster cluster56 = clusterList.Where(c => c.ClusterID == 56).First();
       ProcessGuide processGuide55 = processGuideList.Where(u => u.ProcessGuideID == 55).First();
       ProcessGuide processGuide56 = processGuideList.Where(u => u.ProcessGuideID == 56).First();
       ProcessGuide processGuide57 = processGuideList.Where(u => u.ProcessGuideID == 57).First();
       ProcessGuide processGuide58 = processGuideList.Where(u => u.ProcessGuideID == 58).First();
       ProcessGuide processGuide59 = processGuideList.Where(u => u.ProcessGuideID == 59).First();
       ProcessGuide processGuide60 = processGuideList.Where(u => u.ProcessGuideID == 60).First();
       ProcessGuide processGuide61 = processGuideList.Where(u => u.ProcessGuideID == 61).First();
       ProcessGuide processGuide62 = processGuideList.Where(u => u.ProcessGuideID == 62).First();
       ProcessGuide processGuide63 = processGuideList.Where(u => u.ProcessGuideID == 63).First();
       ProcessGuide processGuide64 = processGuideList.Where(u => u.ProcessGuideID == 64).First();
       ProcessGuide processGuide65 = processGuideList.Where(u => u.ProcessGuideID == 65).First();
       ProcessGuide processGuide66 = processGuideList.Where(u => u.ProcessGuideID == 66).First();
       ProcessGuide processGuide67 = processGuideList.Where(u => u.ProcessGuideID == 67).First();
       ProcessGuide processGuide68 = processGuideList.Where(u => u.ProcessGuideID == 68).First();
       ProcessGuide processGuide69 = processGuideList.Where(u => u.ProcessGuideID == 69).First();
       //ProcessGuide processGuide70 = processGuideList.Where(u => u.ProcessGuideID == 70).First();
       ProcessGuide processGuide71 = processGuideList.Where(u => u.ProcessGuideID == 71).First();
       ProcessGuide processGuide72 = processGuideList.Where(u => u.ProcessGuideID == 72).First();
       ProcessGuide processGuide73 = processGuideList.Where(u => u.ProcessGuideID == 73).First();
       //ProcessGuide processGuide74 = processGuideList.Where(u => u.ProcessGuideID == 74).First();
       ProcessGuide processGuide75 = processGuideList.Where(u => u.ProcessGuideID == 75).First();
       //ProcessGuide processGuide76 = processGuideList.Where(u => u.ProcessGuideID == 76).First();
       ProcessGuide processGuide77 = processGuideList.Where(u => u.ProcessGuideID == 77).First();
       ProcessGuide processGuide78 = processGuideList.Where(u => u.ProcessGuideID == 78).First();
       ProcessGuide processGuide79 = processGuideList.Where(u => u.ProcessGuideID == 79).First();
       ProcessGuide processGuide80 = processGuideList.Where(u => u.ProcessGuideID == 80).First();
       ProcessGuide processGuide81 = processGuideList.Where(u => u.ProcessGuideID == 81).First();
       ProcessGuide processGuide82 = processGuideList.Where(u => u.ProcessGuideID == 82).First();
    %>
    <div id="list" style="height: 1400px;">
        <div class="diagram">
            <!--<div class="mood_line">
    				<div class="mood_title">Significant Anxiety, Fear, Increased Arousal or Avoidance</div>
     			</div>
                 <div class="clear"></div>
    				 <div class="line">
    			     <div class="gdrarrow_anxiety"></div>
    		   	     </div>-->
            <div class="long_box lfloat" id="processGuide_55_white">
                <div class="blue_box">
                    <div class="btopbox">
                        <div class="blt">
                        </div>
                        <div class="brt">
                        </div>
                    </div>
                    <div class="bcenterbox">
                        <div class="blline">
                        </div>
                        <div class="bwordbox">
                            <a href="javascript:void(0)" onclick="warn()" id="processGuide_55_whitea">
                                <%:processGuide55 == null ? "null" : processGuide55.Title%></a></div>
                        <div class="brline">
                        </div>
                    </div>
                    <div class="bbottombox">
                        <div class="blb">
                        </div>
                        <div class="brb">
                        </div>
                    </div>
                </div>
            </div>
            <div class="gdarrow2 key4">
            </div>
            <div class="rndcarrow_anxiety">
            </div>
            <div class="clear">
            </div>
            <div class="content_left">
                <div class="gytrlarrow_anxiety">
                </div>
                <div class="box_line" style="z-index: 10">
                    <div class="white_box lfloat" id="processGuide_56_white">
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
                                <a href="javascript:void(0)" id="processGuide_56_whitea" onclick="shownext('processGuide_56_white','processGuide_68_white','/FlowChart/ProcessGuide','no')">
                                    <%:processGuide56 == null ? "null" : processGuide56.Title%></a><br />
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
                    <div class="rnrarrow_anxiety lfloat">
                    </div>
                    <div class="white_box lfloat" id="processGuide_57_white">
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
                                <a href="javascript:void(0)" onclick="warn()" id="processGuide_57_whitea">
                                    <%:processGuide57 == null ? "null" : processGuide57.Title%><br />
                                </a>
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
                <div class="arrow_line lfloat">
                    <div class="arrow_line_right">
                        <div class="gdarrow key3 key">
                        </div>
                        <div class="rdarrow_anxiety lfloat">
                        </div>
                        <div class="white_box lfloat gchange" id="processGuide_58_white">
                            <div class="wtopbox gchange">
                                <div class="wlt">
                                </div>
                                <div class="wrt">
                                </div>
                            </div>
                            <div class="wcenterbox gchange">
                                <div class="wlline">
                                </div>
                                <div class="wwordbox gchange2">
                                    <a href="javascript:void(0)" onclick="warn()" id="processGuide_58_whitea">
                                        <%:processGuide58 == null ? "null" : processGuide58.Title%>
                                    </a>
                                </div>
                                <div class="wrline">
                                </div>
                            </div>
                            <div class="wbottombox gchange">
                                <div class="wlb">
                                </div>
                                <div class="wrb">
                                </div>
                            </div>
                        </div>
                        <!--<div class="orbox orbox2"></div>-->
                        <div class="white_box lfloat gchange" id="processGuide_59_white">
                            <div class="wtopbox gchange">
                                <div class="wlt">
                                </div>
                                <div class="wrt">
                                </div>
                            </div>
                            <div class="wcenterbox gchange">
                                <div class="wlline">
                                </div>
                                <div class="wwordbox gchange2">
                                    <a href="javascript:void(0)" onclick="warn()" id="processGuide_59_whitea">
                                        <%:processGuide59 == null ? "null" : processGuide59.Title%>
                                    </a>
                                </div>
                                <div class="wrline">
                                </div>
                            </div>
                            <div class="wbottombox gchange">
                                <div class="wlb">
                                </div>
                                <div class="wrb">
                                </div>
                            </div>
                        </div>
                        <!--<div class="orbox key"></div>-->
                    </div>
                    <div class="gdlarrow_anxiety">
                    </div>
                </div>
                <div class="clear">
                </div>
                <div class="clear">
                </div>
                <div class="box_line3">
                    <div class="white_box lfloat wchange" id="processGuide_60_white">
                        <div class="wtopbox">
                            <div class="wlt">
                            </div>
                            <div class="wrt">
                            </div>
                        </div>
                        <div class="wcenterbox wchange">
                            <div class="wlline wchange">
                            </div>
                            <div class="wwordbox">
                                <a href="javascript:void(0)" onclick="warn()" id="processGuide_60_whitea">
                                    <%:processGuide60 == null ? "null" : processGuide60.Title%>
                                </a>
                            </div>
                            <div class="wrline wchange">
                            </div>
                        </div>
                        <div class="wbottombox">
                            <div class="wlb">
                            </div>
                            <div class="wrb">
                            </div>
                        </div>
                    </div>
                    <div class="rnrarrow_anxiety lfloat key8">
                    </div>
                    <div class="white_box lfloat wchange" id="processGuide_61_white">
                        <div class="wtopbox">
                            <div class="wlt">
                            </div>
                            <div class="wrt">
                            </div>
                        </div>
                        <div class="wcenterbox wchange">
                            <div class="wlline wchange">
                            </div>
                            <div class="wwordbox">
                                <a href="javascript:void(0)" onclick="warn()" id="processGuide_61_whitea">
                                    <%:processGuide61 == null ? "null" : processGuide61.Title%>
                                </a>
                            </div>
                            <div class="wrline wchange">
                            </div>
                        </div>
                        <div class="wbottombox">
                            <div class="wlb">
                            </div>
                            <div class="wrb">
                            </div>
                        </div>
                    </div>
                    <div class="gryarrow_anxiety">
                    </div>
                </div>
                <div class="clear">
                </div>
                <div class="bpart">
                    <div class="gdylarrow_anxiety">
                    </div>
                    <div class="bottpart">
                        <div class="bottpart_left lfloat">
                            <div class="white_box lfloat key6 wchange" id="processGuide_63_white" style="font-weight: bold;">
                                <div class="wtopbox">
                                    <div class="wlt">
                                    </div>
                                    <div class="wrt">
                                    </div>
                                </div>
                                <div class="wcenterbox wchange">
                                    <div class="wlline wchange">
                                    </div>
                                    <div class="wwordbox">
                                        <a href="javascript:void(0)" onclick="warn()" id="processGuide_63_whitea" style="color: Blue">
                                            <%:processGuide63 == null ? "null" : processGuide63.Title%>
                                        </a>
                                    </div>
                                    <div class="wrline wchange">
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
                        <div class="bottpart_right rfloat">
                            <div class="rdarrow_anxiety rfloat key7">
                            </div>
                            <div class="white_box rfloat" id="processGuide_62_white">
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
                                        <a href="javascript:void(0)" onclick="warn()" id="processGuide_62_whitea">
                                            <%:processGuide62 == null ? "null" : processGuide62.Title%></a>
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
                            <div class="rlnarrow_anxiety lfloat key8">
                            </div>
                            <div class="clear">
                            </div>
                            <div class="gdarrow rfloat key7">
                            </div>
                            <div class="grdstyarrow_anxiety">
                            </div>
                            <div class="clear">
                            </div>
                            <div class="white_box rfloat wchange" id="processGuide_65_white">
                                <div class="wtopbox">
                                    <div class="wlt">
                                    </div>
                                    <div class="wrt">
                                    </div>
                                </div>
                                <div class="wcenterbox wchange">
                                    <div class="wlline wchange">
                                    </div>
                                    <div class="wwordbox">
                                        <a href="javascript:void(0)" onclick="warn()" id="processGuide_65_whitea">
                                            <%:processGuide65 == null ? "null" : processGuide65.Title%></a></div>
                                    <div class="wrline wchange">
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
                        <!--  <div class="orbox orbox3"></div>-->
                    </div>
                    <div class="box_line3">
                        <div class="white_box lfloat wchange4" id="processGuide_64_white">
                            <div class="wtopbox">
                                <div class="wlt">
                                </div>
                                <div class="wrt">
                                </div>
                            </div>
                            <div class="wcenterbox wchange4">
                                <div class="wlline wchange4">
                                </div>
                                <div class="wwordbox">
                                    <a href="javascript:void(0)" onclick="warn()" id="processGuide_64_whitea">
                                        <%:processGuide64 == null ? "null" : processGuide64.Title%>
                                    </a>
                                </div>
                                <div class="wrline wchange4">
                                </div>
                            </div>
                            <div class="wbottombox">
                                <div class="wlb">
                                </div>
                                <div class="wrb">
                                </div>
                            </div>
                        </div>
                        <div class="rnrarrow_anxiety lfloat key8">
                        </div>
                        <div class="white_box lfloat wchange2" id="processGuide_66_white">
                            <div class="wtopbox">
                                <div class="wlt">
                                </div>
                                <div class="wrt">
                                </div>
                            </div>
                            <div class="wcenterbox wchange2">
                                <div class="wlline wchange2">
                                </div>
                                <div class="wwordbox">
                                    <a href="javascript:void(0)" onclick="warn()" id="processGuide_66_whitea">
                                        <%:processGuide66 == null ? "null" : processGuide66.Title%></a></div>
                                <div class="wrline wchange2">
                                </div>
                            </div>
                            <div class="wbottombox">
                                <div class="wlb">
                                </div>
                                <div class="wrb">
                                </div>
                            </div>
                        </div>
                        <div class="grywarrow_anxiety lfloat key8">
                        </div>
                    </div>
                    <div class="lclear">
                    </div>
                    <div class="grdstyarrow_anxiety grdstyarrow_anxiety2">
                    </div>
                    <div class="gydlarrow_anxiety rnsdrarrow_anxiety2">
                    </div>
                    <div class="lclear">
                    </div>
                </div>
                <div class="lclear">
                </div>
                <div class="clear">
                </div>
                <div class="box_line3">
                    <div class="white_box lfloat wchange2" id="processGuide_67_white">
                        <div class="wtopbox">
                            <div class="wlt">
                            </div>
                            <div class="wrt">
                            </div>
                        </div>
                        <div class="wcenterbox wchange2">
                            <div class="wlline wchange2">
                            </div>
                            <div class="wwordbox">
                                <a href="javascript:void(0)" onclick="warn()" id="processGuide_67_whitea">
                                    <%:processGuide67 == null ? "null" : processGuide67.Title%>
                                </a>
                            </div>
                            <div class="wrline wchange2">
                            </div>
                        </div>
                        <div class="wbottombox">
                            <div class="wlb">
                            </div>
                            <div class="wrb">
                            </div>
                        </div>
                    </div>
                    <div class="gytrlarrow_anxiety03 lfloat key11">
                    </div>
                </div>
                <div class="clear">
                </div>
            </div>
            <div class="content_right">
                <div class="box_line4">
                    <div class="white_box lfloat" id="processGuide_68_white">
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
                                <a href="javascript:void(0);" id="processGuide_68_whitea" onclick="shownext('processGuide_68_white','processGuide_56_white','/FlowChart/ProcessGuide','no')">
                                    <%:processGuide68 == null ? "null" : processGuide68.Title%></a>
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
                    <div class="gryarrow_anxiety">
                    </div>
                    <div class="white_box lfloat" id="processGuide_69_white">
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
                                <a href="javascript:void(0);" id="processGuide_69_whitea" onclick="warn()">
                                    <%:processGuide69 == null ? "null" : processGuide69.Title%></a>
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
                    <div class="rnrsarrow_anxiety">
                    </div>
                    <div class="white_box lfloat wchange3" id="cluster_47_white">
                        <div class="wtopbox">
                            <div class="wlt">
                            </div>
                            <div class="wrt">
                            </div>
                        </div>
                        <div class="wcenterbox wchange3">
                            <div class="wlline wchange3">
                            </div>
                            <div class="wwordbox">
                                <a href="javascript:void(0)" onclick="warn()" id="cluster_47_whitea">
                                    <%:cluster47 == null ? "null" : cluster47.Title%></a></div>
                            <div class="wrline wchange3">
                            </div>
                        </div>
                        <div class="wbottombox">
                            <div class="wlb">
                            </div>
                            <div class="wrb">
                            </div>
                        </div>
                    </div>
                    <div class="gytcarrow_anxiety">
                    </div>
                </div>
                <!-- <div class="rtrndlarrow_anxiety"></div>-->
                <div class="clear">
                </div>
                <div class="rdarrow_anxiety key10">
                </div>
                <div class="box_line5 rfloat">
                    <div class="rntarrow_anxiety">
                    </div>
                    <div class="white_box lfloat" id="processGuide_71_white">
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
                                <a href="javascript:void(0)" onclick="warn()" id="processGuide_71_whitea">
                                    <%:processGuide71 == null ? "null" : processGuide71.Title%></a>
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
                    <div class="gsyrarrow_anxiety">
                    </div>
                    <div class="white_box lfloat wchange3" id="cluster_22_white">
                        <div class="wtopbox">
                            <div class="wlt">
                            </div>
                            <div class="wrt">
                            </div>
                        </div>
                        <div class="wcenterbox wchange3">
                            <div class="wlline wchange3">
                            </div>
                            <div class="wwordbox">
                                <a href="javascript:void(0)" onclick="warn()" id="cluster_22_whitea">
                                    <%:cluster22 == null ? "null" : cluster22.Title%></a></div>
                            <div class="wrline wchange3">
                            </div>
                        </div>
                        <div class="wbottombox">
                            <div class="wlb">
                            </div>
                            <div class="wrb">
                            </div>
                        </div>
                    </div>
                    <!--<div class="yelbox box7"></div>-->
                </div>
                <div class="clear">
                </div>
                <!--<div class="rdarrow_anxiety rnsdrarrow_anxiety4"></div>-->
                <div class="box_line4">
                    <div class="white_box lfloat" id="processGuide_72_white">
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
                                <a href="javascript:void(0)" onclick="warn()" id="processGuide_72_whitea">
                                    <%:processGuide72 == null ? "null" : processGuide72.Title%></a>
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
                    <div class="gyrlarrow_anxiety">
                    </div>
                    <div class="white_box lfloat" id="cluster_23_white">
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
                                <a href="javascript:void(0)" onclick="warn()" id="cluster_23_whitea">
                                    <%:cluster23 == null ? "null" : cluster23.Title%></a></div>
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
                <div class="clear">
                </div>
                <div class="rdarrow_anxiety rnsdrarrow_anxiety4">
                </div>
                <div class="box_line4">
                    <div class="white_box lfloat" id="processGuide_73_white">
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
                                <a href="javascript:void(0)" onclick="warn()" id="processGuide_73_whitea">
                                    <%:processGuide73 == null ? "null" : processGuide73.Title%></a>
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
                    <div class="gyrlarrow_anxiety">
                    </div>
                    <div class="white_box lfloat" id="cluster_55_white">
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
                                <a href="javascript:void(0)" onclick="warn()" id="cluster_55_whitea">
                                    <%:cluster55 == null ? "null" : cluster55.Title%></a></div>
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
                <div class="clear">
                </div>
                <div class="rdarrow_anxiety rnsdrarrow_anxiety4">
                </div>
                <div class="box_line4">
                    <div class="white_box lfloat wchange2" id="processGuide_75_white">
                        <div class="wtopbox">
                            <div class="wlt">
                            </div>
                            <div class="wrt">
                            </div>
                        </div>
                        <div class="wcenterbox wchange2">
                            <div class="wlline wchange2">
                            </div>
                            <div class="wwordbox">
                                <a href="javascript:void(0)" onclick="warn()" id="processGuide_75_whitea">
                                    <%:processGuide75 == null ? "null" : processGuide75.Title%></a>
                            </div>
                            <div class="wrline wchange2">
                            </div>
                        </div>
                        <div class="wbottombox">
                            <div class="wlb">
                            </div>
                            <div class="wrb">
                            </div>
                        </div>
                    </div>
                    <div class="gyrlarrow_anxiety">
                    </div>
                    <div class="white_box lfloat" id="cluster_56_white">
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
                                <a href="javascript:void(0)" onclick="warn()" id="cluster_56_whitea">
                                    <%:cluster56 == null ? "null" : cluster56.Title%></a></div>
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
                <div class="clear">
                </div>
                <div class="rdarrow_anxiety rnsdrarrow_anxiety4">
                </div>
                <div class="box_line4">
                    <div class="white_box lfloat wchange" id="processGuide_77_white">
                        <div class="wtopbox">
                            <div class="wlt">
                            </div>
                            <div class="wrt">
                            </div>
                        </div>
                        <div class="wcenterbox">
                            <div class="wlline wchange">
                            </div>
                            <div class="wwordbox">
                                <a href="javascript:void(0)" onclick="warn()" id="processGuide_77_whitea">
                                    <%:processGuide77 == null ? "null" : processGuide77.Title%>
                                </a>
                            </div>
                            <div class="wrline wchange">
                            </div>
                        </div>
                        <div class="wbottombox">
                            <div class="wlb">
                            </div>
                            <div class="wrb">
                            </div>
                        </div>
                    </div>
                    <div class="gryarrow_anxiety">
                    </div>
                    <div class="white_box lfloat wchange" id="processGuide_78_white">
                        <div class="wtopbox">
                            <div class="wlt">
                            </div>
                            <div class="wrt">
                            </div>
                        </div>
                        <div class="wcenterbox wchange">
                            <div class="wlline wchange">
                            </div>
                            <div class="wwordbox wchange">
                                <a href="javascript:void(0)" onclick="warn()" id="processGuide_78_whitea">
                                    <%:processGuide78 == null ? "null" : processGuide78.Title%>
                                </a>
                            </div>
                            <div class="wrline wchange">
                            </div>
                        </div>
                        <div class="wbottombox">
                            <div class="wlb">
                            </div>
                            <div class="wrb">
                            </div>
                        </div>
                    </div>
                    <div class="gryarrow_anxiety">
                    </div>
                    <div class="white_box lfloat gwchange" id="cluster_38_white">
                        <div class="wtopbox">
                            <div class="wlt">
                            </div>
                            <div class="wrt">
                            </div>
                        </div>
                        <div class="wcenterbox gwchange">
                            <div class="wlline wchange">
                            </div>
                            <div class="wwordbox">
                                <a href="javascript:void(0)" onclick="warn()" id="cluster_38_whitea">
                                    <%:cluster38 == null ? "null" : cluster38.Title%></a></div>
                            <div class="wrline gwchange">
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
                <div class="rndlcsarrow_anxiety">
                </div>
                <div class="rntrarrow_anxiety">
                </div>
                <div class="white_box lfloat key8" id="cluster_25_white">
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
                            <a href="javascript:void(0)" onclick="warn()" id="cluster_25_whitea">
                                <%:cluster25 == null ? "null" : cluster25.Title%></a></div>
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
                <!-- <div class="yelbox yelbox2 hline"></div>-->
                <div class="clear">
                </div>
                <div class="box_line4">
                    <div class="white_box lfloat wchange" id="processGuide_79_white">
                        <div class="wtopbox">
                            <div class="wlt">
                            </div>
                            <div class="wrt">
                            </div>
                        </div>
                        <div class="wcenterbox wchange">
                            <div class="wlline wchange">
                            </div>
                            <div class="wwordbox">
                                <a href="javascript:void(0)" onclick="warn()" id="processGuide_79_whitea">
                                    <%:processGuide79 == null ? "null" : processGuide79.Title%>
                                </a>
                            </div>
                            <div class="wrline wchange">
                            </div>
                        </div>
                        <div class="wbottombox">
                            <div class="wlb">
                            </div>
                            <div class="wrb">
                            </div>
                        </div>
                    </div>
                    <div class="gryarrow_anxiety">
                    </div>
                    <div class="white_box lfloat wchange" id="processGuide_80_white">
                        <div class="wtopbox">
                            <div class="wlt">
                            </div>
                            <div class="wrt">
                            </div>
                        </div>
                        <div class="wcenterbox wchange">
                            <div class="wlline wchange">
                            </div>
                            <div class="wwordbox">
                                <a href="javascript:void(0)" onclick="warn()" id="processGuide_80_whitea">
                                    <%:processGuide80 == null ? "null" : processGuide80.Title%>
                                </a>
                            </div>
                            <div class="wrline wchange">
                            </div>
                        </div>
                        <div class="wbottombox">
                            <div class="wlb">
                            </div>
                            <div class="wrb">
                            </div>
                        </div>
                    </div>
                    <div class="gryarrow_anxiety">
                    </div>
                    <div class="white_box lfloat" id="cluster_26_white">
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
                                <a href="javascript:void(0)" onclick="warn()" id="cluster_26_whitea">
                                    <%:cluster26 == null ? "null" : cluster26.Title%></a></div>
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
                    <!--<div class="yelbox box7"></div>-->
                </div>
                <div class="clear">
                </div>
                <div class="rdarrow_anxiety rnsdrarrow_anxiety4">
                </div>
                <div class="clear">
                </div>
                <div class="white_box lfloat wchange" id="processGuide_81_white">
                    <div class="wtopbox">
                        <div class="wlt">
                        </div>
                        <div class="wrt">
                        </div>
                    </div>
                    <div class="wcenterbox wchange">
                        <div class="wlline wchange">
                        </div>
                        <div class="wwordbox">
                            <a href="javascript:void(0)" onclick="warn()" id="processGuide_81_whitea">
                                <%:processGuide81 == null ? "null" : processGuide81.Title%></a>
                        </div>
                        <div class="wrline wchange">
                        </div>
                    </div>
                    <div class="wbottombox">
                        <div class="wlb">
                        </div>
                        <div class="wrb">
                        </div>
                    </div>
                </div>
                <div class="rntrsarrow_anxiety">
                </div>
                <div class="clear">
                </div>
                <div class="gdrarrow_anxiety gdrarrow_anxiety2">
                </div>
                <div class="white_box lfloat rchange" id="processGuide_82_white">
                    <div class="wtopbox rchange">
                        <div class="wlt">
                        </div>
                        <div class="wrt">
                        </div>
                    </div>
                    <div class="wcenterbox rchange">
                        <div class="wlline">
                        </div>
                        <div class="wwordbox rchange2 rwordbox2">
                            <a href="javascript:void(0)" onclick="warn()" id="processGuide_82_whitea">
                                <%=processGuide82 == null ? "null" : processGuide82.Title%></a></div>
                        <div class="wrline">
                        </div>
                    </div>
                    <div class="wbottombox rchange">
                        <div class="wlb">
                        </div>
                        <div class="wrb">
                        </div>
                    </div>
                </div>
                <!-- <div class="bluebox bluebox3"><a href="#">
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<span class="text_line"><b>Other Conditions to Consider</b></span><br />
                     <ul>
  <li> Anxiety Disorder NOS</li>
  <li>Adjustment Disorder with Anxiety</li>
  <li> No Anxiety Disorder</li>

</ul>
</a>
</div> -->
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
    <link type="text/css" href="/Content/style/TreatmentPlan/anxiety_auto.css" rel="stylesheet"
        rev="stylesheet" media="screen" />
    <script type="text/javascript" src="../../Scripts/TreatmentPlan/Back.js"></script>
    <script type="text/javascript" src="../../Scripts/TreatmentPlan/OpenDivWindow.js"></script>
    <script type="text/javascript" src="../../Scripts/TreatmentPlan/ProcessGuide.js"></script>
    <script type="text/javascript" src="../../Scripts/TreatmentPlan/ShowWindow.js"></script>
    <script type="text/javascript" src="../../Scripts/TreatmentPlan/TreatmentPlanUtil.js"></script>
    <script type="text/javascript">
        $(function () {
            popCurrentDiv('processGuide_55_white');
        });
        function init() {

            var divId = "processGuide_55_white";
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
    > ANXIETY DISORDER
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="phfootBar" runat="server">
</asp:Content>
