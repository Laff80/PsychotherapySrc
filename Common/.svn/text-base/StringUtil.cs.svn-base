using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Insourcia.Common
{
    /// <summary>
    /// 功能：一组操作字符串的方法
    /// 作者：羊国基
    /// 时间：2010-4-29 12:56:02
    /// </summary>
    /// <remarks>
    /// 修改记录：
    /// </remarks>
    public class StringUtil
    {
        /// <summary>
        /// 获取字符串的半角长度(即一个全角字符按2长度计算)
        /// </summary>
        /// <param name="str"></param>
        /// <returns></returns>
        public static int GetDBCLength(string str)
        {
            if (string.IsNullOrEmpty(str)) return 0;
            return Encoding.GetEncoding("gb2312").GetBytes(str).Length;
        }

        /// <summary>
        /// 从字符串的指定位置截取指定长度的子字符串,如果长度为负数则向前截取
        /// </summary>
        /// <param name="str">原字符串</param>
        /// <param name="startIndex">子字符串的起始位置</param>
        /// <param name="length">子字符串的长度</param>
        /// <returns>子字符串</returns>
        public static string CutString(string str, int startIndex, int length)
        {
            if (startIndex >= 0)
            {
                if (length < 0)
                {
                    length = length * -1;
                    if (startIndex - length < 0)
                    {
                        length = startIndex;
                        startIndex = 0;
                    }
                    else
                    {
                        startIndex = startIndex - length;
                    }
                }
                if (startIndex > str.Length)
                {
                    return "";
                }
            }
            else
            {
                if (length < 0)
                {
                    return "";
                }
                else
                {
                    if (length + startIndex > 0)
                    {
                        length = length + startIndex;
                        startIndex = 0;
                    }
                    else
                    {
                        return "";
                    }
                }
            }
            if (str.Length - startIndex < length)
            {
                length = str.Length - startIndex;
            }
            return str.Substring(startIndex, length);
        }

        /// <summary>
        /// 从字符串的指定位置开始截取到字符串结尾的了符串
        /// </summary>
        /// <param name="str">原字符串</param>
        /// <param name="startIndex">子字符串的起始位置</param>
        /// <returns>子字符串</returns>
        public static string CutString(string str, int startIndex)
        {
            return CutString(str, startIndex, str.Length);
        }

        /// <summary>
        /// 截取半角字符串(一个全角字符按2长度计算),当截取的位置只到全角字符的一半时不会取到该全角字符<br/>
        /// </summary>
        /// <param name="str">字符串</param>
        /// <param name="startIndex">开始截取位置</param>
        /// <param name="length">要截取的字符串长度</param>
        /// <returns></returns>
        public static string CutDBCString(string str, int startIndex, int length)
        {
            return CutDBCString(str, startIndex, length, "");
        }

        /// <summary>
        /// 截取半角字符串(一个全角字符按2长度计算),当截取的位置只到全角字符的一半时不会取到该全角字符<br/>
        /// </summary>
        /// <param name="str">字符串</param>
        /// <param name="startIndex">开始截取位置</param>
        /// <param name="length">要截取的字符串长度</param>
        /// <param name="fillStr">当字符串长度超过要截过的长度时追加到字符串末尾</param>
        /// <returns></returns>
        public static string CutDBCString(string str, int startIndex, int length, string appendStr)
        {
            if (string.IsNullOrEmpty(str)) return "";
            StringBuilder sb = new StringBuilder();
            Encoding e = Encoding.GetEncoding("gb2312");
            int n = 0;
            int endIndex = startIndex + length;
            foreach (char c in str)
            {
                if (n >= startIndex)
                {
                    n += e.GetByteCount(c.ToString());
                    if (n <= endIndex)
                    {
                        sb.Append(c);
                    }
                    else
                    {
                        sb.Append(appendStr);
                        break;
                    }
                }
                else
                {
                    n += e.GetByteCount(c.ToString());
                }
            }
            return sb.ToString();
        }

        public static bool StartsWith(string text, char lookfor)
        {
            return (text.Length > 0 && text[0] == lookfor);
        }
    }
}
