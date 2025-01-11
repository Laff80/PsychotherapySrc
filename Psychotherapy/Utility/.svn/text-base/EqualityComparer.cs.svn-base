using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Psychotherapy.Utility
{    

    /// <summary>
    /// 比较器
    /// </summary>
    /// <typeparam name="T"></typeparam>
    public class CustomComparer<T> : IEqualityComparer<T>
    {
        private Func<T,T,bool> ec;
        public CustomComparer() { }
        public CustomComparer(Func<T,T,bool> e)
        {
            this.ec = e;
        }
        #region IEqualityComparer 成员

        public bool Equals(T x, T y)
        {
            if (null != this.ec)
                return this.ec(x, y);
            else
                return false;
        }

        public int GetHashCode(T obj)
        {
            return obj.ToString().GetHashCode();
        }

        #endregion

    }
}