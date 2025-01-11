using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;

namespace Insourcia.Common.Validate
{
    /// <summary>
    /// 数据验证器，提供从字符串转换到指定数据类型的验证方法<br/>  
    /// 作    者：羊国基<br/>
    /// 创始时间：2010-4-12 14:55:30<br/>
    /// </summary>
    /// <remarks>
    /// ----------修改记录------------
    /// </remarks>
    public class Validator
    {
        private static readonly Regex EmailRegex = new Regex(@"^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$");//[A-Za-z0-9._%+-]+@(?:[A-Za-z0-9-]+\.)+[A-Za-z]{2,6}
        private static readonly Regex ZipRegex = new Regex(@"^\d{6}$");
        private static readonly Regex TelRegex = new Regex(@"^(86-?)?\d{3,4}?-?\d{7,8}$");
        private static readonly Regex MobileRegex = new Regex(@"^(86-?)?0?1\d{10}$");
        private static readonly Regex Ipv4Regex = new Regex(@"^(?:(?:25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9]?[0-9])\.){3}(?:25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9]?[0-9])$");

        private static readonly Regex UrlRegex = new Regex(@"^(https?|ftp)://[-A-Za-z0-9.]+(/[-A-Za-z0-9+&@#/%=~_|!:,.;]*)?(\?[A-Za-z0-9+&@#/%=~_|!:,.;]*)?$");

        private List<string> _error = null;

        #region email
        /// <summary>
        /// 判断是否是电子邮箱
        /// </summary>
        /// <param name="value"></param>
        /// <returns></returns>
        public static bool IsEmail(string value)
        {
            return EmailRegex.IsMatch(value);
        }

        /// <summary>
        /// 获取一个电子邮件地址,如果格式不正确返回空字符串并添加错误信息到列表
        /// </summary>
        /// <param name="value">要验证的值</param>
        /// <param name="message">错误失败时的提示信息</param>
        /// <returns></returns>
        public string GetEmail(string value, string message)
        {
            if (!IsEmail(value))
            {
                AddError(message);
                return "";
            }
            return value;
        }
        #endregion

        #region zip
        /// <summary>
        /// 判断是否是邮编
        /// </summary>
        /// <param name="value"></param>
        /// <returns></returns>
        public static bool IsZip(string value)
        {
            return ZipRegex.IsMatch(value);
        }

        /// <summary>
        /// 获取一个邮编,如果格式不正确返回空字符串并添加错误信息到列表
        /// </summary>
        /// <param name="value">要验证的值</param>
        /// <param name="message">错误失败时的提示信息</param>
        /// <returns></returns>
        public string GetZip(string value, string message)
        {
            if (!IsZip(value))
            {
                AddError(message);
                return "";
            }
            return value;
        }
        #endregion

        #region tel
        /// <summary>
        /// 判断是否是座机号码
        /// </summary>
        /// <param name="value"></param>
        /// <returns></returns>
        public static bool IsTel(string value)
        {
            return TelRegex.IsMatch(value);
        }

        /// <summary>
        /// 获取一个座机号码,如果格式不正确返回空字符串并添加错误信息到列表
        /// </summary>
        /// <param name="value">要验证的值</param>
        /// <param name="message">错误失败时的提示信息</param>
        /// <returns></returns>
        public string GetTel(string value, string message)
        {
            if (!IsTel(value))
            {
                AddError(message);
                return "";
            }
            return value;
        }
        #endregion

        #region mobile
        /// <summary>
        /// 判断是否是手机号码
        /// </summary>
        /// <param name="value"></param>
        /// <returns></returns>
        public static bool IsMobile(string value)
        {
            return MobileRegex.IsMatch(value);
        }

        /// <summary>
        /// 获取一个手机号码,如果格式不正确返回空字符串并添加错误信息到列表
        /// </summary>
        /// <param name="value">要验证的值</param>
        /// <param name="message">错误失败时的提示信息</param>
        /// <returns></returns>
        public string GetMobile(string value, string message)
        {
            if (!IsMobile(value))
            {
                AddError(message);
                return "";
            }
            return value;
        }
        #endregion

