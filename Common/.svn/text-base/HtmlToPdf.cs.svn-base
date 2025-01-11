using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System;
using System.IO;
using System.Text;
using System.Collections;
using System.Diagnostics;
using System.Web;

namespace Insourcia.Common
{
    public class HtmlToPdf
    {

        /// <summary>
        /// HTML生成PDF
        /// </summary>
        /// <param name="url">地址</param>
        /// <param name="path">PDF存放路径</param>
        public static bool ToPdf(string url, string path)
        {
            try
            {
                if (string.IsNullOrEmpty(url) || string.IsNullOrEmpty(path))
                    return false;
                Process p = new Process();
                string str = System.Web.HttpContext.Current.Server.MapPath("/wkhtmltopdf.exe");
                if (!System.IO.File.Exists(str))
                    return false;
                p.StartInfo.FileName = str;
                p.StartInfo.Arguments = " \"" + url + "\" " + path;
                p.StartInfo.UseShellExecute = false;
                p.StartInfo.RedirectStandardInput = true;
                p.StartInfo.RedirectStandardOutput = true;
                p.StartInfo.RedirectStandardError = true;
                p.StartInfo.CreateNoWindow = true;
                p.Start();
                System.Threading.Thread.Sleep(500);

                return true;
            }
            catch (Exception ex)
            {
                HttpContext.Current.Response.Write(ex);
            }
            return false;

        }
    }
}
