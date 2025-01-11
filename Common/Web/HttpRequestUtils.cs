using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;

namespace Insourcia.Common.Web
{
    /// <summary>
    /// 名    称：页面请求工具类<br/>
    /// 版    本：1.0<br/>
    /// 作    者：羊国基<br/>
    /// 创始时间：2010-08-24 09:54:52<br/>
    /// 描    述：<br/>
    /// 提供页面请求的参数获取等功能<br/>
    /// </summary>
    /// <remarks>
    /// ----------修改记录------------
    /// </remarks>
    public class HttpRequestUtils
    {
        public static HttpRequest Request
        {
            get { return HttpContext.Current.Request; }
        }

        #region String
        /// <summary>
        /// 从Form获取字符串类型的参数
        /// </summary>
        /// <param name="name"></param>
        /// <returns></returns>
        public static string FormString(string name)
        {
            return Request.Form[name];
        }
        /// <summary>
        /// 从Form获取字符串类型的参数,如果没有则返回默认值
        /// </summary>
        /// <param name="name"></param>
        /// <param name="defaultValue"></param>
        /// <returns></returns>
        public static string FormString(string name, string defaultValue)
        {
            string value = Request.Form[name];
            return value == null ? defaultValue : value;
        }
        /// <summary>
        /// 从Query获取字符串类型的参数
        /// </summary>
        /// <param name="name"></param>
        /// <returns></returns>
        public static string QueryString(string name)
        {
            return Request.QueryString[name];
        }
        /// <summary>
        /// 从Query获取字符串类型的参数,如果没有则返回默认值
        /// </summary>
        /// <param name="name"></param>
        /// <param name="defaultValue"></param>
        /// <returns></returns>
        public static string QueryString(string name, string defaultValue)
        {
            string value = Request.QueryString[name];
            return value == null ? defaultValue : value;
        }
        /// <summary>
        /// 先从Query获取参数，如果没有再从Form获取
        /// </summary>
        /// <param name="name"></param>
        /// <returns></returns>
        public static string GetString(string name)
        {
            string value = Request.QueryString[name];
            if (value == null)
            {
                value = Request.Form[name];
            }
            return value;
        }
        /// <summary>
        /// 先从Form获取参数，如果没有再从Query获取,如果仍然为空，返回默认值
        /// </summary>
        /// <param name="name"></param>
        /// <param name="defaultValue"></param>
        /// <returns></returns>
        public static string GetString(string name, string defaultValue)
        {
            string value = GetString(name);
            return value == null ? defaultValue : value;
        }
        /// <summary>
        /// 从Form获取参数的字符串数组
        /// </summary>
        /// <param name="name"></param>
        /// <returns></returns>
        public static string[] FormStringArray(string name)
        {
            string[] values = Request.Form.GetValues(name);
            return values == null ? new string[0] : values;
        }
        /// <summary>
        /// 从Query获取参数的字符串数组
        /// </summary>
        /// <param name="name"></param>
        /// <returns></returns>
        public static string[] QueryStringArray(string name)
        {
            string[] values = Request.QueryString.GetValues(name);
            return values == null ? new string[0] : values;
        }
        /// <summary>
        /// 从Form和Query获取参数的字符串数组，返回两个地方的总和
        /// </summary>
        /// <param name="name"></param>
        /// <returns></returns>
        public static string[] GetStringArray(string name)
        {
            string[] formArray = FormStringArray(name);
            string[] queryArray = QueryStringArray(name);
            string[] strArray = new string[formArray.Length + queryArray.Length];
            Array.ConstrainedCopy(formArray, 0, strArray, 0, formArray.Length);
            Array.ConstrainedCopy(queryArray, 0, strArray, formArray.Length, queryArray.Length);
            return strArray;
        } 
        #endregion

        /*================Boolean类型参数获取================*/


        #region Boolean
        private static bool ToBool(string str)
        {
            if (string.IsNullOrEmpty(str)) return false;
            str = str.ToLower();
            if (str != "true" && str != "false") throw new Exception("错误的Boolean表达式！");
            return "true" == str;
        }