        #region ipv4
        /// <summary>
        /// 判断是否是ipv4地址
        /// </summary>
        /// <param name="value"></param>
        /// <returns></returns>
        public static bool IsIp(string value)
        {
            return Ipv4Regex.IsMatch(value);
        }

        /// <summary>
        /// 获取一个ipv4地址,如果格式不正确返回空字符串并添加错误信息到列表
        /// </summary>
        /// <param name="value">要验证的值</param>
        /// <param name="message">错误失败时的提示信息</param>
        /// <returns></returns>
        public string GetIp(string value, string message)
        {
            if (!IsIp(value))
            {
                AddError(message);
                return "";
            }
            return value;
        }
        #endregion

        #region url
        /// <summary>
        /// 判断是否是Url地址
        /// </summary>
        /// <param name="value"></param>
        /// <returns></returns>
        public static bool IsUrl(string value)
        {
            return UrlRegex.IsMatch(value);
        }

        /// <summary>
        /// 获取一个Url地址,如果格式不正确返回空字符串并添加错误信息到列表
        /// </summary>
        /// <param name="value">要验证的值</param>
        /// <param name="message">错误失败时的提示信息</param>
        /// <returns></returns>
        public string GetUrl(string value, string message)
        {
            if (!IsUrl(value))
            {
                AddError(message);
                return "";
            }
            return value;
        }
        #endregion

        #region bool
        /// <summary>
        /// 判断是否是一个bool
        /// </summary>
        /// <param name="value"></param>
        /// <returns></returns>
        public static bool IsBool(string value)
        {
            bool b = false;
            return bool.TryParse(value, out b);
        }

        /// <summary>
        /// 获取一个bool,如果格式不正确或转换失败返回 false 并添加错误信息到错误列表
        /// </summary>
        /// <param name="value"></param>
        /// <param name="message"></param>
        /// <returns></returns>
        public bool GetBool(string value, string message)
        {
            bool b = false;
            if (!bool.TryParse(value, out b))
            {
                AddError(message);
                return false;
            }
            return b;
        }
        #endregion

        #region int
        /// <summary>
        /// 判断是否是一个int
        /// </summary>
        /// <param name="value"></param>
        /// <returns></returns>
        public static bool IsInt(string value)
        {
            int l = 0;
            return int.TryParse(value, out l);
        }

        /// <summary>
        /// 判断是否是一个int,并且在指定范围内,如果某个值为null则不以限定范围
        /// </summary>
        /// <param name="value"></param>
        /// <param name="min"></param>
        /// <param name="max"></param>
        /// <returns></returns>
        public static bool IsInt(string value, int? min, int? max)
        {
            int l = 0;
            try
            {
                l = int.Parse(value);
            }
            catch { return false; }
            if (min != null && l < min) return false;
            if (max != null && l > max) return false;
            return true;
        }

        /// <summary>
        /// 获取一个int,如果格式不正确或转换失败返回 0 并添加错误信息到错误列表
        /// </summary>
        /// <param name="value"></param>
        /// <param name="message"></param>
        /// <returns></returns>
        public int GetInt(string value, string message)
        {
            int a = 0;
            if (!int.TryParse(value, out a))
            {
                AddError(message);
                return 0;
            }
            return a;
        }

        /// <summary>
        /// 获取一个int,该数字必须在指定范围内,如果格式不正确或转换失败返回 0,同时替换相应的标记并添加错误信息到错误列表
        /// 错误信息替换记如下:
        /// {min} 替换为参数 min
        /// {max} 替换为参数 max
        /// </summary>
        /// <param name="value"></param>
        /// <param name="min"></param>
        /// <param name="max"></param>
        /// <param name="message"></param>
        /// <returns></returns>
        public int GetInt(string value, int? min, int? max, string message)
        {
            if (IsInt(value, min, max))
            {
                return int.Parse(value);
            }
            string str = message ?? "";
            str = str.Replace("{min}", min == null ? "" : min.ToString());
            str = str.Replace("{max}", max == null ? "" : max.ToString());
            AddError(str);
            return 0;
        }
        #endregion

