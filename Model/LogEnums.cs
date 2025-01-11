using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Insourcia.Psychotherapy.Model
{
    /// <summary>
    /// 日志类型枚举
    /// </summary>
    public enum LogMessageType
    {
        /// <summary>
        /// 其它
        /// </summary>
        Others = 0,
        /// <summary>
        /// 系统
        /// </summary>
        System = 1,
        /// <summary>
        /// 错误
        /// </summary>
        Error = 2,
        /// <summary>
        /// 普通信息
        /// </summary>
        Info = 3
    }

     [Flags]
    public enum ActionTypeOptions
    {
        /// <summary>
        /// 添加操作
        /// </summary>
        Add = 0x0001,
        /// <summary>
        /// 修改操作
        /// </summary>
        Edit = 0x0002,
        /// <summary>
        /// 删除操作
        /// </summary>
        Delete = 0x0004,

         /// <summary>
         /// 查询操作
         /// </summary>
         Query=0x0008,
        /// <summary>
        /// 未知
        /// </summary>
        None = 0

    }
}