        /// <summary>
        /// 从Form获取bool类型的参数
        /// </summary>
        /// <param name="name"></param>
        /// <returns></returns>
        public static bool FormBool(string name)
        {
            string str = FormString(name);
            if (string.IsNullOrEmpty(str)) throw new Exception("没有名为“" + name + "”的参数！");
            return ToBool(str);
        }

        /// <summary>
        /// 从Form获取bool类型的参数,如果获取或转换失败，返回默认值
        /// </summary>
        /// <param name="name"></param>
        /// <param name="defaultValue"></param>
        /// <returns></returns>
        public static bool FormBool(string name, bool defaultValue)
        {
            try
            {
                return FormBool(name);
            }
            catch
            {
                return defaultValue;
            }
        }
        /// <summary>
        /// 从Query获取Boolean类型的参数 
        /// </summary>
        /// <param name="name"></param>
        /// <returns></returns>
        public static bool QueryBool(string name)
        {
            string str = QueryString(name);
            if (string.IsNullOrEmpty(str)) throw new Exception("没有名为“" + name + "”的参数！");
            return ToBool(str);
        }
        /// <summary>
        /// 从Query获取bool类型的参数,如果获取或转换失败，返回默认值
        /// </summary>
        /// <param name="name"></param>
        /// <param name="defaultValue"></param>
        /// <returns></returns>
        public static bool QueryBool(string name, bool defaultValue)
        {
            try
            {
                return QueryBool(name);
            }
            catch
            {
                return defaultValue;
            }
        }

        /// <summary>
        /// 从Form获取bool参数的数组
        /// </summary>
        /// <param name="name"></param>
        /// <returns></returns>
        public static bool[] FormBoolArray(string name)
        {
            string[] strArray = FormStringArray(name);
            return Array.ConvertAll<string, bool>(strArray, delegate(string str)
            {
                return ToBool(str);
            });
        }
        /// <summary>
        /// 从Query获取bool参数的数组
        /// </summary>
        /// <param name="name"></param>
        /// <returns></returns>
        public static bool[] QueryBoolArray(string name)
        {
            string[] strArray = QueryStringArray(name);
            return Array.ConvertAll<string, bool>(strArray, delegate(string str)
            {
                return ToBool(str);
            });
        } 
        #endregion

        #region Int
        /*================Int类型参数获取================*/
        /// <summary>
        /// 从Form获取int类型的参数
        /// </summary>
        /// <param name="name"></param>
        /// <returns></returns>
        public static int FormInt(string name)
        {
            string str = FormString(name);
            if (string.IsNullOrEmpty(str)) throw new Exception("没有名为“" + name + "”的参数！");
            return Convert.ToInt32(str);
        }
        /// <summary>
        /// 从Form获取int类型的参数,如果获取或转换失败，返回默认值
        /// </summary>
        /// <param name="name"></param>
        /// <param name="defaultValue"></param>
        /// <returns></returns>
        public static int FormInt(string name, int defaultValue)
        {
            try
            {
                return FormInt(name);
            }
            catch
            {
                return defaultValue;
            }
        }
        /// <summary>
        /// 从Query获取int类型的参数
        /// </summary>
        /// <param name="name"></param>
        /// <returns></returns>
        public static int QueryInt(string name)
        {
            string str = QueryString(name);
            if (string.IsNullOrEmpty(str)) throw new Exception("没有名为“" + name + "”的参数！");
            return Convert.ToInt32(str);
        }
        /// <summary>
        /// 从Query获取int类型的参数,如果获取或转换失败，返回默认值
        /// </summary>
        /// <param name="name"></param>
        /// <param name="defaultValue"></param>
        /// <returns></returns>
        public static int QueryInt(string name, int defaultValue)
        {
            try
            {
                return QueryInt(name);
            }
            catch
            {
                return defaultValue;
            }
        }
        /// <summary>
        /// 从Form获取int参数的数组
        /// </summary>
        /// <param name="name"></param>
        /// <returns></returns>
        public static int[] FormIntArray(string name)
        {
            string[] strArray = FormStringArray(name);
            return Array.ConvertAll<string, int>(strArray, delegate(string str)
            {
                return Convert.ToInt32(str);
            });
        }
        /// <summary>
        /// 从Query获取int参数的数组
        /// </summary>
        /// <param name="name"></param>
        /// <returns></returns>
        public static int[] QueryIntArray(string name)
        {
            string[] strArray = QueryStringArray(name);
            return Array.ConvertAll<string, int>(strArray, delegate(string str)
            {
                return Convert.ToInt32(str);
            });
        }

