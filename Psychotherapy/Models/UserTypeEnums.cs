using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Insourcia.Psychotherapy.Models
{
    public enum UserTypeEnums
    {
        /// <summary>
        /// 系统管理员:1
        /// </summary>
        System = 1,
        /// <summary>
        /// 站点管理员：2
        /// </summary>
        Site=2,
        /// <summary>
        /// 普通用户：3
        /// </summary>
        User=3,
        
        /// <summary>
        /// 未知:-1
        /// </summary>
        None=-1
    }
}