/**
* @author 李鑫
* @date   2011-2-12
*/

/**
* @description 提供公共对话框
* @parame 对话框标题
* @parame 通过此Url获取内容
* @parame 已选的ID
* @parame 已选的组名
* @parame 插入选中目标
*/
function dialogToTreatmentPlanItem(Title, Url, selectedIDs, selectedName, insertItemFunc) {

    var dialogInt = $("#dialog_box").dialog(
                    { autoOpen: false,
                        modal: true,
                        title: Title,
                        width: 670,
                        maxWidth: 600,
                        height: 400,
                        maxHeight: 375
                    });
    $("#dialog_box").load(Url, function (context) {
        $("#dialog_box").dialog("option", { buttons: {
            "OK": insertItemFunc,
            "Cancel": function () { $(this).dialog("close"); }
        }
        });
        $("#dialog_box").dialog("open");

        $('#alreadyExistsIDs').val('');
        $('#alreadyExistsIDs').val(selectedIDs);
        //初始化
        initItem(selectedIDs, selectedName);

    });
}

/**
* @description 初始化当前已选ID
* @parame 已选ID
* @parame 组名
*/
function initItem(selectedIDs, selectedName) {

    if (selectedIDs != "") {
        var selectedArr = selectedIDs.split(',');
        for (var i = 0; i < selectedArr.length - 1; i++) {
            $('#' + selectedName + selectedArr[i] + " td").css({ "background-color": "#EEFFE2", border: "1px solid #5DC323" });
            $('input[name=hd' + selectedName + selectedArr[i] + ']').attr('title', 'selected');
        }
    }

}

/**
* @description 选择或移除列表选项
* @parame 已选ID
* @parame 组名
*/
function SelectOrRemoveItem(OBJ, selectNum,selectName) {
   
   var trID = $(OBJ).attr('id');
   var count = 0;
   $('.table_item tr').each(function (index, el) {
       if ($('#hd' + selectName + index).attr('title') == 'selected') { count++; }
   });
   if ($('input[name=hd' + trID + ']').attr('title') == 'selected') {
       $(OBJ).children().css({ "background-color": "#FFFFFF", border: "1px solid #50a0e7" });
       $('input[name=hd' + trID + ']').attr('title', '');
   }
   else {
       if (count < selectNum) {
           $(OBJ).children().css({ "background-color": "#EEFFE2", border: "1px solid #5DC323" });
           $('input[name=hd' + trID + ']').attr('title', 'selected');
       }
       else {
           alert("select up " + selectNum);
       }
   }
}

/**
* @description 显示SymptomItem
* @parame
* @parame
*/
function displaySymptomItem(clusterId) {
    var selectedIDs = "";
    var url = "/Questionnaires/Symptom?clusterId=" + clusterId + "&patientID=" + $('#PatientID').val();
    $("input[name='hdSelectedSymtom']").each(function (index, el) {
        selectedIDs = selectedIDs + $(this).val() + ",";
    })

    dialogToTreatmentPlanItem("Choose the most important Symptom/Problems (max 3)", url, selectedIDs, "symptom", insertSymptomItem);
}

/**
* @description 插入SymptomItem
*/
function insertSymptomItem() {

    //获取当前选中的并排除已存在的，同时当已存在未选中，将移除
    var alreadyExistsIDs = $('#alreadyExistsIDs').val().split(',');
    var strHtml = '';

    //移除
    for (var i = 0; i < alreadyExistsIDs.length - 1; i++) {
        var sympotom = $('input[name=hdsymptom' + alreadyExistsIDs[i] + ']');
        if (sympotom.attr('title') != 'selected') {
            $('#ulSymtom' + alreadyExistsIDs[i]).remove();
        }
    }

    //插入
    $('.table_item tr').each(function (index, el) {
        var sympotom = $('#hdsymptom' + index);
        var OBJattrID = sympotom.val();
        var OBJattrTitle = sympotom.attr('title');
        var extID = "";
        if (OBJattrTitle == 'selected') {
            for (var i = 0; i < alreadyExistsIDs.length - 1; i++) {
                if (OBJattrID == alreadyExistsIDs[i]) {
                    extID = alreadyExistsIDs[i];
                }
            }
            if (OBJattrID != extID) {
                strHtml += '<ul id="ulSymtom' + OBJattrID + '">';
                strHtml += '<li><input name="hdSelectedSymtom" type="hidden" value="' + OBJattrID + '" disabled = "disabled" >';
                strHtml += '<input name="Item_'+OBJattrID+'" type="hidden" value="' + OBJattrID + '">';
                strHtml += '<b>Symptom</b> : ' + $(this).children().eq(1).html() + ' <br>';
                strHtml += '<b style="color:#FF6600">└&gt; LongTermGoals</b> (select one)<a href="javascript:void(0)" onclick="displayLongTermGoalItem(' + OBJattrID + ')">Edit</a>';
                strHtml += '</li>';
                strHtml += '<li></li></ul>';
            }
        }
    });
    $('#planItem').append(strHtml);
    $("#dialog_box").dialog("close");
}