        #endregion


        #region Long
        /*================Long类型参数获取================*/
        /// <summary>
        /// 从Form获取long 类型的参数
        /// </summary>
        /// <param name="name"></param>
        /// <returns></returns>
        public static long FormLong(string name)
        {
            string str = FormString(name);
            if (string.IsNullOrEmpty(str)) throw new Exception("没有名为“" + name + "”的参数！");
            return Convert.ToInt64(str);
        }
        /// <summary>
        /// 从Form获取long 类型的参数,如果获取或转换失败，返回默认值
        /// </summary>
        /// <param name="name"></param>
        /// <param name="defaultValue"></param>
        /// <returns></returns>
        public static long FormLong(string name, long defaultValue)
        {
            try
            {
                return FormLong(name);
            }
            catch
            {
                return defaultValue;
            }
        }
        /// <summary>
        /// 从Query获取long 类型的参数
        /// </summary>
        /// <param name="name"></param>
        /// <returns></returns>
        public static long QueryLong(string name)
        {
            string str = QueryString(name);
            if (string.IsNullOrEmpty(str)) throw new Exception("没有名为“" + name + "”的参数！");
            return Convert.ToInt64(str);
        }
        /// <summary>
        ///  从Query获取long 类型的参数,如果获取或转换失败，返回默认值
        /// </summary>
        /// <param name="name"></param>
        /// <param name="defaultValue"></param>
        /// <returns></returns>
        public static long QueryLong(string name, long defaultValue)
        {
            try
            {
                return QueryLong(name);
            }
            catch
            {
                return defaultValue;
            }
        }
        /// <summary>
        /// 从Form获取long类型参数数组
        /// </summary>
        /// <param name="name"></param>
        /// <returns></returns>
        public static long[] FormLongArray(string name)
        {
            string[] strArray = FormStringArray(name);
            return Array.ConvertAll<string, long>(strArray, delegate(string str)
            {
                return Convert.ToInt64(str);
            });
        }
        /// <summary>
        ///  从Query获取long类型参数数组
        /// </summary>
        /// <param name="name"></param>
        /// <returns></returns>
        public static long[] QueryLongArray(string name)
        {
            string[] strArray = QueryStringArray(name);
            return Array.ConvertAll<string, long>(strArray, delegate(string str)
            {
                return Convert.ToInt64(str);
            });
        }

        #endregion

        #region Float
        /*================Float类型参数获取================*/
        /// <summary>
        /// 从Form获取float类型的参数
        /// </summary>
        /// <param name="name"></param>
        /// <returns></returns>
        public static float FormFloat(string name)
        {
            string str = FormString(name);
            if (string.IsNullOrEmpty(str)) throw new Exception("没有名为“" + name + "”的参数！");
            return float.Parse(str);
        }
        /// <summary>
        /// 从Form获取float类型的参数，如果获取或转换失败，返回默认值
        /// </summary>
        /// <param name="name"></param>
        /// <param name="defaultValue"></param>
        /// <returns></returns>
        public static float FormFloat(string name, float defaultValue)
        {
            try
            {
                return FormFloat(name);
            }
            catch
            {
                return defaultValue;
            }
        }
        /// <summary>
        ///  从Query获取float类型的参数
        /// </summary>
        /// <param name="name"></param>
        /// <returns></returns>
        public static float QueryFloat(string name)
        {
            string str = QueryString(name);
            if (string.IsNullOrEmpty(str)) throw new Exception("没有名为“" + name + "”的参数！");
            return float.Parse(str);
        }
        /// <summary>
        /// 从Query获取float类型的参数，如果获取或转换失败，返回默认值
        /// </summary>
        /// <param name="name"></param>
        /// <param name="defaultValue"></param>
        /// <returns></returns>
        public static float QueryFloat(string name, float defaultValue)
        {
            try
            {
                return QueryFloat(name);
            }
            catch
            {
                return defaultValue;
            }
        }
        /// <summary>
        /// 从Form获取float参数数组
        /// </summary>
        /// <param name="name"></param>
        /// <returns></returns>
        public static float[] FormFloatArray(string name)
        {
            string[] strArray = FormStringArray(name);
            return Array.ConvertAll<string, float>(strArray, delegate(string str)
            {
                return float.Parse(str);
            });
        }
        /// <summary>
        /// 从Query获取float参数数组
        /// </summary>
        /// <param name="name"></param>
        /// <returns></returns>
        public static float[] QueryFloatArray(string name)
        {
            string[] strArray = QueryStringArray(name);
            return Array.ConvertAll<string, float>(strArray, delegate(string str)
            {
                return float.Parse(str);
            });
        }