        #region long
        /// <summary>
        /// 判断是否是一个long
        /// </summary>
        /// <param name="value"></param>
        /// <returns></returns>
        public static bool IsLong(string value)
        {
            long l = 0;
            return long.TryParse(value, out l);
        }

        /// <summary>
        /// 判断是否是一个long,并且在指定范围内,如果某个值为null则不以限定范围
        /// </summary>
        /// <param name="value"></param>
        /// <param name="min"></param>
        /// <param name="max"></param>
        /// <returns></returns>
        public static bool IsLong(string value, long? min, long? max)
        {
            long l = 0;
            try
            {
                l = long.Parse(value);
            }
            catch { return false; }
            if (min != null && l < min) return false;
            if (max != null && l > max) return false;
            return true;
        }

        /// <summary>
        /// 获取一个数字,如果格式不正确或转换失败返回 0 并添加错误信息到错误列表
        /// </summary>
        /// <param name="value"></param>
        /// <param name="message"></param>
        /// <returns></returns>
        public long GetLong(string value, string message)
        {
            long l = 0;
            if (!long.TryParse(value, out l))
            {
                AddError(message);
                return 0;
            }
            return l;
        }

        /// <summary>
        /// 获取一个数字,该数字必须在指定范围内,如果格式不正确或转换失败返回 0,同时替换相应的标记并添加错误信息到错误列表
        /// 错误信息替换记如下:
        /// {min} 替换为参数 min
        /// {max} 替换为参数 max
        /// </summary>
        /// <param name="value"></param>
        /// <param name="min"></param>
        /// <param name="max"></param>
        /// <param name="message"></param>
        /// <returns></returns>
        public long GetLong(string value, long? min, long? max, string message)
        {
            if (IsLong(value, min, max))
            {
                return long.Parse(value);
            }
            string str = message ?? "";
            str = str.Replace("{min}", min == null ? "" : min.ToString());
            str = str.Replace("{max}", max == null ? "" : max.ToString());
            AddError(str);
            return 0;
        }
        #endregion

        #region float
        /// <summary>
        /// 判断是否是一个float
        /// </summary>
        /// <param name="value"></param>
        /// <returns></returns>
        public static bool IsFloat(string value)
        {
            float d = 0;
            return float.TryParse(value, out d);
        }

        /// <summary>
        /// 判断是否是一个float,并且在指定范围内,如果某个值为null则不以限定范围
        /// </summary>
        /// <param name="value"></param>
        /// <param name="min"></param>
        /// <param name="max"></param>
        /// <returns></returns>
        public static bool IsFloat(string value, float? min, float? max)
        {
            float d = 0;
            try
            {
                d = float.Parse(value);
            }
            catch { return false; }
            if (min != null && d < min) return false;
            if (max != null && d > max) return false;
            return true;
        }

        /// <summary>
        /// 获取一个float,如果格式不正确或转换失败返回 0 并添加错误信息到错误列表
        /// </summary>
        /// <param name="value"></param>
        /// <param name="message"></param>
        /// <returns></returns>
        public float GetFloat(string value, string message)
        {
            float f = 0;
            if (!float.TryParse(value, out f))
            {
                AddError(message);
                return 0;
            }
            return f;
        }

