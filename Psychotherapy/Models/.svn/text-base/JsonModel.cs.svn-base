using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Psychotherapy.Models
{
    public class JsonModel
    {
        /// <summary>
        /// 是否成功
        /// </summary>
        public bool Success
        {
            get;
            set;
        }

        /// <summary>
        /// 消息
        /// </summary>
        public string Message { get; set; }

        /// <summary>
        /// 带有Html的字符串
        /// </summary>
        public string HtmlString { get; set; }

        /// <summary>
        /// 创建JsonModel对象
        /// </summary>
        /// <param name="success"></param>
        /// <param name="message"></param>
        /// <param name="htmlString"></param>
        /// <returns></returns>
        public static JsonModel Create(bool success, string message, string htmlString)
        {
            return new JsonModel { Success = success, Message = message, HtmlString = htmlString };
        }

        /// <summary>
        /// 创建返回JsonResult对象
        /// </summary>
        /// <param name="success">是否成功</param>
        /// <param name="message">消息</param>       
        /// <returns></returns>
        public static JsonResult CreateJsonResult(bool success, string message)
        {
            return CreateJsonResult(success, message, string.Empty);
        }
        /// <summary>
        /// 创建返回JsonResult对象
        /// </summary>
        /// <param name="success">是否成功</param>
        /// <param name="message">消息</param>
        /// <param name="htmlString">Html字符串</param>
        /// <returns></returns>
        public static JsonResult CreateJsonResult(bool success, string message, string htmlString)
        {
            JsonResult ar = new JsonResult();
            ar.Data = new JsonModel { Success = success, Message = message, HtmlString = htmlString };
            return ar;
        }
    }
}