        #endregion

        #region Double
        /*================Double类型参数获取================*/
        /// <summary>
        /// 从Form获取double类型参数
        /// </summary>
        /// <param name="name"></param>
        /// <returns></returns>
        public static double FormDouble(string name)
        {
            string str = FormString(name);
            if (string.IsNullOrEmpty(str)) throw new Exception("没有名为“" + name + "”的参数！");
            return double.Parse(str);
        }
        /// <summary>
        /// 从Form获取double类型参数,如果获取或转换失败，返回默认值
        /// </summary>
        /// <param name="name"></param>
        /// <param name="defaultValue"></param>
        /// <returns></returns>
        public static double FormDouble(string name, double defaultValue)
        {
            try
            {
                return FormDouble(name);
            }
            catch
            {
                return defaultValue;
            }
        }
        /// <summary>
        /// 从Query获取double类型参数
        /// </summary>
        /// <param name="name"></param>
        /// <returns></returns>
        public static double QueryDouble(string name)
        {
            string str = QueryString(name);
            if (string.IsNullOrEmpty(str)) throw new Exception("没有名为“" + name + "”的参数！");
            return double.Parse(str);
        }
        /// <summary>
        /// 从Query获取double类型参数,如果获取或转换失败，返回默认值
        /// </summary>
        /// <param name="name"></param>
        /// <param name="defaultValue"></param>
        /// <returns></returns>
        public static double QueryDouble(string name, double defaultValue)
        {
            try
            {
                return QueryDouble(name);
            }
            catch
            {
                return defaultValue;
            }
        }
        /// <summary>
        /// 从Form获取double类型参数的数组
        /// </summary>
        /// <param name="name"></param>
        /// <returns></returns>
        public static double[] FormDoubleArray(string name)
        {
            string[] strArray = FormStringArray(name);
            return Array.ConvertAll<string, double>(strArray, delegate(string str)
            {
                return double.Parse(str);
            });
        }
        /// <summary>
        /// 从Query获取double类型的参数数组 
        /// </summary>
        /// <param name="name"></param>
        /// <returns></returns>
        public static double[] QueryDoubleArray(string name)
        {
            string[] strArray = QueryStringArray(name);
            return Array.ConvertAll<string, double>(strArray, delegate(string str)
            {
                return double.Parse(str);
            });
        } 
        #endregion

