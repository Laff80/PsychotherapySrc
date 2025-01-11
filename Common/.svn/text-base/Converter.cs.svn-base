using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Reflection;
using System.ComponentModel;

namespace Insourcia.Common
{
    /// <summary>
    /// 名    称：类型转换工具类<br/>    
    /// 作    者：小羊<br/>
    /// 创始时间：2010-4-10 10:18:22<br/>
    /// 描    述：提供常见类型的转换方法<br/>
    /// </summary>
    /// <remarks>
    /// ----------修改记录------------
    /// </remarks>
    public class Converter
    {
        /// <summary>
        /// 将string 转为 short
        /// </summary>
        /// <param name="str"></param>
        /// <returns></returns>
        public static short ToShort(string str)
        {
            return Convert.ToInt16(str);
        }
        /// <summary>
        /// 将string 转为 short ,如果转换失败,返回默认值
        /// </summary>
        /// <param name="str"></param>
        /// <param name="defaultValue"></param>
        /// <returns></returns>
        public static short ToShort(string str, short defaultValue)
        {
            try
            {
                return ToShort(str);
            }
            catch
            {
                return defaultValue;
            }
        }

        /// <summary>
        /// 将string 转为 int
        /// </summary>
        /// <param name="str"></param>
        /// <returns></returns>
        public static int ToInt(string str)
        {
            return Convert.ToInt32(str);
        }
        /// <summary>
        /// 将string 转为 int ,如果转换失败,返回默认值
        /// </summary>
        /// <param name="str"></param>
        /// <param name="defaultValue"></param>
        /// <returns></returns>
        public static int ToInt(string str, int defaultValue)
        {
            try
            {
                return ToInt(str);
            }
            catch
            {
                return defaultValue;
            }
        }

        /// <summary>
        /// 将string 转为 long
        /// </summary>
        /// <param name="str"></param>
        /// <returns></returns>
        public static long ToLong(string str)
        {
            return Convert.ToInt64(str);
        }

        /// <summary>
        /// 将string 转为 long ,如果转换失败,返回默认值
        /// </summary>
        /// <param name="str"></param>
        /// <param name="defaultValue"></param>
        /// <returns></returns>
        public static long ToLong(string str, long defaultValue)
        {
            try
            {
                return ToLong(str);
            }
            catch
            {
                return defaultValue;
            }
        }

        /// <summary>
        /// 将string 转为 bool 
        /// </summary>
        /// <param name="str"></param>
        /// <returns></returns>
        public static bool ToBool(string str)
        {
           return Convert.ToBoolean(str);
        }

        /// <summary>
        /// 将string 转为 bool ,如果转换失败,返回默认值
        /// </summary>
        /// <param name="str"></param>
        /// <param name="defaultValue"></param>
        /// <returns></returns>
        public static bool ToBool(string str, bool defaultValue)
        {
            try
            {
                return ToBool(str);
            }
            catch
            {
                return defaultValue;
            }
        }

        /// <summary>
        /// 将string 转为 char
        /// </summary>
        /// <param name="str"></param>
        /// <returns></returns>
        public static char ToChar(string str)
        {
            return Convert.ToChar(str);
        }

        /// <summary>
        /// 将string 转为 char ,如果转换失败,返回默认值
        /// </summary>
        /// <param name="str"></param>
        /// <param name="defaultValue"></param>
        /// <returns></returns>
        public static char ToChar(string str, char defaultValue)
        {
            try
            {
                return ToChar(str);
            }
            catch
            {
                return defaultValue;
            }
        }

        /// <summary>
        /// 将string 转为 DateTime
        /// </summary>
        /// <param name="str"></param>
        /// <returns></returns>
        public static DateTime ToDateTime(string str)
        {
            return DateTime.Parse(str);
        }

        /// <summary>
        /// 将string 转为 DateTime,如果转换失败,返回默认值
        /// </summary>
        /// <param name="str"></param>
        /// <param name="defaultValue"></param>
        /// <returns></returns>
        public static DateTime ToDateTime(string str, DateTime defaultValue)
        {
            try
            {
                return ToDateTime(str);
            }
            catch
            {
                return defaultValue;
            }
        }

