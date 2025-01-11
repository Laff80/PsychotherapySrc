//选中div比原始div宽size px
var size=0;
//选中div比原始div高size1 px
var size1=0;
//-------------------------------------------------------
// 即将显示的下一个浮动div的内容(根据其对应div的宽高自动调节)
// 
//removeId是用来当选择yesId节点时，移除其兄弟节点noId的值
//currentDivHeight(当前div的高度【含边框】)
//currentDivWidth(当前div的宽度【含边框】)
//currentDivTitleHeight(当前div的子层“文字”层的高度)
//
//蓝色区块
//--------------------------------------------------------
function getElementContent(currentDivHeight,currentDivWidth,aContent){
	currentDivWidth+=size;
	var buttomContentWidth=currentDivWidth-15-22;
	var centerContentHeight=currentDivHeight-13-21+size1;
	var divContent="<div style=\"width:"+currentDivWidth+"px;\">";
							
	var topContentWidth=currentDivWidth-13-22;
		  divContent+="<div style=\"width:"+currentDivWidth+"px; height:13px; clear:left\">";
			  divContent+="<div style=\" height:13px; float:left; background-image:url(../../Content/images/TreatmentPlan/common/blt.jpg); background-repeat:no-repeat; width:13px;\"></div>";
			  divContent+="<div style=\"float:left; height:13px; width:"+topContentWidth+"px; background-image:url(../../Content/images/TreatmentPlan/common/btline.jpg); background-repeat:repeat-x;\"></div>";
			  divContent+="<div style=\" float:left; height:13px; width:22px; background-image:url(../../Content/images/TreatmentPlan/common/brt.jpg); background-repeat:no-repeat;\"></div>";
		  divContent+="</div>";
		  
		  
		  divContent+="<div style=\"width:"+currentDivWidth+"px; clear:left;\">";
			  divContent+="<div style=\" background-image:url(../../Content/images/TreatmentPlan/common/blline.jpg); background-repeat:repeat-y; width:13px; float:left; height:"+centerContentHeight+"px;\"></div>";
			  divContent += "<div style=\"list-style-type:disc;list-style-position :inside;text-align:left;float:left; width:" + topContentWidth + "px; height:" + centerContentHeight + "px; background-color:#83c7d3\">" + aContent + "</div>";
			  divContent+="<div style=\"float:left; background-image:url(../../Content/images/TreatmentPlan/common/brline.jpg); background-repeat:repeat-y; width:22px; height:"+centerContentHeight+"px;\"></div>";
		  divContent+="</div>";
		  
		  
		  divContent+="<div style=\"width:"+currentDivWidth+"px; height:21px; clear:left\">";
			  divContent+="<div style=\"float:left; width:15px; background-image:url(../../Content/images/TreatmentPlan/common/blb.jpg); background-repeat:no-repeat; height:21px;\"></div>";
			  divContent+="<div style=\"float:left; width:"+buttomContentWidth+"px; background-image:url(../../Content/images/TreatmentPlan/common/bbline.jpg); background-repeat:repeat-x; height:21px;\"></div>";
			  divContent+="<div style=\"float:left; width:22px; background-image:url(../../Content/images/TreatmentPlan/common/brb.jpg); background-repeat:no-repeat; height:21px;\"></div>";
		  divContent+="</div>";
	  divContent+="</div>";
	  //alert(divContent);
	  return divContent;
}




//-------------------------------------------------------
// 后退的灰色div块(根据其对应div的宽高自动调节)
// 
//currentDivHeight(当前div的高度【含边框】)
//currentDivWidth(当前div的宽度【含边框】))
//
//--------------------------------------------------------