/**
* @description 显示LongTermGoalItem
* @parame
* @parame
*/
function displayLongTermGoalItem(symptomId) {
    var selectedIDs = "";
    var url = "/Questionnaires/LongTermGoal?symptomId=" + symptomId + "&patientID=" + $('#PatientID').val();
    $('input[name=hdSelectedLongTermGoal' + symptomId + ']').each(function (index, el) {
        selectedIDs = selectedIDs + $(this).val() + ",";
    });

    dialogToTreatmentPlanItem("Choose One Long Term Goal", url, selectedIDs, "LongTermGoal", insertLongTermGoalItem);
}

/**
* @description 插入LongTermGoalItem
*/
function insertLongTermGoalItem() {
    //获取当前选中的并排除已存在的，同时当已存在未选中，将移除
    var alreadyExistsIDs = $('#alreadyExistsIDs').val().split(',');
    var SymptomId = $('#SymptomId').val();
    var strHtml = '';


    //移除
    for (var i = 0; i < alreadyExistsIDs.length - 1; i++) {
        var sympotom = $('input[name=hdLongTermGoal' + alreadyExistsIDs[i] + ']');
        if (sympotom.attr('title') != 'selected') {
            $('#ulLongTermGoal' + SymptomId + alreadyExistsIDs[i]).remove();
        }
    }

    //插入
    $('.table_item tr').each(function (index, el) {
        var LongTermGoal = $('#hdLongTermGoal' + index);
        var OBJattrID = LongTermGoal.val();
        var OBJattrTitle = LongTermGoal.attr('title');
        var extID = "";
        if (OBJattrTitle == 'selected') {
            for (var i = 0; i < alreadyExistsIDs.length - 1; i++) {
                if (OBJattrID == alreadyExistsIDs[i]) {
                    extID = alreadyExistsIDs[i];
                }
            }

            if (OBJattrID != extID) {
                strHtml += '<ul id="ulLongTermGoal' + SymptomId + OBJattrID + '">';
                strHtml += '<li><input name="hdSelectedLongTermGoal' + SymptomId + '" type="hidden" value="' + OBJattrID + '" disabled = "disabled" >';
                strHtml += '<input id="Item_' + SymptomId + OBJattrID + '" name="Item_' + SymptomId + OBJattrID + '" type="hidden" value="' + SymptomId + ',' + OBJattrID + '">';
                strHtml += '<b>LongTermGoal</b> : ' + $('#LongTermGoal' + OBJattrID).children().eq(1).html() + ' <br>';
                strHtml += '<b style="color:#FF6600">└&gt; Objectives</b> (select up to 3)<a href="javascript:void(0)" onclick="displayObjectiveItem(' + SymptomId + ',' + OBJattrID + ')">Edit</a>';
                strHtml += '</li>';
                strHtml += '<li></li></ul>';
            }
        }
    });

    $('#ulSymtom' + SymptomId + " li").eq(1).append(strHtml);

    if ($('#ulSymtom' + SymptomId + " li").eq(1).children().length == 0) {
        $('input[name="Item_' + SymptomId + '"]').removeAttr("disabled");
    }
    else {
        $('input[name="Item_' + SymptomId + '"]').attr('disabled', true);
    }
    
    $("#dialog_box").dialog("close");
}

/**
* @description 显示ObjectiveItem
* @parame
* @parame
*/
function displayObjectiveItem(symptomId, longTermGoalId) {
    var selectedIDs = "";

    var url = "/Questionnaires/Objective?symptomId=" + symptomId + "&longTermGoalId=" + longTermGoalId + "&patientID=" + $('#PatientID').val();
    $('input[name=hdSelectedObjective' + symptomId + longTermGoalId + ']').each(function (index, el) {
        selectedIDs = selectedIDs + $(this).val() + ",";
    })

    dialogToTreatmentPlanItem("Choose Objectives (Max 3)", url, selectedIDs, "Objective", insertObjectiveItem);
}

