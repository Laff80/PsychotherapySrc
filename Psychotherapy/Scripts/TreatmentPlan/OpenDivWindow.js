

/*
 *  ��������div���ڡ�
    1���ӿ�˵����DivWindow(id,title,width,height,content)  ���캯��������һ���������ڶ���
	    ������id ��������id��
		      title���������ڱ������ƣ�
			  width���������ڿ��
			  height���������ڸ߶�
			  content�� ����������ʾ����
    
	2���ӿ�˵���� closeDivWindow(id)  �رմ���
	    ������ id ��������id
	
	3���ӿ�˵����setPopupTopTitleFontColor(PopupTopTitleFontColor) ���õ������ڱ���������ɫ
	       ������

    4���ӿ�˵����setPopupTopBgColor(tBgColor) ���õ������ڱ��ⱳ����ɫ

	5���ӿ�˵����setPopupColor(borderColor,bgColor,tFontColor,cBgColor,fColor) ���õ������ڷ��,�����������ı������������ڱ߿���ɫ�����ݴ��屳����ɫ�����ݴ���������ɫ

	6���ӿ�˵����open()

	ʹ�÷����� 
	    var a = new DivWindow("1","���ڲ���",580,400,"Welcome to visited my personal website:<br><a href=http://www.youthfly.net target=_blank>http://www.youthfly.net</a><br><ahref=http://www ... youthfly.net</a><br><br>thx!!!=)..."L);
	    a.setPopupTopBgColor("black","blue","white","white","black");
		a.open();

	���ɵ�html��
	<div id='"window"+id'></div>  ���Ʊ�����div��ʹ�����𽥱䰵
    <div id='"windowTopBg"+id'>
	  <div id='"windowTop"+id'>
	    <span id='"windowTopTitle"+id'>title</span>
		<span id='"windowTopOperate"+id'>maxORmin</span>
		<span id='"windowTopClose"+id'>close</span>
	  </div>
	  <div id='"windowContent"+id'>content</div>
	</div>

	@author ERIC
	@date  2007.11.8
 */