        /// <summary>
        /// 将string 转为 float
        /// </summary>
        /// <param name="str"></param>
        /// <returns></returns>
        public static float ToFloat(string str)
        {
            return Convert.ToSingle(str);
        }

        /// <summary>
        /// 将string 转为 float,如果转换失败,返回默认值
        /// </summary>
        /// <param name="str"></param>
        /// <param name="defaultValue"></param>
        /// <returns></returns>
        public static float ToFloat(string str, float defaultValue)
        {
            try
            {
                return ToFloat(str);
            }
            catch
            {
                return defaultValue;
            }
        }

        /// <summary>
        /// 将string 转为 double
        /// </summary>
        /// <param name="str"></param>
        /// <returns></returns>
        public static double ToDouble(string str)
        {
            return Convert.ToDouble(str);
        }

        /// <summary>
        /// 将string 转为 double,如果转换失败,返回默认值
        /// </summary>
        /// <param name="str"></param>
        /// <param name="defaultValue"></param>
        /// <returns></returns>
        public static double ToDouble(string str, double defaultValue)
        {
            try
            {
                return ToDouble(str);
            }
            catch
            {
                return defaultValue;
            }
        }

        /// <summary>
        /// 将string 转为 decimal
        /// </summary>
        /// <param name="str"></param>
        /// <returns></returns>
        public static decimal ToDecimal(string str)
        {
            return Convert.ToDecimal(str);
        }

        /// <summary>
        /// 将string 转为 double,如果转换失败,返回默认值
        /// </summary>
        /// <param name="str"></param>
        /// <param name="defaultValue"></param>
        /// <returns></returns>
        public static decimal ToDecimal(string str, decimal defaultValue)
        {
            try
            {
                return ToDecimal(str);
            }
            catch
            {
                return defaultValue;
            }
        }

        /// <summary>
        /// 把String类型 转换成Guid类型，转换失败返回默认值
        /// </summary>
        /// <param name="value">要转换的字符串</param>
        /// <param name="defaultValue">转换失败时的默认值</param>
        /// <returns></returns>
        public static Guid ToGuid(string value, Guid defaultValue)
        {
            try
            {
                return ToGuid(value);
            }
            catch
            {
                return defaultValue;
            }
        }

        /// <summary>
        /// 把string 类型的值转换成等效的Guid
        /// </summary>
        /// <param name="value"></param>
        /// <returns></returns>
        public static Guid ToGuid(string value)
        {           
            return new Guid(value);
        }

        /// <summary>
        ///  将指定值转换为指定的 T 
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="value"></param>
        /// <returns></returns>
        public static T ChangeType<T>(object value)
        {
            Type t = typeof(T);
            if (t.IsGenericType && t.GetGenericTypeDefinition().Equals(typeof(Nullable<>)))
            {
                if (value == null||(value is string&&string.IsNullOrEmpty(value.ToString())))
                    return default(T);

                System.ComponentModel.NullableConverter nullableConverter = new System.ComponentModel.NullableConverter(t);

                t = nullableConverter.UnderlyingType;
            }
            if (t.IsEnum)
            {
                try
                {
                    return (T)Enum.Parse(t, value.ToString(), true);
                }
                catch
                {
                    throw new Exception("枚举类型\"" + t.ToString() + "\"中没有定义\"" + (value == null ? "null" : value.ToString()) + "\"");
                }
            }
            if (t.Equals(typeof(Guid)))
            {
                if (value is Guid)
                    return (T)value;
                GuidConverter gc = new GuidConverter();
                return (T)gc.ConvertFrom(value);
                
            }

            return (T)Convert.ChangeType(value, t);
        }

        /// <summary>
        ///  将指定值转换为指定的 T ,如果转换失败返回默认值
        /// </summary>
        /// <typeparam name="T">转换目标类型</typeparam>
        /// <param name="value">要转换的值</param>
        /// <param name="defaultValue">转换失败时返回的默认值</param>
        /// <returns></returns>
        public static T ChangeType<T>(object value, T defaultValue)
        {
            try
            {
                return ChangeType<T>(value);
            }
            catch
            {
                return defaultValue;
            }
        }
    }
}
