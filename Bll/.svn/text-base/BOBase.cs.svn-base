using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Insourcia.Psychotherapy.Bll
{
    public class BOBase<T> where T : BOBase<T>, new()
    {
        private static T s_Instance = null;

        /// <summary>
        /// 获取当前业务逻辑对象的实例
        /// </summary>
        public static T Instance
        {
            get
            {
                if (s_Instance == null)
                    s_Instance = new T();
                return s_Instance;
            }
        }
    }
}