/**
* @description 插入ObjectiveItem
*/
function insertObjectiveItem() {
    //获取当前选中的并排除已存在的，同时当已存在未选中，将移除
    var alreadyExistsIDs = $('#alreadyExistsIDs').val().split(',');
    var SymptomId = $('#SymptomId').val();
    var LongTermGoalId = $('#LongTermGoalID').val();
    var strHtml = '';

    //移除
    for (var i = 0; i < alreadyExistsIDs.length - 1; i++) {
        var sympotom = $('input[name=hdObjective' + alreadyExistsIDs[i] + ']');
        if (sympotom.attr('title') != 'selected') {
            $('#ulObjective' + SymptomId + LongTermGoalId + alreadyExistsIDs[i]).remove();
        }
    }

    //插入
    $('.table_item tr').each(function (index, el) {
        var Objective = $('#hdObjective' + index);
        var OBJattrID = Objective.val();
        var OBJattrTitle = Objective.attr('title');
        var extID = "";
        if (OBJattrTitle == 'selected') {
            for (var i = 0; i < alreadyExistsIDs.length - 1; i++) {
                if (OBJattrID == alreadyExistsIDs[i]) {
                    extID = alreadyExistsIDs[i];
                }
            }
           
            if (OBJattrID != extID) {
                strHtml += '<ul id="ulObjective' + SymptomId + LongTermGoalId + OBJattrID + '">';
                strHtml += '<li><input name="hdSelectedObjective' + SymptomId + LongTermGoalId + '" type="hidden" value="' + OBJattrID + '" disabled = "disabled" >';
                strHtml += '<input  name="Item_' + SymptomId + LongTermGoalId + OBJattrID + '" type="hidden" value="' + SymptomId + ',' + LongTermGoalId+',' + OBJattrID + '">';
                strHtml += '<b>Objective</b>  : ' + $('#Objective' + OBJattrID).children().eq(1).html() + ' <br>';
                strHtml += '<b style="color:#FF6600">└&gt; Therapeutic Strategies</b> (select up to 3)<a href="javascript:void(0)" onclick="displayStrategyItem(' + SymptomId + ',' + LongTermGoalId + ',' + OBJattrID + ')">Edit</a>';
                strHtml += '</li>';
                strHtml += '<li></li></ul>';
            }
        }
    });

    $('#ulLongTermGoal' + SymptomId + LongTermGoalId + " li").eq(1).append(strHtml);
    $('select').show();
    $('.b-Red').remove();
    if ($('#ulLongTermGoal' + SymptomId + LongTermGoalId + " li").eq(1).children().length == 0) {
        $('input[name="Item_' + SymptomId +LongTermGoalId+ '"]').removeAttr("disabled");
    }
    else {
        $('input[name="Item_' + SymptomId +LongTermGoalId+ '"]').attr('disabled', true);
    }

    $("#dialog_box").dialog("close");
 }

/**
* @description 显示StrategyItem
* @parame
* @parame
*/
function displayStrategyItem(symptomId, longTermGoalId, objectiveId) {
    var selectedIDs = "";
    var url = "/Questionnaires/Strategy?symptomId=" + symptomId + "&longTermGoalId=" + longTermGoalId + "&objectiveId=" + objectiveId + "&patientID=" + $('#PatientID').val();
    $('input[name=hdSelectedStrategy' + symptomId + longTermGoalId + objectiveId + ']').each(function (index, el) {
        selectedIDs = selectedIDs + $(this).val() + ",";
    })

    dialogToTreatmentPlanItem("Choose therapeutic strategies (Max 3)", url, selectedIDs, "Strategy", insertStrategyItem);
}

/**
* @description 插入StrategyItem
*/
function insertStrategyItem() {
    //获取当前选中的并排除已存在的，同时当已存在未选中，将移除
    var alreadyExistsIDs = $('#alreadyExistsIDs').val().split(',');
    var SymptomId = $('#SymptomId').val();
    var LongTermGoalId = $('#LongTermGoalID').val();
    var ObjectiveId = $('#ObjectiveID').val();
    var strHtml = '';

    //移除
    for (var i = 0; i < alreadyExistsIDs.length - 1; i++) {
        var sympotom = $('input[name=hdStrategy' + alreadyExistsIDs[i] + ']');
        if (sympotom.attr('title') != 'selected') {
            $('#ulStrategy' + SymptomId + LongTermGoalId + ObjectiveId + alreadyExistsIDs[i]).remove();
        }
    }

    //插入
    $('.table_item tr').each(function (index, el) {
        var LongTermGoal = $('#hdStrategy' + index);
        var OBJattrID = LongTermGoal.val();
        var OBJattrTitle = LongTermGoal.attr('title');
        var extID = "";
        if (OBJattrTitle == 'selected') {
            for (var i = 0; i < alreadyExistsIDs.length - 1; i++) {
                if (OBJattrID == alreadyExistsIDs[i]) {
                    extID = alreadyExistsIDs[i];
                }
            }
            if (OBJattrID != extID) {
                strHtml += '<ul id="ulStrategy' + SymptomId + LongTermGoalId + ObjectiveId + OBJattrID + '" disabled = "disabled" >';
                strHtml += '<input  name="Item_' + SymptomId + LongTermGoalId + ObjectiveId + OBJattrID + '" type="hidden" value="' + SymptomId + ',' + LongTermGoalId + ',' + ObjectiveId+',' + OBJattrID + '">';
                strHtml += '<li><input name="hdSelectedStrategy' + SymptomId + LongTermGoalId + ObjectiveId + '" type="hidden" value="' + OBJattrID + '">';
                strHtml += '<b>Strategy</b>  : ' + $('#Strategy' + OBJattrID).children().eq(1).html() + ' <br>';
                strHtml += '</li>';
                strHtml += '<li></li></ul>';
            }
        }
    });

    $('#ulObjective' + SymptomId + LongTermGoalId + ObjectiveId + " li").eq(1).append(strHtml);

    if ($('#ulObjective' + SymptomId + LongTermGoalId + ObjectiveId + " li").eq(1).children().length == 0) {
        $('input[name="Item_' + SymptomId + LongTermGoalId + ObjectiveId + '"]').removeAttr("disabled");
    }
    else {
        $('input[name="Item_' + SymptomId + LongTermGoalId + ObjectiveId + '"]').attr('disabled', true);
    }

    $("#dialog_box").dialog("close");
}