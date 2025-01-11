
/*Select根据Value默认选项
---------------------------------------------------*/
function checkSelectByValue(selObj, value, bSelected) {
    if (bSelected == undefined || bSelected == "") {
        bSelected = true;
    }
    for (var i = 0; i < selObj.options.length; i++) {
        if (selObj.options[i].value == value) {
            selObj.options[i].selected = bSelected;
            break;
        }
    }
}

/*Radio根据Value默认选项
---------------------------------------------------*/
function checkRadioByValue(radObjName, value, bool) {
    if (arguments.length == 2) {
        $('input[name=' + radObjName + '][value=' + value + ']').attr("checked", true);
    }
    if (arguments.length == 3) {
        $('input[name=' + radObjName + '][value=' + value + ']').attr("checked", true).attr('disabled', bool);
    }
    
}
/*Radio根据一个有效的选择器,设置Radio的Disabled
---------------------------------------------------*/
function disabledRadioBySelector(Selector) {
    $(Selector + ' input[type="radio"]').attr('disabled', true);
}

/*根据Value移除指定项
---------------------------------------------------*/
function removeSelectByValue(selObj, value) {
    for (var i = 0; i < selObj.options.length; i++) {
        if (selObj.options[i].value == value) {
            selObj.options.remove(i);
            break;
        }
    }
}
/*清空options集合 
---------------------------------------------------*/
function clearOptions(colls) {
    var length = colls.length;
    for (var i = length - 1; i > 0; i--) {
        colls.remove(i);
    }
}

/*全选CheckBox
---------------------------------------------------*/
function selected(object) {
    if (object.checked != false) {
        $(object).parent().parent('tr').css({ "background-color": "#FFFFCC" });
    }
    else {
        $(object).parent().parent('tr').css({ "background-color": "#FFF" });
    }
}

function ckAllistboxs(obj) {

    var thisobject = obj.checked;
    $('.table_list input').each(function () {
        if (thisobject == true) {
            $(this).attr("checked", true);
            $(this).parent().parent('tr').css({ "background-color": "#FFFFCC" });
        }
        else {
            $(this).attr("checked", false);
            $(this).parent().parent('tr').css({ "background-color": "#FFF" });
        }
    });
}


/*改变table的偶数行加色
---------------------------------------------------*/
function changeTableRowColor() {
    $("table.list tr:even").addClass("row_color");
}

/*列表连接
---------------------------------------------------*/
function actionLink(Url) {
    document.location = Url;
}

function Link_blank(Url) {
    if (Url == '') {
        alert('null link');
        return false;
    }
    else {
        window.open(Url, "_blank");
    }
}
function OpenPdf(Url) {
    window.open(Url, "_blank");
}

function OnComplete1() {
    $("table.list tr:even").addClass("row_color");
}

function OnComplete2() {
    $('.files').toTrEven();
}

function alertMessge(title,msg) {
    $("#dialog_box").html(msg);
    var dialogInt = $("#dialog_box").dialog(
                    { autoOpen: false,
                        modal: true,
                        title: title,
                        width: 400,
                        maxWidth: 600,
                        maxHeight: 500
                    });
    $("#dialog_box").dialog("option", { buttons: {
        "OK": function () {
            $(this).dialog("close");
        }
    }
    });
    $("#dialog_box").dialog("open");
}

function confirmMessage(title, msg) {
    $("#dialog_box").html(msg);
    var dialogInt = $("#dialog_box").dialog(
                    { autoOpen: false,
                        modal: true,
                        title: title == '' ? "alert" : title,
                        width: 400,
                        maxWidth: 600,
                        maxHeight: 500
                    });
    $("#dialog_box").dialog("option", { buttons: {
        "Cancel": function () { $(this).dialog("close"); },
        "OK": function () {
            $(this).dialog("close");
        }
    }
    });
    $("#dialog_box").dialog("open");
}


