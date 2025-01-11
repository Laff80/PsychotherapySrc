function selectTreatPlanStrategy(objectiveId, fatherId) {
	var oldStrategys=$("#oldStrategy").val();
	var newStrategys="";
	var patientID = $("#patientID").val();
	var n=0;
	
	$("td>input[@name=strategy][type=checkbox][checked]").each(function(){
		
		if(n==0){
			newStrategys+=$(this).val();
			}else{
			newStrategys+="@"+$(this).val();
			}
		n++;
	}); 
	if(n>3||n<0){
		alertMessge("","Only up to 3 Strategy is allowed. Please revise it.");
		return ;
	}
	var url = "";
	var ext = "";
	ext+="objectiveId="+objectiveId;
	ext+="&fatherId="+fatherId;
	ext += "&patientID=" + patientID;
	url += "/Strategy/StrategyContentSelect";
	var oldStrategyArray=oldStrategys.split("@");
	var newStrategyArray=newStrategys.split("@");
	if(callArray(oldStrategyArray,newStrategyArray)){
		closeAddTreatPlan();
		return;
	}
	//alertMessge("",oldSymptomArray);
	var removeStrategy=compareArray(oldStrategyArray,newStrategyArray);
	var removeIds=removeStrategy.split('#');
	for(var k=0;k<removeIds.length;k++){
		$("#strategy"+fatherId+removeIds[k]).remove();
	}
	if(compareArrayNew(oldStrategyArray,newStrategyArray)==""){//compareArrayNew
		closeAddTreatPlan();
		return;
	}
	ext += "&oldStrategys="+oldStrategys;
	ext += "&newStrategys="+newStrategys;
	//alertMessge("",url);
	$.ajax({
		type: "POST",
		url: url,
		cache: false,
		data: ext,
		timeout: 10000,
		
		success: function(result) {
		    $("#fullContent").empty();		    
			var temp2="objective"+fatherId;
			if ($("#"+temp2+">#strategys").length <= 0) {
				$("#"+temp2).append("<div class='strategys' id='strategys'></div>");
			}
			$("#"+temp2+">#strategys").append(result);
			closeAddTreatPlan();
		},
				error: function (xmlHttpRequest, error) {
					alertMessge("","The request has timed out due to a network error! Please try again.");
	        	}
	});
	
}


function selectTreatPlanObjective(longTermGoalId, fatherId) {
	var oldObjectives=$("#oldObjective").val();
	var newObjectives="";
	var n=0;
	var patientID = $("#patientID").val();
	$("td>input[@name=objective][type=checkbox][checked]").each(function(){
		
		if(n==0){
			newObjectives+=$(this).val();
			}else{
			newObjectives+="@"+$(this).val();
			}
		n++;
	}); 
	if(n>3){
		alertMessge("","Only up to 3 Objective is allowed. Please revise it.");
		return ;
	}
	var url = "";
	var ext = "";
	ext+="longTermGoalId="+longTermGoalId;
	ext+="&fatherId="+fatherId;
	ext += "&patientID=" + patientID;
	url += "/Objective/ObjectiveContentSelect";
	var oldObjectiveArray=oldObjectives.split("@");
	var newObjectiveArray=newObjectives.split("@");
	if(callArray(oldObjectiveArray,newObjectiveArray)){
		closeAddTreatPlan();
		return;
	}
	//alertMessge("",oldSymptomArray);
	var removeObjective=compareArray(oldObjectiveArray,newObjectiveArray);
	var removeIds=removeObjective.split('#');
	for(var k=0;k<removeIds.length;k++){
		$("#objective"+fatherId+removeIds[k]).remove();
	}
	if(compareArrayNew(oldObjectiveArray,newObjectiveArray)==""){//compareArrayNew
		closeAddTreatPlan();
		return;
	}
	ext += "&oldObjectives="+oldObjectives;
	ext += "&newObjectives="+newObjectives;
	$.ajax({
		type: "POST",
		url: url,
		cache: false,
		data: ext,
		timeout: 10000,

		success: function (result) {
		    $("#fullContent").empty();
			var temp2="longTermGoal"+fatherId;
			if ($("#"+temp2+">#objectives").length <= 0) {
				$("#"+temp2).append("<div class='objectives' id='objectives'></div>");
			}
			$("#"+temp2+">#objectives").append(result);
			closeAddTreatPlan();
		},
				error: function (xmlHttpRequest, error) {
					alertMessge("","The request has timed out due to a network error! Please try again.");
	        	}
	});
	
}


