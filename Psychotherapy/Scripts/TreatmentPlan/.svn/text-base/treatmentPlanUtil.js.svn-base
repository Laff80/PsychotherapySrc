function getOkBackDialog(patientID, userId, backCurrentId) {

    var dialogInt = $("#dialog_box").dialog(
                    { autoOpen: false,
                        modal: true,
                        width: 400,
                        maxWidth: 600,
                        maxHeight: 500,
                        draggable: false,
                        resizable: false
                    });
    $("#dialog_box").load("/TreatmentPlan/DisplayTitle?currentID=" + backCurrentId, {}, function (context) {

        $("#dialog_box").dialog("option", { buttons: {
            "OK": function () {
                document.location = "/TreatmentPlan/TreatmentPlanList/1?patientID=" + patientID;
            },
            "Back": function () {
                $(this).dialog("close");
                back(currentIdArray[currentIdArray.length - 2], currentIdArray[currentIdArray.length - 1], "/FlowChart/ProcessGuide");

            }
        }
        });

        $("#dialog_box").dialog({
            close: back(currentIdArray[currentIdArray.length - 2], currentIdArray[currentIdArray.length - 1], "/FlowChart/ProcessGuide")
        });
        $("#dialog_box").dialog("open");
    });
}

function getContinueBackDialog(patientID, userId, backCurrentId) {

    var dialogInt = $("#dialog_box").dialog(
                    { autoOpen: false,
                        modal: true,
                        width: 630,
                        maxWidth: 600,
                        height: 300,
                        maxHeight: 320
                        //draggable: false,
                        //resizable: false
                    });
    $("#dialog_box").load("/TreatmentPlan/DisplayClusterDocsLinks?currentID=" + backCurrentId, function (context) {

        $("#dialog_box").dialog("option", { buttons: {
            "Continue": function () {
                treatmentPlanSave();
            },
            "Back": function () {
                $(this).dialog("close");
                back(currentIdArray[currentIdArray.length - 2], currentIdArray[currentIdArray.length - 1], "/FlowChart/ProcessGuide");

            }
        }
        });
        $("#dialog_box").dialog({
            close: back(currentIdArray[currentIdArray.length - 2], currentIdArray[currentIdArray.length - 1], "/FlowChart/ProcessGuide")
        });
        $("#dialog_box").dialog("open");
    });
}


function getClusterDialog(url, patientID, backCurrentId) {

    var dialogInt = $("#dialog_box").dialog(
                    { autoOpen: false,
                        modal: true,
                        width: 400,
                        maxWidth: 600,
                        maxHeight: 500,
                        draggable: false,
                        resizable: false
                    });
    $("#dialog_box").load("/TreatmentPlan/DisplayTitle?currentID=" + backCurrentId, {}, function (context) {
        $("#dialog_box").dialog("option", { buttons: {
            "Go": function () {
                actionLink(url + "/" + patientID);
            },
            "Back": function () {
                $(this).dialog("close");
                if (typeof (currentIdArray[currentIdArray.length - 2]) == "undefined") {
                    var tempID = currentIdArray[currentIdArray.length - 1];
                    back(currentIdArray[currentIdArray.length - 1], currentIdArray[currentIdArray.length - 1], "/FlowChart/ProcessGuide");
                    addCurrentIdArray(tempID);
                } else {
                    back(currentIdArray[currentIdArray.length - 2], currentIdArray[currentIdArray.length - 1], "/FlowChart/ProcessGuide");
                }
            }
        }
        });
        $("#dialog_box").dialog({
            close: back(currentIdArray[currentIdArray.length - 2], currentIdArray[currentIdArray.length - 1], "/FlowChart/ProcessGuide")
        });
        $("#dialog_box").dialog("open");
    });
}

function confirmMessageT(patientID) {
    if (confirm("Are you return to TreatmentPlan List?")) {
        document.location = "/TreatmentPlan/TreatmentPlanList/1?patientID=" + patientID;
    }
}