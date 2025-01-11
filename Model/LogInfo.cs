using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Insourcia.Psychotherapy.Model
{
    /// <summary>
    /// 使用Log4net的扩展信息
    /// </summary>
    public class LogInfo
    {

        /// <summary>
        /// 用户ID
        /// </summary>
        public string UserID
        {
            get;
            set;
        }

        /// <summary>
        /// 用户名
        /// </summary>
        public string UserName { get; set; }

        /// <summary>
        /// 操作对象
        /// </summary>
        public string Operand
        {
            get;
            set;
        }

        /// <summary>
        /// 当前IP地址
        /// </summary>
        public string IP
        {
            get;
            set;
        }


        /// <summary>
        /// 消息
        /// </summary>
        public string Message
        {
            get;
            set;
        }

        /// <summary>
        /// 日志类型
        /// </summary>
        public int LogType { get; set; }

        /// <summary>
        /// 操作类型
        /// </summary>
        public int ActionType { get; set; }
    }
}