function getWhiteContent(currentDivHeight,currentDivWidth,textContent){
	
	var topContentWidth=currentDivWidth-13-23;
	var buttomContentWidth=currentDivWidth-13-23;
	var centerContentHeight = currentDivHeight - 13 - 21;
	//alert("topContentWidth:" + topContentWidth + "&buttomContentWidth:" + buttomContentWidth + "&centerContentHeight:" + centerContentHeight);
	var divContent="<div style=\"width:"+currentDivWidth+"px;\">";
							
		  divContent+="<div style=\"width:"+currentDivWidth+"px; height:13px; clear:left\">";
			  divContent+="<div style=\" height:13px; float:left; background-image:url(../../Content/images/TreatmentPlan/common/wlt.jpg); background-repeat:no-repeat; width:13px;\"></div>";
			  divContent+="<div style=\"float:left; height:13px; width:"+topContentWidth+"px; background-image:url(../../Content/images/TreatmentPlan/common/wtline.jpg); background-repeat:repeat-x;\"></div>";
			  divContent+="<div style=\" float:left; height:13px; width:23px; background-image:url(../../Content/images/TreatmentPlan/common/wrt.jpg); background-repeat:no-repeat;\"></div>";
		  divContent+="</div>";
		  
		  
		  divContent+="<div style=\"width:"+currentDivWidth+"px; clear:left;\">";
			  divContent+="<div style=\" background-image:url(../../Content/images/TreatmentPlan/common/wlline.jpg); background-repeat:repeat-y; width:13px; float:left; height:"+centerContentHeight+"px;\"></div>";
			  divContent += "<div style=\"list-style-type:disc;list-style-position :inside;text-align:left;float:left; width:" + topContentWidth + "px; height:" + centerContentHeight + "px; background-color:#ddebfd\">" + textContent + "</div>";
			  divContent+="<div style=\"float:left; background-image:url(../../Content/images/TreatmentPlan/common/wrline.jpg); background-repeat:repeat-y; width:23px; height:"+centerContentHeight+"px;\"></div>";
		  divContent+="</div>";
		  
		  
		  divContent+="<div style=\"width:"+currentDivWidth+"px; height:21px; clear:left\">";
			  divContent+="<div style=\"float:left; width:13px; background-image:url(../../Content/images/TreatmentPlan/common/wlb.jpg); background-repeat:no-repeat; height:21px;\"></div>";
			  divContent+="<div style=\"float:left; width:"+buttomContentWidth+"px; background-image:url(../../Content/images/TreatmentPlan/common/wbline.jpg); background-repeat:repeat-x; height:21px;\"></div>";
			  divContent+="<div style=\"float:left; width:23px; background-image:url(../../Content/images/TreatmentPlan/common/wrb.jpg); background-repeat:no-repeat; height:21px;\"></div>";
			  divContent += "</div>";

			  divContent += "</div>";
	  //alert(divContent);
	  return divContent;
}
//-------------------------------------------------------
// 后退的红色div块(根据其对应div的宽高自动调节)
// 
//currentDivHeight(当前div的高度【含边框】)
//currentDivWidth(当前div的宽度【含边框】))
//
//--------------------------------------------------------

function getRedContent(currentDivHeight,currentDivWidth,textContent){
	
	var topContentWidth=currentDivWidth-19-24;
	var centerContentWidth=currentDivWidth-13-23;
	var buttomContentWidth=currentDivWidth-17-26;
	var centerContentHeight=currentDivHeight-13-21;
	var divContent="<div style=\"width:"+currentDivWidth+"px;\">";
							
		  divContent+="<div style=\"width:"+currentDivWidth+"px; height:13px; clear:left\">";
			  divContent+="<div style=\" height:13px; float:left; background-image:url(../../Content/images/TreatmentPlan/common/rlt.jpg); background-repeat:no-repeat; width:19px;\"></div>";
			  divContent+="<div style=\"float:left; height:13px; width:"+topContentWidth+"px; background-image:url(../../Content/images/TreatmentPlan/common/rtline.jpg); background-repeat:repeat-x;\"></div>";
			  divContent+="<div style=\" float:left; height:13px; width:24px; background-image:url(../../Content/images/TreatmentPlan/common/rrt.jpg); background-repeat:no-repeat;\"></div>";
		  divContent+="</div>";
		  
		  
		  divContent+="<div style=\"width:"+currentDivWidth+"px; clear:left;\">";
			  divContent+="<div style=\" background-image:url(../../Content/images/TreatmentPlan/common/rlline.jpg); background-repeat:repeat-y; width:13px; float:left; height:"+centerContentHeight+"px;\"></div>";
			  divContent += "<div style=\"list-style-type:disc;list-style-position :inside;text-align:left;float:left; width:" + centerContentWidth + "px; height:" + centerContentHeight + "px; background-color:#ff8181\">" + textContent + "</div>";
			  divContent+="<div style=\"float:left; background-image:url(../../Content/images/TreatmentPlan/common/rrline.jpg); background-repeat:repeat-y; width:23px; height:"+centerContentHeight+"px;\"></div>";
		  divContent+="</div>";
		  
		  
		  divContent+="<div style=\"width:"+currentDivWidth+"px; height:21px; clear:left\">";
			  divContent+="<div style=\"float:left; width:17px; background-image:url(../../Content/images/TreatmentPlan/common/rlb.jpg); background-repeat:no-repeat; height:21px;\"></div>";
			  divContent+="<div style=\"float:left; width:"+buttomContentWidth+"px; background-image:url(../../Content/images/TreatmentPlan/common/rbline.jpg); background-repeat:repeat-x; height:21px;\"></div>";
			  divContent+="<div style=\"float:left; width:26px; background-image:url(../../Content/images/TreatmentPlan/common/rrb2.jpg); background-repeat:no-repeat; height:21px;\"></div>";
		  divContent+="</div>";
	  divContent+="</div>";
	  //alert(divContent);
	  return divContent;
}

//-------------------------------------------------------
// 后退的绿色div块(根据其对应div的宽高自动调节)
// 
//currentDivHeight(当前div的高度【含边框】)
//currentDivWidth(当前div的宽度【含边框】))
//
//--------------------------------------------------------