function selectTreatPlanLongTermGoal(symptomId) {
	var oldLongTermGoals=$("#oldLongTermGoal_symptom"+symptomId).val();
	var patientID = $("#patientID").val();
	var newLongTermGoals="";
	var n=0;
	$("td>input[@name=longTermGoal][type=checkbox][checked]").each(function(){
		
		if(n==0){
			newLongTermGoals+=$(this).val();
			}else{
			newLongTermGoals+="@"+$(this).val();
			}
		n++;
	}); 
	if(n>1){
		alertMessge("","Only up to 1 Long Term Goal is allowed. Please revise it.");
		return ;
	}
	var url = "";
	var ext = "";
	ext+="symptomId="+symptomId;
	ext += "&patientID=" + patientID;
	url += "/LongTermGoal/LongTermGoalContentSelect";
	var oldLongTermGoalArray=oldLongTermGoals.split("@");
	var newLongTermGoalArray=newLongTermGoals.split("@");
	if(callArray(oldLongTermGoalArray,newLongTermGoalArray)){
		closeAddTreatPlan();
		return;
	}
	//alertMessge("",oldSymptomArray);
	var removeLongTermGoal=compareArray(oldLongTermGoalArray,newLongTermGoalArray);
	var removeIds=removeLongTermGoal.split('#');
	for(var k=0;k<removeIds.length;k++){
		$("#longTermGoal"+symptomId+removeIds[k]).remove();
	}
	if(compareArrayNew(oldLongTermGoalArray,newLongTermGoalArray)==""){//compareArrayNew
		closeAddTreatPlan();
		return;
	}
	ext += "&oldLongTermGoals="+oldLongTermGoals;
	ext += "&newLongTermGoals="+newLongTermGoals;
	$.ajax({
	    type: "POST",
	    url: url,
	    cache: false,
	    data: ext,
	    timeout: 10000,

	    success: function (result) {
	        $("#fullContent").empty();
	        var temp2 = "symptom" + symptomId;
	        if ($("#" + temp2 + ">#longTermGoals").length <= 0) {
	            $("#" + temp2).append("<div class='longTermGoals' id='longTermGoals' style='margin-left:40px;'></div>");
	        }
	        $("#" + temp2 + ">#longTermGoals").append(result);
	        closeAddTreatPlan();
	    },
	    error: function (xmlHttpRequest, error) {
	        alertMessge("", "The request has timed out due to a network error! Please try again.");
	    }
	});
	
}

function selectTreatPlanSymptom() {
   
	var oldSymptoms=$("#oldSymptom").val();
	var newSymptoms="";
	var patientID = $("#patientID").val();
	var n=0;
	
	$("td>input[@name=symptoms][type=checkbox][checked]").each(function(){
		
		if(n==0){
			newSymptoms+=$(this).val();
			}else{
			newSymptoms+="@"+$(this).val();
			}
		n++;
	}); 
	if(n>3){
		alertMessge("","Only up to 3 Problem/Symptom is allowed. Please revise it.");
		return ;
	}
	var url = "";
	var ext = "";
	ext += "&patientID=" + patientID;
	url += "/Symptom/SymptomContentSelect";
	var oldSymptomArray=oldSymptoms.split("@");
	var newSymptomArray=newSymptoms.split("@");
	if(callArray(oldSymptomArray,newSymptomArray)){//如果上次选择的和这次选择的一样，则不进行任何处理
		closeAddTreatPlan();
		return;
	}
	
	var removeSymptom=compareArray(oldSymptomArray,newSymptomArray);
	var removeIds=removeSymptom.split('#');
	for(var k=0;k<removeIds.length;k++){
		$("#symptom"+removeIds[k]).remove();
	}
	if(compareArrayNew(oldSymptomArray,newSymptomArray)==""){//compareArrayNew
		closeAddTreatPlan();
		return;
	}
	ext += "&oldSymptoms="+oldSymptoms;
	ext += "&newSymptoms="+newSymptoms;
	//alertMessge("",url);
	$.ajax({
	    type: "POST",
	    url: url,
	    cache: false,
	    data: ext,
	    timeout: 10000,

	    success: function (result) {
	        $("#fullContent").empty();
	        if ($("#symptoms").length <= 0) {
	            $("#list").append("<div class='symptoms' id='symptoms' style='margin-left:80px;'></div>");
	            var left = $("#symptomsTitle").offset().left;

	            $("#symptoms").css({ left: left });
	        }
	        $("#symptoms").append(result);
	        closeAddTreatPlan();
	    },
	    error: function (xmlHttpRequest, error) {
	        alertMessge("", "The request has timed out due to a network error! Please try again.");
	    }
	});
	
}



