//�ж��Ƿ�Ϊ����
    function isArray(v)
    {
        return v && typeof v.length == 'number' && typeof v.splice == 'function';
    }
    //����Ԫ��
    function createEle(tagName)
    {
        return document.createElement(tagName);
    }
    //��body�������Ԫ��
    function appChild(eleName)
    {
        return document.body.appendChild(eleName);
    }
    //��body���Ƴ���Ԫ��
    function remChild(eleName)
    {
        return document.body.removeChild(eleName);
    }
	
	
	//�������ڣ����⣨html��ʽ����html����ȡ��߶ȡ��Ƿ�Ϊģʽ�Ի���(true,false)����ť���رհ�ťΪĬ�ϣ���ʽΪ['��ť1',fun1,'��ť2',fun2]������ʽ��ǰ��Ϊ��ťֵ������Ϊ��ťonclick�¼���
    function showWindow(title,html,width,height,modal,shadeleft,shadetop,shadewidth,shadeheight,buttons)
    {
        //���ⴰ���С
       //if (width < 300)
       // {
       //     width = 300;
       // }
       // if (height < 200)
       //{
       //     height = 200;
       // }
        
        //����mask�Ŀ�Ⱥ͸߶ȣ�Ҳ��������Ļ�Ŀ�Ⱥ͸߶ȣ�
        var w,h;
        //�ɼ������Ⱥ͸߶�
        var cw = document.body.clientWidth;
        var ch = document.body.clientHeight;
        //���ĵĿ�Ⱥ͸߶� 
        var sw = document.body.scrollWidth;
        var sh = document.body.scrollHeight;
        //�ɼ����򶥲�����body��������߾���
        var st = document.body.scrollTop;
        var sl = document.body.scrollLeft;
     
        w = cw > sw ? cw:sw;
        h = ch > sh ? ch:sh;

        //���ⴰ�����
        if (width > w)
        {
            width = w;
        }
        if (height > h)
        {
            height = h;
        }
        
        //���modalΪtrue����ģʽ�Ի���Ļ�����Ҫ����һ͸������Ĥ
        if (modal)
        {
            var mask = createEle('div');
			mask.id="mask";
            mask.style.cssText = "position:absolute;left:"+shadeleft+"px;top:"+shadetop+"px;background:#fff;filter:Alpha(Opacity=30);opacity:0.5;z-index:10000;width:" + shadewidth + "px;height:" + shadeheight + "px;";
            appChild(mask);
        }
        
        //����������
        var win = createEle('div');
		win.id="win";
        win.style.cssText = "position:absolute;left:" + (sl + cw/2 - width/2) + "px;top:" + (st + ch/2 - height/2) + "px;background:#f0f0f0;z-index:10001;width:" + width + "px;height:" + height + "px;border:3px double #808080";
        //������
        //var tBar = createEle('div');
        //afccfe,dce8ff,2b2f79
        //tBar.style.cssText = "margin:0;width:" + width + "px;height:25px;cursor:move;filter: progid:DXImageTransform.Microsoft.gradient(startcolorstr=#080f3d,endcolorstr=#b8cce4,gradientType=1);";
        //�������е����ֲ���
        var titleCon = createEle('div');
        //titleCon.style.cssText = "float:left;margin:3px;color:#FFF;font-size:16px;";
        //titleCon.innerHTML = "<strong>"+title+"</strong>";//firefox��֧��innerText������������innerHTML
        //.appendChild(titleCon);
        //�������еġ��رհ�ť��
        //var closeCon = createEle('div');
        //closeCon.style.cssText = "float:right;width:20px;margin:3px;cursor:pointer;";//cursor:hand��firefox�в�����
        //closeCon.innerHTML = "�ر�";
        //tBar.appendChild(closeCon);
        //win.appendChild(tBar);
        //��������ݲ��֣�CSS�е�overflowʹ�õ����ݴ�С�����˷�Χʱ������ֹ�����
        var htmlCon = createEle('div');
        htmlCon.style.cssText = "text-align:center;width:" + width + "px;height:" + (height - 35) + "px;";
		
        htmlCon.innerHTML = "<table style=\" margin:auto\"><tr><td style=\"vertical-align:middle;height:100px;\">"+html+"</td></tr></table>";
        win.appendChild(htmlCon);
        //����ײ��İ�ť����
        var btnCon = createEle('div');
        btnCon.style.cssText = "width:" + width + "px;height:35px;text-height:20px;;text-align:center;padding-top:3px;background-color:#9F9F9F";
        
       
	   
	  
        btnCon.innerHTML+=buttons;
                        //�û���䰴ť֮��Ŀհ�
        var nbsp = createEle('label');
        nbsp.innerHTML = "&nbsp&nbsp";
        btnCon.appendChild(nbsp);
	   
        //����Ĭ�ϵĹرհ�ť
        var btn = createEle('button');
//        btn.setAttribute("value","�ر�");
        btn.innerHTML = 'cancel';
		btn.className ='ok';
//        btn.value = '�ر�';
        //btnCon.appendChild(btn);
        win.appendChild(btnCon);
        appChild(win);

        /*************************************����Ϊ�϶������¼�*********************/
        //���ͣ����X����
        var mouseX = 0;
        //���ͣ����Y����
        var mouseY = 0;
        //���嵽body�����ľ���
        var toTop = 0;
        //���嵽body��ߵľ���
        var toLeft = 0;
        //�жϴ����Ƿ�����ƶ�
        var moveable = false;
        
        //�������İ�������¼�
        /*tBar.onmousedown = function()
        {
            var eve = getEvent();
            moveable = true;
            mouseX = eve.clientX;
            mouseY = eve.clientY;
            toTop = parseInt(win.style.top);
            toLeft = parseInt(win.style.left);
            
            //�ƶ�����¼�
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
            //��������¼���ע��������document������tBar
            document.onmouseup = function()
            {
                moveable = false;
            }
        }*/

        
        
        //��ȡ������¼��ķ���������ie��firefox
        function getEvent()
        {
            return window.event || arguments.callee.caller.arguments[0];
        }
        
        //�����ı������͵ײ��İ�ť���еġ��رհ�ť���Ĺر��¼�
        //btn.onclick = closeCon.onclick = function()
        //{
        //    remChild(win);
        //    remChild(mask);
        //}
    }
	 