function getGreenContent(currentDivHeight,currentDivWidth,textContent){
	
	var topContentWidth=currentDivWidth-18-24;
	var centerContentWidth=currentDivWidth-13-23;
	var buttomContentWidth=currentDivWidth-16-24;
	var centerContentHeight=currentDivHeight-13-21;
	var divContent="<div style=\"width:"+currentDivWidth+"px;\">";
							
		  divContent+="<div style=\"width:"+currentDivWidth+"px; height:13px; clear:left\">";
			  divContent+="<div style=\" height:13px; float:left; background-image:url(../../Content/images/TreatmentPlan/common/glt.jpg); background-repeat:no-repeat; width:18px;\"></div>";
			  divContent+="<div style=\"float:left; height:13px; width:"+topContentWidth+"px; background-image:url(../../Content/images/TreatmentPlan/common/gtline.jpg); background-repeat:repeat-x;\"></div>";
			  divContent+="<div style=\" float:left; height:13px; width:24px; background-image:url(../../Content/images/TreatmentPlan/common/grt.jpg); background-repeat:no-repeat;\"></div>";
		  divContent+="</div>";
		  
		  
		  divContent+="<div style=\"width:"+currentDivWidth+"px; clear:left;\">";
			  divContent+="<div style=\" background-image:url(../../Content/images/TreatmentPlan/common/glline.jpg); background-repeat:repeat-y; width:13px; float:left; height:"+centerContentHeight+"px;\"></div>";
			  divContent += "<div style=\"list-style-type:disc;list-style-position :inside;text-align:left;float:left; width:" + centerContentWidth + "px; height:" + centerContentHeight + "px; background-color:#97d752\">" + textContent + "</div>";
			  divContent+="<div style=\"float:left; background-image:url(../../Content/images/TreatmentPlan/common/grline.jpg); background-repeat:repeat-y; width:23px; height:"+centerContentHeight+"px;\"></div>";
		  divContent+="</div>";
		  
		  
		  divContent+="<div style=\"width:"+currentDivWidth+"px; height:21px; clear:left\">";
			  divContent+="<div style=\"float:left; width:16px; background-image:url(../../Content/images/TreatmentPlan/common/glb.jpg); background-repeat:no-repeat; height:21px;\"></div>";
			  divContent+="<div style=\"float:left; width:"+buttomContentWidth+"px; background-image:url(../../Content/images/TreatmentPlan/common/gbline.jpg); background-repeat:repeat-x; height:21px;\"></div>";
			  divContent+="<div style=\"float:left; width:24px; background-image:url(../../Content/images/TreatmentPlan/common/grb.jpg); background-repeat:no-repeat; height:21px;\"></div>";
		  divContent+="</div>";
	  divContent+="</div>";
	  //alert(divContent);
	  return divContent;
}
//------------------------------------------
// 第一个div入数组
// 用数组来记录用户操作的步骤
//(点击yes/no时将id放入数组，back时从数组中移除)
//
//------------------------------------------
var currentDivRealWidth;
var currentDivRealHeight;

function popCurrentDiv(div_id){
		
		addCurrentIdArray(div_id);
		var div_obj = $("#"+div_id);  
		
        var popupHeight = div_obj.height();       
        var popupWidth = div_obj.width();    
		currentDivRealWidth=popupWidth;
		currentDivRealHeight=popupHeight;
		var popContent=$("#"+div_id+"a").html();
		popContent="<a  href=\"javaScript: void(0);\" id=\""+div_id+"a\">"+popContent+"</a>";
		
		//alert($("#"+div_id).width()+size);
		 $("#"+div_id).css({width:$("#"+div_id).width()+size});
		 //$("#diagram_left").css({width:$("#"+div_id).width()+size});
         //替换成Blue颜色(blue代表当前status)
		var currentContent=getElementContent(currentDivRealHeight,currentDivRealWidth,popContent);
		$("#"+div_id).html(currentContent);
		
		
		//alert("this div height is "+ popupHeight);
		//alert("this div width is "+popupWidth);
        //var firstNodeLeft=div_obj.offset().left;//弹出层的左边距
       // var firstNodeTop=div_obj.offset().top;//弹出层的上边距
       // $("#selectedDiv").css({left:firstNodeLeft,top:firstNodeTop, display: "block"});
		//$("#selectedDiv").css({height:"196px",width:"341px"});
		//$("#selectedDiv").css("background-image","url(../../Content/images/TreatmentPlan/graphics_bcircle_large3.png)");
		//$("#selectedDiv").css("color","#3300CC");
		//$("#selectedDiv").css("font-size",18);
		
		
	}