        /// <summary>
        /// 获取一个float,该数字必须在指定范围内,如果格式不正确或转换失败返回 0,同时替换相应的标记并添加错误信息到错误列表
        /// 错误信息替换记如下:
        /// {min} 替换为参数 min
        /// {max} 替换为参数 max
        /// </summary>
        /// <param name="value"></param>
        /// <param name="min"></param>
        /// <param name="max"></param>
        /// <param name="message"></param>
        /// <returns></returns>
        public float GetFloat(string value, float? min, float? max, string message)
        {
            if (IsFloat(value, min, max))
            {
                return float.Parse(value);
            }
            string str = message ?? "";
            str = str.Replace("{min}", min == null ? "" : min.ToString());
            str = str.Replace("{max}", max == null ? "" : max.ToString());
            AddError(str);
            return 0;
        }
        #endregion

        #region double
        /// <summary>
        /// 判断是否是一个double
        /// </summary>
        /// <param name="value"></param>
        /// <returns></returns>
        public static bool IsDouble(string value)
        {
            double d = 0;
            return double.TryParse(value, out d);
        }

        /// <summary>
        /// 判断是否是一个double,并且在指定范围内,如果某个值为null则不以限定范围
        /// </summary>
        /// <param name="value"></param>
        /// <param name="min"></param>
        /// <param name="max"></param>
        /// <returns></returns>
        public static bool IsDouble(string value, double? min, double? max)
        {
            double d = 0;
            try
            {
                d = double.Parse(value);
            }
            catch { return false; }
            if (min != null && d < min) return false;
            if (max != null && d > max) return false;
            return true;
        }

        /// <summary>
        /// 获取一个double,如果格式不正确或转换失败返回 0 并添加错误信息到错误列表
        /// </summary>
        /// <param name="value"></param>
        /// <param name="message"></param>
        /// <returns></returns>
        public double GetDouble(string value, string message)
        {
            double d = 0;
            if (!double.TryParse(value, out d))
            {
                AddError(message);
                return 0;
            }
            return d;
        }

        /// <summary>
        /// 获取一个double,该数字必须在指定范围内,如果格式不正确或转换失败返回 0,同时替换相应的标记并添加错误信息到错误列表
        /// 错误信息替换记如下:
        /// {min} 替换为参数 min
        /// {max} 替换为参数 max
        /// </summary>
        /// <param name="value"></param>
        /// <param name="min"></param>
        /// <param name="max"></param>
        /// <param name="message"></param>
        /// <returns></returns>
        public double GetDouble(string value, double? min, double? max, string message)
        {
            if (IsDouble(value, min, max))
            {
                return double.Parse(value);
            }
            string str = message ?? "";
            str = str.Replace("{min}", min == null ? "" : min.ToString());
            str = str.Replace("{max}", max == null ? "" : max.ToString());
            AddError(str);
            return 0;
        }
        #endregion

        #region decimal
        /// <summary>
        /// 判断是否是一个decimal
        /// </summary>
        /// <param name="value"></param>
        /// <returns></returns>
        public static bool IsDecimal(string value)
        {
            decimal d = 0;
            return decimal.TryParse(value, out d);
        }

        /// <summary>
        /// 判断是否是一个decimal,并且在指定范围内,如果某个值为null则不以限定范围
        /// </summary>
        /// <param name="value"></param>
        /// <param name="min"></param>
        /// <param name="max"></param>
        /// <returns></returns>
        public static bool IsDecimal(string value, decimal? min, decimal? max)
        {
            decimal d = 0;
            try
            {
                d = decimal.Parse(value);
            }
            catch { return false; }
            if (min != null && d < min) return false;
            if (max != null && d > max) return false;
            return true;
        }

        /// <summary>
        /// 获取一个decimal,如果格式不正确或转换失败返回 0 并添加错误信息到错误列表
        /// </summary>
        /// <param name="value"></param>
        /// <param name="message"></param>
        /// <returns></returns>
        public decimal GetDecimal(string value, string message)
        {
            decimal d = 0;
            if (!decimal.TryParse(value, out d))
            {
                AddError(message);
                return 0;
            }
            return d;
        }

