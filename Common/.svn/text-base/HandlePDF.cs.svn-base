using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.IO;
using iTextSharp.text.pdf;
using System.Web;
using System.Diagnostics;
using iTextSharp.text;

namespace Insourcia.Common
{
    /// <summary>
    /// 功能：按模板生成对应的PDF文件
    /// 作者：Leeo
    /// 时间：2011-1-14
    /// </summary>
    public class HandlePDF
    {
        // PDF文件存储父目录
        private string pdfDir = "Views\\Form\\Pdf";
        // 生成的模板文件名称
        private string tplName = "";
        // 存储模板中变量参数的数组
        private Hashtable parm_list = new Hashtable();
        // 根目录
        private string baseDir = "";

        /// <summary>
        /// 设置模板变量及值
        /// </summary>
        /// <param name="key">变量名</param>
        /// <param name="value">变量值</param>
        public void AddField(string key, object value)
        {
            parm_list.Add(key, value);
        }

        public void RemoveField(string key)
        {
            parm_list.Remove(key);
        }
        /// <summary>
        /// 查找指定文件,判断是否存在,不存在则创建
        /// </summary>
        /// <param name="dir_name">要查看的文件夹的绝对路径</param>
        /// <returns>文件夹的绝对路径</returns>
        private string chkDir(string dir_name)
        {
            DirectoryInfo dir = new DirectoryInfo(dir_name);
            if (!dir.Exists)dir.Create();

            return System.Web.HttpContext.Current.Server.MapPath("/"+dir_name);
        }

        /// <summary>
        /// 创建指定格式的文件夹
        /// </summary>
        /// <returns>文件夹路径</returns>
        private string makeDateDir()
        {
            string returnPath = "";
            returnPath = chkDir(this.baseDir + "\\" + this.pdfDir);

            return returnPath;
        }

       
        /// <summary>
        /// 生成pdf文件
        /// </summary>
        /// <param name="artid">FormDateId</param>
        /// <returns></returns>
        public bool makePdfPage(int artid,string filesavepath)
        {
            try
            {
                string temp_tpl_path = this.BaseDir + this.PdfDir + "\\" + this.TplName + ".pdf";
                if (!File.Exists(temp_tpl_path)) return false;

                PdfReader pdfReader = new PdfReader(temp_tpl_path);

                PdfStamper pdfStamper = new PdfStamper(pdfReader, new FileStream(filesavepath, FileMode.OpenOrCreate));
                AcroFields acroFields = pdfStamper.AcroFields;
                Hashtable ht = acroFields.Fields;

                BaseFont pdfFont = BaseFont.CreateFont("Times-Roman", BaseFont.CP1252, BaseFont.NOT_EMBEDDED);
                //Font fontSytle = new Font(pdfFont, 8,Font.NORMAL, Color.BLACK);
                foreach (DictionaryEntry item in ht)
                {
                    string key = item.Key.ToString();
                    AcroFields.Item value = (AcroFields.Item)item.Value;
                    if (parm_list.Count > 0 && parm_list.ContainsKey(key))
                    {
                        acroFields.SetFieldProperty("name", "textfont", "font", null);
                        switch (acroFields.GetFieldType(key))
                        {
                            case AcroFields.FIELD_TYPE_CHECKBOX:
                                if (parm_list[key].ToString() == "on")
                                {
                                    acroFields.SetField(key, "Yes");
                                }
                                else if (!string.IsNullOrEmpty(parm_list[key].ToString()))
                                {
                                    acroFields.SetField(key, parm_list[key].ToString());
                                }
                                break;
                            case AcroFields.FIELD_TYPE_RADIOBUTTON:
                                acroFields.SetField(key, parm_list[key].ToString());
                                break;
                            case AcroFields.FIELD_TYPE_TEXT:
                                acroFields.SetFieldProperty(key, "textfont", pdfFont, null);
                                acroFields.SetField(key, parm_list[key].ToString());
                                break;
                            default:
                                break;
                        }
                    }
                }

                pdfStamper.FormFlattening = true;
                pdfStamper.Close();
                pdfReader.Close();

                return true;
            }
            catch (Exception e)
            {
                return false;
            }
        }
        public string BaseDir { get; set; }

        public string TplName { get; set; }

        public string PdfDir { get; set; }
    }

   
}