//---------------------------------------------------------
// 显示下一个div
// div_id 是当前节点ID
//removeId是用来当选择yesId节点时，移除其兄弟节点noId的值
//----------------------------------------------------------

	function shownext(div_id, removeId, url, type) {
	    var patientID = $("#patientID").val();
        var userId = $("#userId").val();

        //view下一个div块之前，先获取他的前一个节点的宽和高，为后退准备数据
       
				var previousDivId=currentIdArray[currentIdArray.length-1];
				//alert("previousDivId:"+previousDivId);
				var previousWidth=$("#"+previousDivId).width();
				var previousHeight=$("#"+previousDivId).height();
				currentDivRealWidth=previousWidth;
					currentDivRealHeight=previousHeight;
				 $("#"+previousDivId).css({width:$("#"+previousDivId).width()-size,height:$("#"+previousDivId).height()-size1});
				 addCurrentIdArray(div_id);
				
				//alert(currentIdArray.join(";"));
				/******************移除兄弟节点 start **********************************/
				//removeId Content
				//alert("before:" + $("#" + removeId).height());
				var removeIdWidth = $("#" + removeId).width();
				var removeIdHeight = $("#" + removeId).height();
				$("#" + removeId + "a").attr("onClick", "javaScript: warn();");
				var removeIdAContent = $("a[id = " + removeId + "a]").parent().html()
				var whiteRemoveIdContent = getWhiteContent(removeIdHeight, removeIdWidth, removeIdAContent);
				//$("#" + removeId).html("");
				$("#" + removeId).html(whiteRemoveIdContent);
				//alert("after:" + $("#" + removeId).height());
				/******************移除兄弟节点 end **********************************/


				var div_obj = $("#"+div_id); 
				var div_objtitle= $("#"+div_id+"title"); 
				//a标签对应的文字内容
				var currentAContent=$("#"+div_id+"a").html();
				currentAContent="<a  href=\"javaScript: void(0);\" id=\""+div_id+"a\">"+currentAContent+"</a>";
				//alert(div_id+" content is "+currentAContent);
				//alert("previousDivId------"+previousDivId);
				var previousDivIdAContent=$("#"+previousDivId+"a").html();
				previousDivIdAContent="<a  href=\"javaScript: void(0);\" id=\""+previousDivId+"a\">"+previousDivIdAContent+"</a>";
				//alert("previousDivIdAContent-----"+previousDivIdAContent);
				//在获取下个div的width和height之前获取当前div的content
				//white
				
				var whiteContent=getWhiteContent(currentDivRealHeight,currentDivRealWidth,previousDivIdAContent);
				
				//red
				var redContent=getRedContent(currentDivRealHeight,currentDivRealWidth,previousDivIdAContent);
				//green
				var greenContent=getGreenContent(currentDivRealHeight,currentDivRealWidth,previousDivIdAContent);
				
				 var popupHeight = div_obj.height();       
        		var popupWidth = div_obj.width();    
				
				currentDivRealWidth=popupWidth;
				currentDivRealHeight=popupHeight;
				
				
				
				//alert(div_id);
				//alert("left:"+popupLeft);
				//alert("top:"+popupTop);
				var objectId=$.trim($("#objectId").val());
				var ownerId=$.trim($("#ownerId").val());
				
				var objectName=$.trim($("#objectName").val());
				var patient_object_name=$.trim($("#patient_object_name").val());
				var ext = 'type=' + type +'&divId=' + div_id ;
				ext+='&objectId='+objectId;
				ext+='&ownerId='+ownerId;
				ext+='&patient_object_name='+patient_object_name;
				ext+='&objectName='+objectName;
				
				url += "?time=" + new Date().getTime();
				//alert(url);
				//alert(ext);



				$.ajax({
				    type: "POST",
				    url: url,
				    cache: false,
				    data: ext,
				    timeout: 10000,
				    success: function (result) {
				        var yesId = "";
				        var noId = "";
				        var currentId = "";
				        var type = "";
				        var level = "";
				        var guideLineAction = "";
				        var continueAction = "";
				        var glanceSummaryAction = "";
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

				        $(result).find("currentId").each(function () {
				            //alert("currentId:"+$(this).text());
				            currentId = $(this).text();
				            //alert("currentAContent is =========== "+currentAContent);
				            var content = getElementContent(popupHeight, popupWidth, currentAContent);

				            if (previousDivId.indexOf("red") != -1) {
				                //alert("red");
				                //alert(previousDivId.substring(0,previousDivId.length-4));
				                $("#" + previousDivId).html(redContent);
				            } else if (previousDivId.indexOf("white") != -1) {
				                //alert("white");
				                //alert(previousDivId.substring(0,previousDivId.length-6));
				                //alert(whiteContent);
				                $("#" + previousDivId).html(whiteContent);
				            } else if (previousDivId.indexOf("green") != -1) {
				                //alert("green");
				                //alert(previousDivId.substring(0,previousDivId.length-6));
				                $("#" + previousDivId).html(greenContent);
				            }
				            //$("#floatingDiv").css({left:popupLeft-30,top:popupTop-100,height:popupHeight,width:popupWidth});

				            $("#" + currentId).css({ width: $("#" + currentId).width() + size });
				            $("#" + currentId).html(content);
				            $("#" + currentId + "a").attr("onClick", "javaScript: warn(); ");
				            //alert(currentId);
				            //$("#" + currentId + "a").css({ "color": "green" });
				            //$("#floatingDiv").css({display: "block"});

				        });
				        if (yesId != "" || noId != "") {
				            var yesIdWidth = $("#" + yesId).width();
				            var yesIdHeight = $("#" + yesId).height();
				            var noIdWidth = $("#" + noId).width();
				            var noIdHeight = $("#" + noId).height();

				            //var removeId=noId;	
				            if (yesId != "processGuide_53_white") {
				                $("#" + yesId + "a").attr("onClick", "shownext('" + yesId + "','" + noId + "','/FlowChart/ProcessGuide','yes');");
				            }
				            else {
				                $("#" + yesId + "a").attr("onClick", "actionLink('/FlowChart/Cluster?patientID=" + patientID + "')");
				            }
				            //removeId=yesId;


				            switch (noId) {
				                case "processGuide_24_white":
				                case "processGuide_63_white":
				                    $("#" + noId + "a").attr("onClick", "actionLink('/FlowChart/Cluster?patientID=" + patientID + "')");
				                    break;
				                default:
				                    $("#" + noId + "a").attr("onClick", "shownext('" + noId + "','" + yesId + "','/FlowChart/ProcessGuide','no');");
				                    break;
				            }


				            //red noId
				            var redNoIdContent = getRedContent(noIdHeight, noIdWidth, $("a[id = " + noId + "a]").parent().html());
				            //green yesId
				            var greenYesIdContent = getGreenContent(yesIdHeight, yesIdWidth, $("a[id = " + yesId + "a]").parent().html());

				            //$("#" + yesId + "a").css({ "color": "green" });
				            // $("#" + noId + "a").css({ "color": "red" });
				            $("#" + yesId).html(greenYesIdContent);
				            $("#" + noId).html(redNoIdContent);
				        }

				        //alert("length:"+currentIdArray.length);
				        if (currentIdArray.length > 2) {
				            for (var i = 0; i < currentIdArray.length - 2; i++) {
				                $("#" + currentIdArray[i] + "a").attr("onClick", "javaScript: warn(); ");
				            }
				        }
				        //alert("000000");
				        if (currentIdArray.length > 1) {
				            //alert(currentIdArray[currentIdArray.length - 2]);
				            //$("#" + currentIdArray[currentIdArray.length - 2] + "a").attr("onClick", "javaScript: warn();");
				            //alert("haha");
				            $("#" + currentIdArray[currentIdArray.length - 2] + "a").attr("onClick", "back('" + currentIdArray[currentIdArray.length - 2] + "','" + currentIdArray[currentIdArray.length - 1] + "','/FlowChart/ProcessGuide');");
				        }
				        var shadeheight = $("#list").height();
				        var shadewidth = $("#list").width();
				        //alert($("#"+currentId+"a").html());
				        var shadeleft = $("#list").offset().left;
				        //把上面的decrible和position留出来,不被遮罩
				        var shadetop = $("#list").offset().top;

				        $(result).find("type").each(function () {
				            //alert("noId:"+$(this).text());
				            type = $(this).text();
				            //alert(type);
				            var backCurrentId = "";
				            $(result).find("currentId").each(function () {
				                backCurrentId = $(this).text();
				            });
				            if (type == "cluster") {
				                $(result).find("level").each(function () {
				                    level = $(this).text();
				                    //alert(level);
				                    if (level == "father") {


				                        var continueAction = "";
				                        $(result).find("continueAction").each(function () {
				                            continueAction = $(this).text();
				                        })

				                        getClusterDialog(continueAction, patientID, backCurrentId);
				                    } else {
				                        var continueAction = "";
				                        var guideLineAction = "";
				                        var glanceSummaryAction = "";
				                        var clusterId = "";

				                        $(result).find("continueAction").each(function () {
				                            continueAction = $(this).text();
				                        });
				                        $(result).find("guideLineAction").each(function () {
				                            guideLineAction = $(this).text();
				                        });
				                        $(result).find("glanceSummaryAction").each(function () {
				                            glanceSummaryAction = $(this).text();
				                        });
				                        $(result).find("parentId").each(function () {
				                            clusterId = $(this).text();
				                        });
				                        getContinueBackDialog(patientID, userId, backCurrentId);
				                    }
				                });
				                //alert("再次向服务器请求，霸屏");
				            }
				            else {
				                //特殊处理
				                //alert("this is processGuide");
				                //function savecaseDiagnosis(objectId,clusterId,ownerId,patient_object_name,objectName,action){
				                //redirectAction('caseDiagnosisListByOwnerId.action','objectId=11&ownerId=3&patient_object_name=232235&objectName=Jim','')

				                //alert(currentId);
				                /*前一版本
				                if (backCurrentId == "processGuide_8_red" || backCurrentId == "processGuide_21_red" || backCurrentId == "processGuide_58_red" || backCurrentId == "processGuide_82_red" || backCurrentId == "processGuide_83_red") {
				                var buttonContent = getOkButtonContent(objectId, ownerId, patient_object_name, objectName);
				                //089869885292
				                showWindow('Message', $("#" + backCurrentId + "a").html(), 350, 200, true, shadeleft, shadetop, shadewidth, shadeheight, buttonContent);
				                } else if (backCurrentId == "processGuide_52_green" || backCurrentId == "processGuide_53_green" || backCurrentId == "processGuide_54_green" || backCurrentId == "processGuide_50_green" || backCurrentId == "processGuide_51_green") {//thought

				                var buttonContent = getOkButtonContent(objectId, ownerId, patient_object_name, objectName);

				                showWindow('Message', $("#" + backCurrentId + "a").html(), 350, 200, true, shadeleft, shadetop, shadewidth, shadeheight, buttonContent);
				                } else if (backCurrentId == "processGuide_24_green" || backCurrentId == "processGuide_25_green" || backCurrentId == "processGuide_26_green") {//mood
				                var buttonContent = getOkButtonContent(objectId, ownerId, patient_object_name, objectName);

				                showWindow('Message', $("#" + backCurrentId + "a").html(), 350, 200, true, shadeleft, shadetop, shadewidth, shadeheight, buttonContent);
				                } else if (backCurrentId == "processGuide_63_green" || backCurrentId == "processGuide_65_green" || backCurrentId == "processGuide_70_green" || backCurrentId == "processGuide_74_green" || backCurrentId == "processGuide_76_green") {
				                var buttonContent = getOkButtonContent(objectId, ownerId, patient_object_name, objectName);

				                showWindow('Message', $("#" + backCurrentId + "a").html(), 350, 200, true, shadeleft, shadetop, shadewidth, shadeheight, buttonContent);
				                } else if (backCurrentId == "processGuide_98_green" || backCurrentId == "processGuide_99_green" || backCurrentId == "processGuide_109_green" || backCurrentId == "processGuide_105_green" || backCurrentId == "processGuide_106_green" || backCurrentId == "processGuide_101_green" || backCurrentId == "processGuide_95_green") {//impluse
				                var buttonContent = getOkButtonContent(objectId, ownerId, patient_object_name, objectName);

				                showWindow('Message', $("#" + backCurrentId + "a").html(), 350, 200, true, shadeleft, shadetop, shadewidth, shadeheight, buttonContent);
				                }*/

				                if (backCurrentId == "processGuide_8_white" || backCurrentId == "processGuide_21_white" || backCurrentId == "processGuide_58_white" || backCurrentId == "processGuide_82_white" || backCurrentId == "processGuide_83_white") {
				                    getOkBackDialog(patientID, userId, backCurrentId);
				                } else if (backCurrentId == "processGuide_52_white" || backCurrentId == "processGuide_53_white" || backCurrentId == "processGuide_54_white" || backCurrentId == "processGuide_50_white" || backCurrentId == "processGuide_51_white") {//thought
				                    getOkBackDialog(patientID, userId, backCurrentId);
				                } else if (backCurrentId == "processGuide_24_white" || backCurrentId == "processGuide_25_white" || backCurrentId == "processGuide_26_white") {//mood
				                    getOkBackDialog(patientID, userId, backCurrentId);
				                } else if (backCurrentId == "processGuide_63_white" || backCurrentId == "processGuide_65_white" || backCurrentId == "processGuide_70_white" || backCurrentId == "processGuide_74_white" || backCurrentId == "processGuide_76_white") {
				                    getOkBackDialog(patientID, userId, backCurrentId);
				                } else if (backCurrentId == "processGuide_98_white" || backCurrentId == "processGuide_99_white" || backCurrentId == "processGuide_109_white" || backCurrentId == "processGuide_105_white" || backCurrentId == "processGuide_106_white" || backCurrentId == "processGuide_101_white" || backCurrentId == "processGuide_95_white") {//impluse
				                    getOkBackDialog(patientID, userId, backCurrentId);
				                }

				            }
				        });

				        //alert("actionSequence:"+$("#actionSequence").val());
				    },
				    error: function (xmlHttpRequest, error) {
				        alertMessge("", "The request has timed out due to a network error! Please try again.");
				    }
				});
}
//back('processGuide_3','cluster_3','/FlowChart/ProcessGuide');
//cluster_3是正在显示的div块，processGuide_3是要回退的div块
//back2('processGuide_2_white','cluster_2_white','/FlowChart/ProcessGuide')
function back(div_id,removeId,url){
				//$("#"+currentId).css({"background-color":"#5BACBD","color":"#F00"});
				var previousDivId=currentIdArray[currentIdArray.length-1];
				//alert("previousDivId:"+previousDivId);
				var previousWidth=$("#"+previousDivId).width();
				var previousHeight=$("#"+previousDivId).height();
				currentDivRealWidth=previousWidth;
					currentDivRealHeight=previousHeight;
				$("#"+removeId).css({width:$("#"+removeId).width()-size,height:$("#"+removeId).height()});
				var removeAContent=$("#"+removeId+"a").html();
				var removeDivRealHeight=$("#"+removeId).height();
				var removeDivRealWidth=$("#"+removeId).width();
				
				removeAContent="<a  href=\"javaScript: void(0);\" id=\""+removeId+"a\">"+removeAContent+"</a>";
				//white
				var whiteContent=getWhiteContent(removeDivRealHeight,removeDivRealWidth,removeAContent);
				//red
				var redContent=getRedContent(removeDivRealHeight,removeDivRealWidth,removeAContent);
				//green
				var greenContent=getGreenContent(removeDivRealHeight,removeDivRealWidth,removeAContent);
				if(removeId.indexOf("red")!=-1){
						//alert("red");
						//alert(previousDivId.substring(0,previousDivId.length-4));
						$("#"+removeId).html(redContent);
				}else if(removeId.indexOf("white")!=-1){
						//alert("white");
						//alert(previousDivId.substring(0,previousDivId.length-6));
								
						$("#"+removeId).html(whiteContent);
				}else if(removeId.indexOf("green")!=-1){
						//alert("green");
						//alert(previousDivId.substring(0,previousDivId.length-6));
						$("#"+removeId).html(greenContent);
				}

		$("#" + div_id).css({ width: $("#" + div_id).width() + size, height: $("#" + div_id).height() + size1 });
		$("#" + div_id + "a").css({ "color": "#000" });
				var currentAContent=$("#"+div_id+"a").html();
				var currentDivRealHeight=$("#"+div_id).height();
				var currentDivRealWidth=$("#"+div_id).width();
				currentAContent="<a  href=\"javaScript: void(0);\" id=\""+div_id+"a\">"+currentAContent+"</a>";
				
				//white
				var whiteContent=getWhiteContent(currentDivRealHeight,currentDivRealWidth,currentAContent);
				//red
				var redContent=getRedContent(currentDivRealHeight,currentDivRealWidth,currentAContent);
				//green
				var greenContent=getGreenContent(currentDivRealHeight,currentDivRealWidth,currentAContent);
				
				
				var content=getElementContent(currentDivRealHeight,currentDivRealWidth,currentAContent);
				$("#"+div_id).html(content);
				
				
				if(removeId!=""&&removeId!=null&&removeId){
					removeCurrentIdArray(removeId);
					$("#"+removeId+"a").attr("onClick","javaScript: void(0);");
					$("#"+removeId+"a").css({"color":"black"});
				}
				//alert(currentIdArray.join(";"));
				var div_obj = $("#"+div_id);  
				
				var popupHeight = div_obj.height();       
				var popupWidth = div_obj.width();    
			
				var objectId=$.trim($("#objectId").val());
				var ownerId=$.trim($("#ownerId").val());
				var objectName=$.trim($("#objectName").val());
				var patient_object_name=$.trim($("#patient_object_name").val());
				//
				var ext = 'divId=' + div_id + '&time=' + new Date().getTime();
				ext+='&objectId='+objectId;
				ext+='&ownerId='+ownerId;
				ext+='&patient_object_name='+patient_object_name;
				ext+='&objectName='+objectName;
				//移除removeId节点下所有yesId和noId节点的超链接
				var ext2 = 'divId=' + removeId;
				//ext2+='&objectId='+objectId;
				//ext2+='&ownerId='+ownerId;
				//ext2+='&patient_object_name='+patient_object_name;
				//ext2+='&objectName='+objectName;
				
				url += "?time=" + new Date().getTime();
				//alert(ext2 + div_id);
				//alert(div_id+"  "+removeId+" "+url);
				//移除removeId节点下所有yesId和noId节点的超链接
				$.ajax({
				    type: "POST",
				    url: url,
				    cache: false,
				    data: ext2,
				    async: false, //同步
				    timeout: 10000,
				    success: function (result) {
				        var yesId = "";
				        var noId = "";
				        var currentId = "";
				        $(result).find("yesId").each(function () {
				            //alert("yesId:"+$(this).text());
				            yesId = $(this).text();
				            yesId = idProcessor(yesId);
				        });
				        $(result).find("noId").each(function () {
				            //alert("noId:"+$(this).text());
				            noId = $(this).text();
				            noId = idProcessor(noId);
				        });
				        $(result).find("currentId").each(function () {
				            //alert("currentId:"+$(this).text());
				            currentId = $(this).text();
				            currentId = idProcessor(currentId);
				        });
				        if (yesId != "" || noId != "") {
				            var removeId = noId;
				            $("#" + yesId + "a").attr("onClick", "javaScript: warn();");
				            $("#" + yesId + "a").css({ "color": "#000" });
				            removeId = yesId;
				            $("#" + noId + "a").attr("onClick", "javaScript: warn();");
				            $("#" + noId + "a").css({ "color": "#000" });

				            var removeYesIdWidth = $("#" + yesId).width();
				            var removeYesIdHeight = $("#" + yesId).height();
				            var removeNoIdWidth = $("#" + noId).width();
				            var removeNoIdHeight = $("#" + noId).height();

				            //var removeId=noId;	
				            //$("#" + yesId + "a").attr("onClick", "shownext('" + yesId + "','" + noId + "','/FlowChart/ProcessGuide','yes');");
				            //removeId=yesId;
				            //$("#" + noId + "a").attr("onClick", "shownext('" + noId + "','" + yesId + "','/FlowChart/ProcessGuide','no');");


				            //red noId
				            var removeNoIdContent = getWhiteContent(removeNoIdHeight, removeNoIdWidth, $("a[id = " + noId + "a]").parent().html());
				            //green yesId
				            var removeYesIdContent = getWhiteContent(removeYesIdHeight, removeYesIdWidth, $("a[id = " + yesId + "a]").parent().html());

				            //$("#" + yesId + "a").css({ "color": "green" });
				            // $("#" + noId + "a").css({ "color": "red" });
				            $("#" + yesId).html(removeYesIdContent);
				            $("#" + noId).html(removeNoIdContent);
                        }
				       

				    },
				    error: function (xmlHttpRequest, error) {
				        alertMessge("","The request has timed out due to a network error! Please try again.");
				    }
				});
				//alert(url);
				//为当前div_id节点的yesId和noId添加超链接；原先只有yesId或者noId有超链接，没有同时拥有，现在要两者同时兼备
				$.ajax({
				    type: "POST",
				    url: url,
				    cache: false,
				    data: ext,
				    async: false,
				    timeout: 10000,
				    success: function (result) {
				        var yesId = "";
				        var noId = "";
				        var currentId = "";
				        $(result).find("yesId").each(function () {
				            //alert("yesId:"+$(this).text());
				            yesId = $(this).text();
				            yesId = idProcessor(yesId);
				        });
				        $(result).find("noId").each(function () {
				            //alert("noId:"+$(this).text());
				            noId = $(this).text();
				            noId = idProcessor(noId);
				        });
				        $(result).find("currentId").each(function () {
				            //alert("currentId:"+$(this).text());
				            currentId = $(this).text();
				            currentId = idProcessor(currentId);
				        });

				        var removeId = noId;
				        $("#" + yesId + "a").attr("onClick", "shownext('" + yesId + "','" + removeId + "','/FlowChart/ProcessGuide','yes')");
				        removeId = yesId;
				        $("#" + noId + "a").attr("onClick", "shownext('" + noId + "','" + removeId + "','/FlowChart/ProcessGuide','no')");
				        //$("#"+yesId+"a").css({"color":"green"});
				        //$("#"+noId+"a").css({"color":"red"});
				        if (yesId != "" || noId != "") {
				            var yesIdWidth = $("#" + yesId).width();
				            var yesIdHeight = $("#" + yesId).height();
				            var noIdWidth = $("#" + noId).width();
				            var noIdHeight = $("#" + noId).height();

				            //var removeId=noId;	
				            $("#" + yesId + "a").attr("onClick", "shownext('" + yesId + "','" + noId + "','/FlowChart/ProcessGuide','yes');");
				            //removeId=yesId;
				            $("#" + noId + "a").attr("onClick", "shownext('" + noId + "','" + yesId + "','/FlowChart/ProcessGuide','no');");


				            //red noId
				            var redNoIdContent = getRedContent(noIdHeight, noIdWidth, $("a[id = " + noId + "a]").parent().html());
				            //green yesId
				            var greenYesIdContent = getGreenContent(yesIdHeight, yesIdWidth, $("a[id = " + yesId + "a]").parent().html());

				            //$("#" + yesId + "a").css({ "color": "green" });
				            // $("#" + noId + "a").css({ "color": "red" });
				            $("#" + yesId).html(greenYesIdContent);
				            $("#" + noId).html(redNoIdContent);
				        }
				        if (currentIdArray.length > 2) {
				            for (var i = 0; i < currentIdArray.length - 2; i++) {
				                $("#" + currentIdArray[i] + "a").attr("onClick", "javaScript: warn(); ");
				            }
				        }
				        if (currentIdArray.length > 1) {				            
				            $("#" + currentIdArray[currentIdArray.length - 2] + "a").attr("onClick", "back('" + currentIdArray[currentIdArray.length - 2] + "','" + currentIdArray[currentIdArray.length - 1] + "','/FlowChart/ProcessGuide');");
				        }

				        //alert("back actionSequence:"+$("#actionSequence").val());
				    },
				    error: function (xmlHttpRequest, error) {
				        alertMessge("", "The request has timed out due to a network error! Please try again.");
				    }
				});
				
}

