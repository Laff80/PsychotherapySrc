/**
*@列表选项操作
*@param ActionResult Url 
*@param 列表名称
*@param 传入布尔值，true是多选，false是单选
*/
function SelectedAction(url, ckname, item) {

    var selectedItems = $('input[name=' + ckname + ']:checked');

    if (!item) {
        if (selectedItems.length != 1) { alert("Can't choose zero or more!"); return false; }
        document.location = url + selectedItems.val();
    }
    else {
        if (selectedItems.length == 0) { alert("Please select one or more item!"); return false; }
        //if (!confirm(message)) return false; 'Are you sure you want to remove this users.'

        var IDs = selectedItems.serialize();
        //发送请求
        $.ajax({
            type: 'POST',
            dataType: 'json',
            url: url,
            cache: false,
            data: IDs,
            success: function (result) {
                if (result.Success) {

                }
                else {
                    alert(result.ErrorMsg);
                }
            }
        });
    }
}

/**
*@description 列表搜索
*/
function CreateSearch(url, data, btnSearch) {
    
    $.ajax({
        url: url,
        data: data,
        type: 'POST',
        dataType: 'html',
        cache: false,
        beforeSubmit: function () {
            $(btnSearch).attr('disabled', true);
        },
        success: function (result) {
            $('#list-box').html(result);
            $(btnSearch).attr('disabled', false);
            $("table.list tr:even").addClass("row_color");
        }
    });
}