        /// <summary>
        /// 获取一个decimal,该数字必须在指定范围内,如果格式不正确或转换失败返回 0,同时替换相应的标记并添加错误信息到错误列表
        /// 错误信息替换记如下:
        /// {min} 替换为参数 min
        /// {max} 替换为参数 max
        /// </summary>
        /// <param name="value"></param>
        /// <param name="min"></param>
        /// <param name="max"></param>
        /// <param name="message"></param>
        /// <returns></returns>
        public decimal GetDecimal(string value, decimal? min, decimal? max, string message)
        {
            if (IsDecimal(value, min, max))
            {
                return decimal.Parse(value);
            }
            string str = message ?? "";
            str = str.Replace("{min}", min == null ? "" : min.ToString());
            str = str.Replace("{max}", max == null ? "" : max.ToString());
            AddError(str);
            return 0;
        }
        #endregion

        #region DateTime
        /// <summary>
        /// 判断否是一个日期类型
        /// </summary>
        /// <param name="value"></param>
        /// <returns></returns>
        public static bool IsDateTime(string value)
        {
            DateTime d = DateTime.MinValue;
            return DateTime.TryParse(value, out d);
        }

        /// <summary>
        /// 判断否是一个日期类型且在指定日期范围之内
        /// </summary>
        /// <param name="value"></param>
        /// <param name="minDate"></param>
        /// <param name="maxDate"></param>
        /// <returns></returns>
        public static bool IsDateTime(string value, DateTime? minDate, DateTime? maxDate)
        {
            DateTime d = DateTime.MinValue;
            try
            {
                d = DateTime.Parse(value);
            }
            catch
            { return false; }
            if (minDate != null && d < minDate) return false;
            if (maxDate != null && d > maxDate) return false;
            return true;
        }

        /// <summary>
        /// 获取一个日期值,如果格式不正确或转换失败返回DateTime.MinValue
        /// </summary>
        /// <param name="value"></param>
        /// <param name="message"></param>
        /// <returns></returns>
        public DateTime GetDateTime(string value, string message)
        {
            DateTime dt = DateTime.MinValue;
            if (!DateTime.TryParse(value, out dt))
            {
                AddError(message);
                return DateTime.MinValue;
            }

            return dt;
        }

        /// <summary>
        /// 获取可空的时间值,当字符串为空时返回null,当格式不正确或转换失败时返回DateTime.MinValue
        /// </summary>
        /// <param name="value"></param>
        /// <param name="message"></param>
        /// <returns></returns>
        public DateTime? GetNullableDate(string value, string message)
        {
            if (string.IsNullOrEmpty(value)) return null;
            return GetDateTime(value, message);
        }

        /// <summary>
        /// 获取一个日期值,该值必须在指定日期范围内,如果格式不正确或转换失败返回 DateTime.MinValue,同时替换相应的标记并添加错误信息到错误列表
        /// 错误信息替换记如下:
        /// {min} 替换为参数 min
        /// {max} 替换为参数 max
        /// </summary>
        /// <param name="value"></param>
        /// <param name="min"></param>
        /// <param name="max"></param>
        /// <param name="message"></param>
        /// <returns></returns>
        public DateTime GetDateTime(string value, DateTime? min, DateTime? max, string message)
        {
            if (IsDateTime(value, min, max))
            {
                return DateTime.Parse(value);
            }
            string str = message ?? "";
            str = str.Replace("{min}", min == null ? "" : ((DateTime)min).ToString("yyyy-MM-dd"));
            str = str.Replace("{max}", max == null ? "" : ((DateTime)max).ToString("yyyy-MM-dd"));
            AddError(str);
            return DateTime.MinValue;
        }

        /// <summary>
        /// 获取一个可空的日期值,该值必须在指定日期范围内,如果格式不正确或转换失败返回 DateTime.MinValue,同时替换相应的标记并添加错误信息到错误列表
        /// 错误信息替换记如下:
        /// {min} 替换为参数 min
        /// {max} 替换为参数 max
        /// </summary>
        /// <param name="value"></param>
        /// <param name="min"></param>
        /// <param name="max"></param>
        /// <param name="message"></param>
        /// <returns></returns>
        public DateTime? GetNullableDate(string value, DateTime? min, DateTime? max, string message)
        {
            if (string.IsNullOrEmpty(value)) return null;
            return GetDateTime(value, min, max, message);
        }
        #endregion