function warn(){
    alertMessge("","Please click on the adjacent 'Yes' or 'No' box to goto the next step!");
}

function idProcessor(id){
	//特殊处理（processGuide本为white但实际却为red的）
	/*if(id=="processGuide_8"||id=="processGuide_21"||id=="processGuide_58"||id=="processGuide_82"||id=="processGuide_83"){
		//所有页面的red
		id=id+"_red";
	}else if(id=="processGuide_52"||id=="processGuide_53"||id=="processGuide_54"||id=="processGuide_50"||id=="processGuide_51"){//thought
		id=id+"_green";
	}else if(id=="processGuide_22"||id=="processGuide_15"||id=="processGuide_24"||id=="processGuide_25"||id=="processGuide_26"||id=="processGuide_18"){//mood
		id=id+"_green";
	}else if(id=="processGuide_59"||id=="processGuide_63"||id=="processGuide_65"||id=="processGuide_66"||id=="processGuide_67"||id=="processGuide_70"||id=="processGuide_74"||id=="processGuide_76"){//anxiety
		id=id+"_green";
	}else if(id=="processGuide_98"||id=="processGuide_99"||id=="processGuide_101"||id=="processGuide_95"||id=="processGuide_105"||id=="processGuide_106"||id=="processGuide_109"){//impluse
		id=id+"_green";
	}else{
		//普遍处理方式
		var i=id.indexOf("cluster");
		if(i==0){
		    id = id + "_white";
		}
		var j=id.indexOf("processGuide");
		if(j==0){
			id=id+"_white";
		}
	}
	*/
    id = id + "_white";
	return id;
	
}



			function treatmentPlanSave() {
			    document.myForm.submit();
			    $("input[type='submit']").attr("disabled", "disabled");
			}
			