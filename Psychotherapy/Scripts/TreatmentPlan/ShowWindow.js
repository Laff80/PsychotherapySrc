//判断是否为数组
    function isArray(v)
    {
        return v && typeof v.length == 'number' && typeof v.splice == 'function';
    }
    //创建元素
    function createEle(tagName)
    {
        return document.createElement(tagName);
    }
    //在body中添加子元素
    function appChild(eleName)
    {
        return document.body.appendChild(eleName);
    }
    //从body中移除子元素
    function remChild(eleName)
    {
        return document.body.removeChild(eleName);
    }
	
	
	//弹出窗口，标题（html形式）、html、宽度、高度、是否为模式对话框(true,false)、按钮（关闭按钮为默认，格式为['按钮1',fun1,'按钮2',fun2]数组形式，前面为按钮值，后面为按钮onclick事件）
    function showWindow(title,html,width,height,modal,shadeleft,shadetop,shadewidth,shadeheight,buttons)
    {
        //避免窗体过小
       //if (width < 300)
       // {
       //     width = 300;
       // }
       // if (height < 200)
       //{
       //     height = 200;
       // }
        
        //声明mask的宽度和高度（也即整个屏幕的宽度和高度）
        var w,h;
        //可见区域宽度和高度
        var cw = document.body.clientWidth;
        var ch = document.body.clientHeight;
        //正文的宽度和高度 
        var sw = document.body.scrollWidth;
        var sh = document.body.scrollHeight;
        //可见区域顶部距离body顶部和左边距离
        var st = document.body.scrollTop;
        var sl = document.body.scrollLeft;
     
        w = cw > sw ? cw:sw;
        h = ch > sh ? ch:sh;

        //避免窗体过大
        if (width > w)
        {
            width = w;
        }
        if (height > h)
        {
            height = h;
        }
        
        //如果modal为true，即模式对话框的话，就要创建一透明的掩膜
        if (modal)
        {
            var mask = createEle('div');
			mask.id="mask";
            mask.style.cssText = "position:absolute;left:"+shadeleft+"px;top:"+shadetop+"px;background:#fff;filter:Alpha(Opacity=30);opacity:0.5;z-index:10000;width:" + shadewidth + "px;height:" + shadeheight + "px;";
            appChild(mask);
        }
        
        //这是主窗体
        var win = createEle('div');
		win.id="win";
        win.style.cssText = "position:absolute;left:" + (sl + cw/2 - width/2) + "px;top:" + (st + ch/2 - height/2) + "px;background:#f0f0f0;z-index:10001;width:" + width + "px;height:" + height + "px;border:3px double #808080";
        //标题栏
        //var tBar = createEle('div');
        //afccfe,dce8ff,2b2f79
        //tBar.style.cssText = "margin:0;width:" + width + "px;height:25px;cursor:move;filter: progid:DXImageTransform.Microsoft.gradient(startcolorstr=#080f3d,endcolorstr=#b8cce4,gradientType=1);";
        //标题栏中的文字部分
        var titleCon = createEle('div');
        //titleCon.style.cssText = "float:left;margin:3px;color:#FFF;font-size:16px;";
        //titleCon.innerHTML = "<strong>"+title+"</strong>";//firefox不支持innerText，所以这里用innerHTML
        //.appendChild(titleCon);
        //标题栏中的“关闭按钮”
        //var closeCon = createEle('div');
        //closeCon.style.cssText = "float:right;width:20px;margin:3px;cursor:pointer;";//cursor:hand在firefox中不可用
        //closeCon.innerHTML = "关闭";
        //tBar.appendChild(closeCon);
        //win.appendChild(tBar);
        //窗体的内容部分，CSS中的overflow使得当内容大小超过此范围时，会出现滚动条
        var htmlCon = createEle('div');
        htmlCon.style.cssText = "text-align:center;width:" + width + "px;height:" + (height - 35) + "px;";
		
        htmlCon.innerHTML = "<table style=\" margin:auto\"><tr><td style=\"vertical-align:middle;height:100px;\">"+html+"</td></tr></table>";
        win.appendChild(htmlCon);
        //窗体底部的按钮部分
        var btnCon = createEle('div');
        btnCon.style.cssText = "width:" + width + "px;height:35px;text-height:20px;;text-align:center;padding-top:3px;background-color:#9F9F9F";
        
       
	   
	  
        btnCon.innerHTML+=buttons;
                        //用户填充按钮之间的空白
        var nbsp = createEle('label');
        nbsp.innerHTML = "&nbsp&nbsp";
        btnCon.appendChild(nbsp);
	   
        //这是默认的关闭按钮
        var btn = createEle('button');
//        btn.setAttribute("value","关闭");
        btn.innerHTML = 'cancel';
		btn.className ='ok';
//        btn.value = '关闭';
        //btnCon.appendChild(btn);
        win.appendChild(btnCon);
        appChild(win);

        /*************************************以下为拖动窗体事件*********************/
        //鼠标停留的X坐标
        var mouseX = 0;
        //鼠标停留的Y坐标
        var mouseY = 0;
        //窗体到body顶部的距离
        var toTop = 0;
        //窗体到body左边的距离
        var toLeft = 0;
        //判断窗体是否可以移动
        var moveable = false;
        
        //标题栏的按下鼠标事件
        /*tBar.onmousedown = function()
        {
            var eve = getEvent();
            moveable = true;
            mouseX = eve.clientX;
            mouseY = eve.clientY;
            toTop = parseInt(win.style.top);
            toLeft = parseInt(win.style.left);
            
            //移动鼠标事件
            tBar.onmousemove = function()
            {
                if(moveable)
                {
                    var eve = getEvent();
                    var x = toLeft + eve.clientX - mouseX;
                    var y = toTop + eve.clientY - mouseY;
                    if (x > 0 && (x + width < w) && y > 0 && (y + height < h))
                    {
                        win.style.left = x + "px";
                        win.style.top = y + "px";
                    }
                }
            }
            //放下鼠标事件，注意这里是document而不是tBar
            document.onmouseup = function()
            {
                moveable = false;
            }
        }*/

        
        
        //获取浏览器事件的方法，兼容ie和firefox
        function getEvent()
        {
            return window.event || arguments.callee.caller.arguments[0];
        }
        
        //顶部的标题栏和底部的按钮栏中的“关闭按钮”的关闭事件
        //btn.onclick = closeCon.onclick = function()
        //{
        //    remChild(win);
        //    remChild(mask);
        //}
    }
	 