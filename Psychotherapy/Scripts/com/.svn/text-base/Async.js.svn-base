/****
//ajax回调方法，处理返回JsonModel相应的json对象
/*/
function ajaxJson_OnComplete(ajaxContext) {
    var jsonData = ajaxContext.get_response().get_object();
    var updateTarget = ajaxContext.get_updateTarget();
    if (jsonData.Message != '')
        alert(jsonData.Message);
    if (jsonData.Success) {
        if (jsonData.HtmlString != '') {
            updateTarget.innerHTML = jsonData.HtmlString;


        }

    }
    //防止内部更新updateTarget元素
    return false;
}