        #region string not null

        /// <summary>
        /// 判断字符串是否为空
        /// 注:如果字符串包含空格返回false
        /// </summary>
        /// <param name="value"></param>
        /// <returns></returns>
        public static bool IsNotNull(string value)
        {
            return IsNotNull(value, false);
        }

        /// <summary>
        /// 判断字符串是否为空
        /// 注:如果字符串包含空格返回false
        /// </summary>
        /// <param name="value"></param>
        /// <param name="validator"></param>
        /// <param name="message"></param>
        /// <returns></returns>
        public static bool IsNotNull(string value, Validator validator, string message)
        {
            return IsNotNull(value, false, validator, message);
        }

        /// <summary>
        /// 判断字符串是否为空
        /// </summary>
        /// <param name="value"></param>
        /// <param name="trimSpace">是否去除空格</param>
        /// <returns></returns>
        public static bool IsNotNull(string value, bool trimSpace)
        {
            return IsNotNull(value, trimSpace, null, "");
        }

        ///<summary>
        /// 判断字符串是否String.Empty或null
        /// </summary>
        /// <param name="value"></param>
        /// <param name="trimSpace">是否去除空格</param>
        /// <param name="validator"></param>
        /// <param name="message"></param>
        /// <returns></returns>
        public static bool IsNotNull(string value, bool trimSpace, Validator validator, string message)
        {
            if (string.IsNullOrEmpty(value))
            {
                if (validator != null) validator.AddError(message);
                return false;
            }
            if (trimSpace && string.IsNullOrEmpty(value.Trim()))
            {
                if (validator != null) validator.AddError(message);
                return false;
            }
            return true;
        }

        /// <summary>
        /// 获取不为空的字符串,如果字符串为空则添加错误信息到错误列表,返回""
        /// </summary>
        /// <param name="value"></param>
        /// <param name="message"></param>
        /// <returns></returns>
        public string GetNotNull(string value, string message)
        {
            if (IsNotNull(value)) return value;
            AddError(message);
            return "";
        }

        /// <summary>
        /// 获取不为空的字符串,如果字符串为空则添加错误信息到错误列表返回""
        /// 如果不为空,返回已去除空格的字符串
        /// </summary>
        /// <param name="value"></param>
        /// <param name="trimSpace">是否去除空格</param>
        /// <param name="message"></param>
        /// <returns></returns>
        public string GetNotNull(string value, bool trimSpace, string message)
        {
            if (IsNotNull(value, trimSpace)) return value.Trim();
            AddError(message);
            return "";
        }

        #endregion

        #region regex
        /// <summary>
        /// 判断字符串与指定的正则表达式是否匹配
        /// </summary>
        /// <param name="pattern"></param>
        /// <param name="value"></param>
        /// <returns></returns>
        public static bool IsMatch(string pattern, string value)
        {
            return IsMatch(pattern, RegexOptions.None, value);
        }

        /// <summary>
        /// 判断字符串与指定的正则表达式是否匹配
        /// </summary>
        /// <param name="pattern"></param>
        /// <param name="option"></param>
        /// <param name="value"></param>
        /// <returns></returns>
        public static bool IsMatch(string pattern, RegexOptions option, string value)
        {
            Regex regex = new Regex(pattern, option);
            return regex.IsMatch(value);
        }

        /// <summary>
        /// 获取与表达式匹配的字符串,如果匹配不成功返回""并添加错误信息到错误列表
        /// </summary>
        /// <param name="pattern"></param>
        /// <param name="value"></param>
        /// <param name="message"></param>
        /// <returns></returns>
        public string GetMatch(string pattern, string value, string message)
        {
            if (IsMatch(pattern, value)) return value;
            AddError(message);
            return "";
        }