        #region DateTime
        /*================DateTime类型参数获取================*/
        /// <summary>
        /// 从Form获取DateTime类型的参数
        /// </summary>
        /// <param name="name"></param>
        /// <returns></returns>
        public static DateTime FormDateTime(string name)
        {
            string str = FormString(name);
            if (string.IsNullOrEmpty(str)) throw new Exception("没有名为“" + name + "”的参数！");
            return DateTime.Parse(str);
        }
        /// <summary>
        /// 从Form获取DateTime类型的参数,如果获取或转换失败，返回默认值
        /// </summary>
        /// <param name="name"></param>
        /// <param name="defaultValue"></param>
        /// <returns></returns>
        public static DateTime FormDateTime(string name, DateTime defaultValue)
        {
            try
            {
                return FormDateTime(name);
            }
            catch
            {
                return defaultValue;
            }
        }
        /// <summary>
        /// 从Query获取DateTime类型的参数
        /// </summary>
        /// <param name="name"></param>
        /// <returns></returns>
        public static DateTime QueryDateTime(string name)
        {
            string str = QueryString(name);
            if (string.IsNullOrEmpty(str)) throw new Exception("没有名为“" + name + "”的参数！");
            return DateTime.Parse(str);
        }
        /// <summary>
        /// 从Query获取DateTime类型的参数,如果获取或转换失败，返回默认值
        /// </summary>
        /// <param name="name"></param>
        /// <param name="defaultValue"></param>
        /// <returns></returns>
        public static DateTime QueryDateTime(string name, DateTime defaultValue)
        {
            try
            {
                return QueryDateTime(name);
            }
            catch
            {
                return defaultValue;
            }
        }
        /// <summary>
        /// 从Form获取DateTime类型参数数组
        /// </summary>
        /// <param name="name"></param>
        /// <returns></returns>
        public static DateTime[] FormDateTimeArray(string name)
        {
            string[] strArray = FormStringArray(name);
            return Array.ConvertAll<string, DateTime>(strArray, delegate(string str)
            {
                return DateTime.Parse(str);
            });
        }
        /// <summary>
        /// 从Query获取DateTime类型参数数组
        /// </summary>
        /// <param name="name"></param>
        /// <returns></returns>
        public static DateTime[] QueryDateTimeArray(string name)
        {
            string[] strArray = QueryStringArray(name);
            return Array.ConvertAll<string, DateTime>(strArray, delegate(string str)
            {
                return DateTime.Parse(str);
            });
        }

        /*================可空的DateTime类型参数获取================*/
        /// <summary>
        /// 从Form获取DateTime?类型的参数
        /// </summary>
        /// <param name="name"></param>
        /// <returns></returns>
        public static DateTime? FormNullableDateTime(string name)
        {
            string str = FormString(name);
            if (string.IsNullOrEmpty(str)) return null;
            return DateTime.Parse(str);
        }
        /// <summary>
        /// 从Form获取DateTime?类型的参数，如果转换失败，返回默认值
        /// </summary>
        /// <param name="name"></param>
        /// <param name="defaultValue"></param>
        /// <returns></returns>
        public static DateTime? FormNullableDateTime(string name, DateTime? defaultValue)
        {
            try
            {
                return FormDateTime(name);
            }
            catch
            {
                return defaultValue;
            }
        }
        /// <summary>
        /// 从Query获取DateTime?类型的参数
        /// </summary>
        /// <param name="name"></param>
        /// <returns></returns>
        public static DateTime? QueryNullableDateTime(string name)
        {
            string str = QueryString(name);
            if (string.IsNullOrEmpty(str)) return null;
            return DateTime.Parse(str);
        }
        /// <summary>
        /// 从Query获取DateTime?类型的参数，如果转换失败，返回默认值
        /// </summary>
        /// <param name="name"></param>
        /// <param name="defaultValue"></param>
        /// <returns></returns>
        public static DateTime? QueryNullableDateTime(string name, DateTime? defaultValue)
        {
            try
            {
                return QueryDateTime(name);
            }
            catch
            {
                return defaultValue;
            }
        }
        /// <summary>
        /// 从Form获取DateTime?类型的参数数组
        /// </summary>
        /// <param name="name"></param>
        /// <returns></returns>
        public static DateTime?[] FormNullableDateTimeArray(string name)
        {
            string[] strArray = FormStringArray(name);
            return Array.ConvertAll<string, DateTime?>(strArray, delegate(string str)
            {
                if (string.IsNullOrEmpty(str)) return null;
                return DateTime.Parse(str);
            });
        }
        /// <summary>
        /// 从Query获取DateTime?类型的参数数组
        /// </summary>
        /// <param name="name"></param>
        /// <returns></returns>
        public static DateTime?[] QueryNullableDateTimeArray(string name)
        {
            string[] strArray = QueryStringArray(name);
            return Array.ConvertAll<string, DateTime?>(strArray, delegate(string str)
            {
                if (string.IsNullOrEmpty(str)) return null;
                return DateTime.Parse(str);
            });
        } 
        #endregion