var isIe = (document.all)?true:false;
var moveable=false; 
var topDivBorderColor = "#336699";//��ʾ���ڵı߿���ɫ 
var topDivBgColor = "#6795B4";//��ʾ���ڵı���ı�����ɫ 
var contentBgColor = "white";//������ʾ���ڵı�����ɫ
var contentFontColor = "black";//������ʾ����������ɫ
var titleFontColor = "white"; //�������ڱ���������ɫ
var index=10000;//z-index;
// �����������ڣ����캯��
function DivWindow(id,title,w,h,content)
{
  this.id = id;//����id
  this.zIndex = index +2;
  this.title = title;//������������
  this.message = content;//������������
  this.width = w;//�������ڿ��
  this.height = h;//�������ڸ߶�
  this.left =  (document.body.clientWidth) ? (document.body.clientWidth - this.width)/2 : 0;//��������λ�ã�����Ļ��ߵ�λ��
  this.top = (document.body.clientHeight) ? (document.body.clientHeight - this.height)/2 : 0;//��������λ�ã�����Ļ�ϱߵ�λ��
  //this.init = init;
  //this.init();
}
//���ݹ��캯���趨��ʼֵ��������������
DivWindow.prototype = {
  //���õ������ڱ���������ɫ
  setPopupTopTitleFontColor:function(tFontColor)
  {
    titleFontColor = tFontColor;
  },
  //���õ������ڱ��ⱳ����ɫ
  setPopupTopBgColor:function(tBgColor)
  {
    topDivBgColor = tBgColor;
  },
  //���õ������ڷ��,�����������ı������������ڱ߿���ɫ�����ݴ��屳����ɫ�����ݴ���������ɫ
  setPopupColor:function(borderColor,bgColor,tFontColor,cBgColor,fColor)
  {
     topDivBorderColor = borderColor;
	 topDivBgColor = bgColor;
	 titleFontColor = tFontColor;
	 contentBgColor = cBgColor;
     contentFontColor = fColor;
  },
  //��һ����������
  open: function()
  {
	  var sWidth,sHeight; 
	  sWidth=document.body.clientWidth; 
	  sHeight=document.body.clientHeight; 
	  var bgObj=document.createElement("div"); 
	  bgObj.setAttribute('id','window'+this.id); 
	  var styleStr="top:0px;left:0px;position:absolute;background:#245;width:"+sWidth+"px;height:"+sHeight+"px;";  
		  styleStr+=(isIe)?"filter:alpha(opacity=0);":"opacity:0;";  
	  bgObj.style.cssText=styleStr;  
	  document.body.appendChild(bgObj); 
	  //�ñ����𽥱䰵
	  showBackground(bgObj,25);

	  // �������ڿ��屳������
	  var windowTopBgDiv = document.createElement("div"); 
	  windowTopBgDiv.setAttribute('id','windowTopBg'+this.id); 
	  windowTopBgDiv.style.position = "absolute"; 
	  windowTopBgDiv.style.zIndex = this.zIndex ;
	  windowTopBgDiv.style.width = this.width ;
	  windowTopBgDiv.style.height = this.height;
	  windowTopBgDiv.style.left = this.left;
	  windowTopBgDiv.style.top = this.top;
	  windowTopBgDiv.style.background = topDivBgColor;
	  windowTopBgDiv.style.fontSize = "9pt";
	  windowTopBgDiv.style.cursor = "default";
	  windowTopBgDiv.style.border = "1px solid " + topDivBorderColor;
	  
	  if (windowTopBgDiv.addEventListener) {   
			windowTopBgDiv.addEventListener('DOMContentLoaded', onmousedown, false);   //firefox
			windowTopBgDiv.addEventListener('onmousedown', onmousedown, false);
		} else if (windowTopBgDiv.attachEvent)  {
  		    windowTopBgDiv.attachEvent('onmousedown', onmousedown);  //IE
		}

	  function onmousedown(){
	  		if(windowTopBgDiv.style.zIndex!=index)
	 		{
				 index = index + 2;
				 var idx = index;
			 	 windowTopBgDiv.style.zIndex=idx;
	 	 	}
	     }

	  //windowTopBgDiv.attachEvent("onmousedown",); 
	  // ��������ͷ������
	  var windowTopDiv =  document.createElement("div"); 
	  windowTopDiv.setAttribute('id','windowTop'+this.id); 
	  windowTopDiv.style.position = "absolute"; 
	  windowTopDiv.style.background = topDivBgColor;//"white"; 
	  windowTopDiv.style.color = titleFontColor; 
	  windowTopDiv.style.cursor = "move"; 
	  windowTopDiv.style.height = 20; 
	  windowTopDiv.style.width = this.width-2*2;
	  //��ʼ�϶�;
	  if (windowTopDiv.addEventListener) {   
			windowTopDiv.addEventListener('DOMContentLoaded', onmousedown, false);   //firefox
			windowTopDiv.addEventListener('onmousedown', onmousedown, false);
		} else if (windowTopDiv.attachEvent)  {
  			windowTopDiv.attachEvent('onmousedown', onmousedown);  //IE
		}


	  
	  //windowTopDiv.attachEvent("onmousedown",);
	  function onmousedown(){
		if(event.button==1)
		{
		  //����������;
		  windowTopDiv.setCapture();
		  //�������;
		  var win = windowTopDiv.parentNode;
		  //��¼���Ͳ�λ��;
		  x0 = event.clientX;
		  y0 = event.clientY;
		  x1 = parseInt(win.style.left);
		  y1 = parseInt(win.style.top);
		  //��¼��ɫ;
		  //topDivBgColor = windowTopDiv.style.backgroundColor;
		  //�ı���;
		  //windowTopDiv.style.backgroundColor = topDivBorderColor;
		  win.style.borderColor = topDivBorderColor;
		  moveable = true;
		}
	  }
	  //ֹͣ�϶�
	  if (windowTopDiv.addEventListener) {   
			windowTopDiv.addEventListener('DOMContentLoaded', onmouseup, false);   //firefox
			windowTopDiv.addEventListener('onmouseup', onmouseup, false);
		} else if (windowTopDiv.attachEvent)  {
  			windowTopDiv.attachEvent('onmouseup', onmouseup);  //IE
		}

		function onmouseup(){
		if(moveable)
		{
		  var win = windowTopDiv.parentNode;
		  win.style.borderColor = topDivBgColor;
		  windowTopDiv.style.backgroundColor = topDivBgColor;
		  windowTopDiv.releaseCapture();
		  moveable = false;
		}
	  }
	  //windowTopDiv.attachEvent("onmouseup",);
	  // ��ʼ�϶�
	  if (windowTopDiv.addEventListener) {   
			windowTopDiv.addEventListener('DOMContentLoaded', onmousemove, false);   //firefox
			windowTopDiv.addEventListener('onmousemove', onmousemove, false);
		} else if (window.attachEvent)  {
  			windowTopDiv.attachEvent('onmousemove', onmousemove);  //IE
		}
		
	  //windowTopDiv.attachEvent("onmousemove",);
	  function onmousemove(){
		if(moveable)
		{
		  var win = windowTopDiv.parentNode;
		  win.style.left = x1 + event.clientX - x0;
		  win.style.top = y1 + event.clientY - y0;
		}
	  }
	  // ˫����������
	   if (windowTopDiv.addEventListener) {   
			windowTopDiv.addEventListener('DOMContentLoaded', ondblclick, false);   //firefox
			windowTopDiv.addEventListener('ondblclick', ondblclick, false);
		} else if (windowTopDiv.attachEvent)  {
  			windowTopDiv.attachEvent('ondblclick', ondblclick);  //IE
		}
	  //windowTopDiv.attachEvent("ondblclick",);
	function ondblclick(){
		 maxOrMinPopupDiv(windowTopOperateSpan,windowContentDiv);
	  }
	  //����һ���������ڱ������ʾ
	  var windowTopTitleSpan =  document.createElement("span"); 
	  windowTopTitleSpan.setAttribute('id','windowTopTitle'+this.id); 
	  windowTopTitleSpan.style.width = this.width-2*12-4; 
	  windowTopTitleSpan.style.paddingLeft = "3px"; 
	  windowTopTitleSpan.innerHTML = this.title; 
	 
	  //����һ������������С������󻯵Ĳ���
	  var windowTopOperateSpan =  document.createElement("span"); 
	  windowTopOperateSpan.setAttribute('id','windowTopOperate'+this.id); 
	  windowTopOperateSpan.style.width = 12;
	  windowTopOperateSpan.style.borderWidth = "0px";
	  windowTopOperateSpan.style.color = titleFontColor;//"white";
	  windowTopOperateSpan.style.fontFamily = "webdings";
	  windowTopOperateSpan.style.cursor = "default"; 
	  windowTopOperateSpan.innerHTML = "0"; 
	  //��󻯻�����С���������ڲ���
	  if (windowTopOperateSpan.addEventListener) {   
			windowTopOperateSpan.addEventListener('DOMContentLoaded', onclick, false);   //firefox
			windowTopOperateSpan.addEventListener('onclick', onclick, false);
		} else if (windowTopOperateSpan.attachEvent)  {
  			windowTopOperateSpan.attachEvent('onclick', onclick);  //IE
		}
		function onclick(){ 
		  maxOrMinPopupDiv(windowTopOperateSpan,windowContentDiv);
	  }
	  //windowTopOperateSpan.attachEvent("onclick",);

		//����һ���������ڹرյĲ���
	  var windowTopCloseSpan =  document.createElement("span"); 
	  windowTopCloseSpan.setAttribute('id','windowTopClose'+this.id); 
	  windowTopCloseSpan.style.width = 12;
	  windowTopCloseSpan.style.borderWidth = "0px";
	  windowTopCloseSpan.style.color = titleFontColor;//"white";
	  windowTopCloseSpan.style.fontFamily = "webdings";
	  windowTopCloseSpan.style.cursor = "default";
	  windowTopCloseSpan.innerHTML = "r"; 
	  // �رմ���
	  if (windowTopCloseSpan.addEventListener) {   
			windowTopCloseSpan.addEventListener('DOMContentLoaded', onclick2, false);   //firefox
			windowTopCloseSpan.addEventListener('onclick', onclick2, false);
		} else if (windowTopCloseSpan.attachEvent)  {
  			windowTopCloseSpan.attachEvent('onclick', onclick2);  //IE
		}
	 //windowTopCloseSpan.attachEvent("onclick",);
	  function onclick2(){  
		windowTopDiv.removeChild(windowTopTitleSpan); 
		windowTopDiv.removeChild(windowTopOperateSpan); 
		windowTopDiv.removeChild(windowTopCloseSpan); 
		windowTopBgDiv.removeChild(windowTopDiv);
		windowTopBgDiv.removeChild(windowContentDiv);
		document.body.removeChild(windowTopBgDiv); 
		document.body.removeChild(bgObj); 
	  }

	  // ����
	 var windowContentDiv =  document.createElement("div"); 
	  windowContentDiv.setAttribute('id','windowContent'+this.id);  
	  windowContentDiv.style.background = contentBgColor; 
	  windowContentDiv.style.color = contentFontColor; 
	  windowContentDiv.style.cursor = "default"; 
	  windowContentDiv.style.height = (this.height - 20 - 4);
	  windowContentDiv.style.width = "100%";
	  windowContentDiv.style.position = "relative";
	  windowContentDiv.style.left = 0;
	  windowContentDiv.style.top = 24;

	  windowContentDiv.style.lineHeight = "20px";
	  windowContentDiv.style.fontSize = "10pt";
	  windowContentDiv.style.wordBreak = "break-all";
	  windowContentDiv.style.padding = "3px";
	  windowContentDiv.innerHTML = this.message;

	  //������д�뵽�ļ���
	  windowTopDiv.appendChild(windowTopTitleSpan);
	  windowTopDiv.appendChild(windowTopOperateSpan);
	  windowTopDiv.appendChild(windowTopCloseSpan);
	  windowTopBgDiv.appendChild(windowTopDiv);
	  windowTopBgDiv.appendChild(windowContentDiv);
	  document.body.appendChild(windowTopBgDiv); 
  }
}

  //��������С��̽������
  function maxOrMinPopupDiv(windowTopOperateSpan,windowContentDiv)
  {
    var win = windowTopOperateSpan.parentNode.parentNode;
	var tit = windowTopOperateSpan.parentNode;
	var flg = windowContentDiv.style.display=="none";
	if(flg)
	{
	  win.style.height = parseInt(windowContentDiv.style.height) + parseInt(tit.style.height) + 2*2;
	  windowContentDiv.style.display = "block";
	  windowTopOperateSpan.innerHTML = "0";
	}
	else
	{
	  win.style.height =  parseInt(tit.style.height) + 2*2;
	  windowTopOperateSpan.innerHTML = "2";
	  windowContentDiv.style.display = "none";	
	}
  }
  //�ñ��������䰵  
  function showBackground(obj,endInt)  
  {  
   if(isIe)  
   {  
	  obj.filters.alpha.opacity+=1;  
	  if(obj.filters.alpha.opacity<endInt)  
	  {  
		setTimeout(function(){this.showBackground(obj,endInt)},5);  
	  }  
	}
	else
	{  
	  var al=parseFloat(obj.style.opacity);al+=0.01;  
	  obj.style.opacity=al;  
	  if(al<(endInt/100))  
	  {
	     setTimeout(function(){this.showBackground(obj,endInt)},5);
	  }  
	}  
  }
  //�رյ�������
  function closeDivWindow(id)
  {
  var windowTopTitleSpan = document.getElementById("windowTopTitle"+id);
  var windowTopOperateSpan = document.getElementById("windowTopOperate"+id);
  var windowTopCloseSpan = document.getElementById("windowTopClose"+id);
  var windowTopDiv = document.getElementById("windowTop"+id);
  var windowTopBgDiv = document.getElementById("windowTopBg"+id);
  var windowContentDiv = document.getElementById("windowContent"+id);
  var bgObj = document.getElementById("window"+id);

  windowTopDiv.removeChild(windowTopTitleSpan); 
  windowTopDiv.removeChild(windowTopOperateSpan); 
  windowTopDiv.removeChild(windowTopCloseSpan); 
  windowTopBgDiv.removeChild(windowTopDiv);
  windowTopBgDiv.removeChild(windowContentDiv);
  document.body.removeChild(windowTopBgDiv); 
  document.body.removeChild(bgObj); 
}