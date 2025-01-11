/**
* @author Xin Lee
* @date   2011-1-26
*/

(function ($) {

    /**
    *@表格偶数行变色
    *@param 颜色字符串 
    */
    $.fn.toTrEven = function (colorValue) {
        if (arguments.length == 0) {
            jQuery(this).find('tr:even').addClass("row_color");
        }
        if (arguments.length == 1) {
            jQuery(this).find('tr:even').css("background-color", colorValue);
        }
    }

})(jQuery);
(function ($) {

    /**
    *@description 选择或移除列表选项
    *@param  
    */
    $.fn.SelectOrRemoveItem = function () {
        $(this).toggle(function () { 
             $(this).addClass("selected");

        }, function () {
            $(this).removeClass("selected");
        });
    }

})(jQuery);
(function ($) { 

    $.fn.extend({
         
    });

})(jQuery);