        #region Guid

        /// <summary>
        /// 从Form获取Guid类型的参数值
        /// </summary>
        /// <param name="name"></param>
        /// <returns></returns>
        public static Guid FormGuid(string name)
        {
            string str = FormString(name);
            if (string.IsNullOrEmpty(str)) throw new Exception("没有名为“" + name + "”的参数！");
            return Converter.ToGuid(str);
        }

        /// <summary>
        /// 从Form获取Guid类型参数,如果获取或转换失败，返回默认值
        /// </summary>
        /// <param name="name"></param>
        /// <param name="defaultValue"></param>
        /// <returns></returns>
        public static Guid FormGuid(string name, Guid defaultValue)
        {
            try
            {
                return FormGuid(name);
            }
            catch 
            {
                return defaultValue;
            }
        }


        /// <summary>
        /// 从Query获取Guid类型的参数值
        /// </summary>
        /// <param name="name"></param>
        /// <returns></returns>
        public static Guid QueryGuid(string name)
        {
            string str = QueryString(name);
            if (string.IsNullOrEmpty(str)) throw new Exception("没有名为“" + name + "”的参数！");
            return Converter.ToGuid(str);
        }

        /// <summary>
        /// 从Query获取Guid类型参数,如果获取或转换失败，返回默认值
        /// </summary>
        /// <param name="name"></param>
        /// <param name="defaultValue"></param>
        /// <returns></returns>
        public static Guid QueryGuid(string name, Guid defaultValue)
        {
            try
            {
                return QueryGuid(name);
            }
            catch
            {
                return defaultValue;
            }
        }

        /// <summary>
        /// 从Form获取Guid类型参数的数组
        /// </summary>
        /// <param name="name"></param>
        /// <returns></returns>
        public static Guid[] FormGuidArray(string name)
        {
            string[] strArray = FormStringArray(name);
            return Array.ConvertAll<string, Guid>(strArray, delegate(string str)
            {
                return Converter.ToGuid(str);
            });
        }
        /// <summary>
        /// 从Query获取Guid类型的参数数组 
        /// </summary>
        /// <param name="name"></param>
        /// <returns></returns>
        public static Guid[] QueryGuidArray(string name)
        {
            string[] strArray = QueryStringArray(name);
            return Array.ConvertAll<string, Guid>(strArray, delegate(string str)
            {
                return Converter.ToGuid(str); 
            });
        } 
        #endregion


        #region HttpPostFile
        /*================HttpPostedFile类型参数获取================*/
        /// <summary>
        /// 获取指定参数名的文件
        /// </summary>
        /// <param name="name"></param>
        /// <returns></returns>
        public static HttpPostedFile GetPostedFile(string name)
        {
            return Request.Files[name];
        }
        /// <summary>
        /// 获取指定参数名的文件数组
        /// </summary>
        /// <param name="name"></param>
        /// <returns></returns>
        public static HttpPostedFile[] GetPostedFileArray(string name)
        {
            List<HttpPostedFile> list = new List<HttpPostedFile>();
            string[] names = Request.Files.AllKeys;
            for (int i = 0; i < names.Length; i++)
            {
                if (names[i] == name)
                {
                    list.Add(Request.Files.Get(i));
                }
            }
            return list.ToArray();
        }

        #endregion

        #region Enum
        /*================枚举类型参数获取================*/
        /// <summary>
        /// 从Form获取枚举类型的参数
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="name"></param>
        /// <returns></returns>
        public static T FormEnum<T>(string name)
        {
            Type type = typeof(T);
            if (type.IsGenericType && type.GetGenericTypeDefinition().Equals(typeof(Nullable<>)))
            {
                type = type.UnderlyingSystemType;
            }
            if (!type.IsEnum) throw new Exception("T 不是枚举类型");
            string str = FormString(name);
            if (string.IsNullOrEmpty(str)) throw new Exception("没有名为“" + name + "”的参数！");
            return Converter.ChangeType<T>(str);
        }