        /// <summary>
        /// 获取与表达式匹配的字符串,如果匹配不成功返回""并添加错误信息到错误列表
        /// </summary>
        /// <param name="pattern"></param>
        /// <param name="option"></param>
        /// <param name="value"></param>
        /// <param name="message"></param>
        /// <returns></returns>
        public string GetMatch(string pattern, RegexOptions option, string value, string message)
        {
            if (IsMatch(pattern, option, value)) return value;
            AddError(message);
            return "";
        }
        #endregion

        #region string length

        /// <summary>
        /// 比较两个字符串是否相等
        /// </summary>
        /// <param name="a">字符串a</param>
        /// <param name="b">字符串b</param>
        /// <param name="canNullOrEmpty">a和b是否可以为String.Empty或null</param>
        /// <param name="trimSpace">是否去除字符串的两端空白符再比较</param>
        /// <returns></returns>
        public static bool IsEquals(string a, string b, bool canNullOrEmpty, bool trimSpace)
        {
            if (!canNullOrEmpty && (string.IsNullOrEmpty(a) || string.IsNullOrEmpty(b))) return false;

            if (trimSpace)
            {
                a = a.Trim();
                b = b.Trim();
            }

            return a.Equals(b);

        }

        /// <summary>
        /// 不能为空的比较，且去除头尾两端空白符
        /// </summary>
        /// <param name="a"></param>
        /// <param name="b"></param>
        /// <returns></returns>
        public static bool IsNotNullEquals(string a, string b)
        {
            return IsEquals(a, b, false, true);
        }

        /// <summary>
        /// 获取字符串，如果a 和b 均不为String.Empty或null，并且相等则返回a （均去除两端空白符进行比较）
        /// 否则 添加错误信息 并返回 String.Empty
        /// </summary>
        /// <param name="a"></param>
        /// <param name="b"></param>
        /// <param name="message"></param>
        /// <returns></returns>
        public string GetNotNullEquals(string a, string b, string message)
        {
            if (!IsNotNullEquals(a, b))
            {
                if (!string.IsNullOrEmpty(message))
                    AddError(message);
                return "";
            }
            return a.Trim();
        }

        /// <summary>
        /// 判断字符串是否符合指定长度
        /// 注:字符串必须不为空
        /// </summary>
        /// <param name="value"></param>
        /// <param name="min"></param>
        /// <param name="max"></param>
        /// <returns></returns>
        public static bool IsAccordLength(string value, int? min, int? max)
        {
            return IsAccordLength(value, min, max, false);
        }

        /// <summary>
        /// 判断字符串是否符合指定长度
        /// 注:字符串必须不为空
        /// </summary>
        /// <param name="value"></param>
        /// <param name="min"></param>
        /// <param name="max"></param>
        /// <param name="trimSpace">是否去除空格</param>
        /// <returns></returns>
        public static bool IsAccordLength(string value, int? min, int? max, bool trimSpace)
        {
            if (string.IsNullOrEmpty(value)) return false;
            string str = trimSpace ? value.Trim() : value;
            if (min != null && str.Length < min) return false;
            if (max != null && str.Length > max) return false;
            return true;
        }

        /// <summary>
        /// 获取符合长度的字符串,如果不符合的话添加错误信息到错误列表返回""
        /// 错误信息替换记如下:
        /// {min} 替换为参数 min
        /// {max} 替换为参数 max
        /// </summary>
        /// <param name="value"></param>
        /// <param name="min"></param>
        /// <param name="max"></param>
        /// <param name="message"></param>
        /// <returns></returns>
        public string GetRangeLength(string value, int? min, int? max, string message)
        {
            return GetRangeLength(value, min, max, false, message);
        }

