using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.IO;
using System.Xml;
namespace Psychotherapy.Utility
{   
   
    public class XmlResult:ActionResult
    {
        // 可被序列化的内容
        public XmlDocument Data { get; set; }
       

        public XmlResult(XmlDocument data)
        {
            Data=data;
        }

        // 主要是重写这个方法 
         public override void ExecuteResult(ControllerContext context) 
         { 
                 if (context == null) 
                 { 
                       throw new ArgumentNullException("context"); 
                 } 
 
                 HttpResponseBase response = context.HttpContext.Response; 
 
                 // 设置 HTTP Header 的 ContentType 
                 response.ContentType = "text/xml"; 

                 if (Data != null) 
                 { 
                     // 序列化 Data 并写入 Response 
                     //XmlSerializer serializer = new XmlSerializer(DataType); 
                   //  MemoryStream ms = new MemoryStream();
                     response.Write(Data.OuterXml); 
                 }
          }

    
    }
}