        /// <summary>
        /// 从Form获取枚举类型的参数,如果获取或转换失败，返回默认值
        /// </summary>
        /// <param name="name"></param>
        /// <param name="defaultValue"></param>
        /// <returns></returns>
        public static T FormEnum<T>(string name, T defaultValue)
        {
            try
            {
                return FormEnum<T>(name);
            }
            catch
            {
                return defaultValue;
            }
        }
        /// <summary>
        /// 从Query获取枚举类型的参数
        /// </summary>
        /// <param name="name"></param>
        /// <returns></returns>
        public static T QueryEnum<T>(string name)
        {
            Type type = typeof(T);
            if (type.IsGenericType && type.GetGenericTypeDefinition().Equals(typeof(Nullable<>)))
            {
                type = type.UnderlyingSystemType;
            }
            if (!type.IsEnum) throw new Exception("T 不是枚举类型");

            string str = QueryString(name);
            if (string.IsNullOrEmpty(str)) throw new Exception("没有名为“" + name + "”的参数！");
            return Converter.ChangeType<T>(str);
        }
        /// <summary>
        /// 从Query获取枚举类型的参数,如果获取或转换失败，返回默认值
        /// </summary>
        /// <param name="name"></param>
        /// <param name="defaultValue"></param>
        /// <returns></returns>
        public static T QueryEnum<T>(string name, T defaultValue)
        {
            try
            {
                return QueryEnum<T>(name);
            }
            catch
            {
                return defaultValue;
            }
        }
        /// <summary>
        /// 从Form获取枚举参数的数组
        /// </summary>
        /// <param name="name"></param>
        /// <returns></returns>
        public static T[] FormEnumArray<T>(string name)
        {
            Type type = typeof(T);
            if (type.IsGenericType && type.GetGenericTypeDefinition().Equals(typeof(Nullable<>)))
            {
                type = type.UnderlyingSystemType;
            }
            if (!type.IsEnum) throw new Exception("T 不是枚举类型");
            string[] strArray = FormStringArray(name);
            return Array.ConvertAll<string, T>(strArray, delegate(string str)
            {
                return Converter.ChangeType<T>(str);
            });
        }
        /// <summary>
        /// 从Query获取枚举参数的数组
        /// </summary>
        /// <param name="name"></param>
        /// <returns></returns>
        public static T[] QueryEnumArray<T>(string name)
        {
            Type type = typeof(T);
            if (type.IsGenericType && type.GetGenericTypeDefinition().Equals(typeof(Nullable<>)))
            {
                type = type.UnderlyingSystemType;
            }
            string[] strArray = QueryStringArray(name);
            return Array.ConvertAll<string, T>(strArray, delegate(string str)
            {
                return Converter.ChangeType<T>(str);
            });
        } 
        #endregion

        /// <summary>
        /// 获得当前页面客户端的IP
        /// </summary>
        /// <returns>当前页面客户端的IP</returns>
        public static string GetIp()
        {
            string result = String.Empty;

            result = Request.ServerVariables["HTTP_X_FORWARDED_FOR"];
            if (string.IsNullOrEmpty(result))
            {
                result = Request.ServerVariables["REMOTE_ADDR"];
            }

            if (string.IsNullOrEmpty(result))
            {
                result = Request.UserHostAddress;
            }

            if (string.IsNullOrEmpty(result))
            {
                return "127.0.0.1";
            }

            return result;
        }

        /// <summary>
        /// 得到主机头
        /// </summary>
        /// <returns></returns>
        public static string GetHost()
        {
            return Request.Url.Host;
        }

        /// <summary>
        /// 获得当前完整Url地址
        /// </summary>
        /// <returns>当前完整Url地址</returns>
        public static string GetUrl()
        {
            return Request.Url.ToString();
        }

        /// <summary>
        /// 判断当前页面是否接收到了Post请求
        /// </summary>
        /// <returns>是否接收到了Post请求</returns>
        public static bool IsPost()
        {
            return Request.HttpMethod.Equals("POST");
        }

        /// <summary>
        /// 判断当前页面是否接收到了Get请求
        /// </summary>
        /// <returns>是否接收到了Get请求</returns>
        public static bool IsGet()
        {
            return Request.HttpMethod.Equals("GET");
        }
    }
}
