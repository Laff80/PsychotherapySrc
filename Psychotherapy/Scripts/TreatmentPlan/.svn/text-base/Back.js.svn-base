var processGuideArray=new Array();
var currentIdArray=new Array();
function initActionSequence(currentProcessGuide){
	
	processGuideArray.push(currentProcessGuide);
}
function addActionSequence(processGuideId){
	processGuideArray.push(processGuideId);
	var actionSequence=processGuideArray.join(";");
	$("#actionSequence").val(actionSequence);
}
function addCurrentIdArray(currentId){
	var flag=false;
	for ( var i=0 ; i < currentIdArray.length ; ++i ){
		if(currentIdArray[i]==currentId)flag=true;
	}
if (!flag) {
   
		currentIdArray.push(currentId);
		//alert(currentId+" add success");
		//alert("add after:" + currentIdArray.join(";"));
}
   
	
}
function removeCurrentIdArray(currentId){
	//alert(currentId);
   // $("#" + currentId + "a").css({ "color": "#000" });
	currentIdArray.pop(currentId);
	//alert("remove after:" + currentIdArray.join(";"));
	//alert(currentIdArray.join(";"));
}
function goToBack(url,flag,currentDivId,currentBackGroundColor){
	var preProcessGuide=processGuideArray.pop();
	if(processGuideArray.length==0){
		$("#"+currentDivId).css({"background-color":currentBackGroundColor,"color":"#000000","border":"#000000 1px solid"});
		processGuideArray.push($("#currentProcessGuide").val());
	}else{
		$("#"+currentDivId).css({"background-color":currentBackGroundColor,"color":"#000000","border":"#000000 1px solid"});
	}
	var actionSequence=processGuideArray.join(";");
	$("#actionSequence").val(actionSequence);
	if("shownext"==flag){
		shownext(preProcessGuide,url,'');
	}else{
		shownextForImpulse(preProcessGuide,url,'');
	}
}