        /// <summary>
        /// 获取符合长度的字符串,如果不符合的话添加错误信息到错误列表返回""
        /// 错误信息替换记如下:
        /// {min} 替换为参数 min
        /// {max} 替换为参数 max
        /// </summary>
        /// <param name="value"></param>
        /// <param name="min"></param>
        /// <param name="max"></param>
        /// <param name="trimSpace"></param>
        /// <param name="message"></param>
        /// <returns></returns>
        public string GetRangeLength(string value, int? min, int? max, bool trimSpace, string message)
        {
            if (IsAccordLength(value, min, max)) return trimSpace ? value.Trim() : value;
            string str = message ?? "";
            str = str.Replace("{min}", min == null ? "" : min.ToString());
            str = str.Replace("{max}", max == null ? "" : max.ToString());
            AddError(str);
            return "";
        }
        #endregion

        #region Number
        /// <summary>
        /// 判断指定字符串是否为数字字符串
        /// </summary>
        /// <param name="input"></param>
        /// <returns></returns>
        public static bool IsNumber(string input)
        {
            if (string.IsNullOrEmpty(input))
                return false;
            
            return IsMatch("^\\d+$",input);
        }
        #endregion

        #region Letters
        public static bool IsLetter(string input)
        {
            if (string.IsNullOrEmpty(input))
                return false;            
            return IsMatch("^[a-zA-Z]+$", input);
        }
        #endregion

        /// <summary>
        /// 添加错误信息到错误列表
        /// </summary>
        /// <param name="error">错误信息</param>
        public void AddError(string error)
        {
            if (this.Error == null) _error = new List<string>();
            this.Error.Add(error);
        }

        /// <summary>
        /// 验证错误记录
        /// </summary>
        public List<string> Error
        {
            get { return _error; }
        }

        /// <summary>
        /// 是否有错误
        /// </summary>
        public bool HasError
        {
            get { return this.Error != null && this.Error.Count > 0; }
        }

        /// <summary>
        /// 把错误信息转换成字符串输出，用英文逗号分隔
        /// </summary>
        /// <returns></returns>
        public string ErrorMsgToString()
        {
            if (this.Error == null) return "";
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < Error.Count; i++)
            {
                sb.Append((i > 0 ? "," : "") + Error[i]);
            }
            return sb.ToString();
        }

        /// <summary>
        /// 清空错误列表 
        /// </summary>
        public void Clear()
        {
            if (this.Error != null) this.Error.Clear();
        }

        /// <summary>
        /// 验证 input是否符合Validator的验证规则
        /// </summary>
        /// <typeparam name="TInput">要判断值的类型</typeparam>
        /// <param name="input">判断的值</param>
        /// <param name="validate">一个委托，验证input的正确性</param>
        /// <returns></returns>
        public static bool Validate<TInput>(TInput input, Validator<TInput> validation)
        {
            return validation(input);
        }

        /// <summary>
        /// 获取类型为
        /// </summary>
        /// <typeparam name="TOutput">返回的类型</typeparam>
        /// <param name="input">输入的值</param>
        /// <param name="validation">一个委托，表示验证规则</param>
        /// <param name="errorMessge">input不符合验证规则是，添加的错误信息</param>
        /// <returns>返回TOutput类型</returns>
        public TOutput GetValueValidate<TOutput>(string input, Validator<string> validation, string errorMessge)
        {
            TOutput output = default(TOutput);
            if (Validate<string>(input, validation))
            {
                try
                {
                    output = Converter.ChangeType<TOutput>(input);
                    return output;
                }
                catch
                {
                    AddError(errorMessge);
                    return output;
                }
            }
            else
            {
                AddError(errorMessge);
                return output;
            }
        }
    }

    /// <summary>
    /// 封装一个方法，表示判断input值
    /// </summary>
    /// <typeparam name="TInput">判断值的类型</typeparam>
    /// <param name="input">判断值</param>
    /// <returns></returns>
    public delegate bool Validator<TInput>(TInput input);
}
