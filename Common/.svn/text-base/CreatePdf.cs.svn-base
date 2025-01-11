using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using iTextSharp.text;
using iTextSharp.text.pdf;
using System.IO;
using System.Collections;

namespace Insourcia.Common
{
    public class CreatePdf
    {
        public float wWidth;
        public CreatePdf(){ }

        public CreatePdf(string pdfPath,bool pdfDate)
        {
            _document = new Document(iTextSharp.text.PageSize.LETTER, 25, 25, 25, 25);//定义pdf大小，设置上下左右边距
            Rectangle rect = _document.PageSize;
            wWidth = rect.Width;
            _writer = PdfWriter.GetInstance(_document, new FileStream(pdfPath + (pdfDate ? DateTime.Now.ToString("yyyyMMddhhmmss") : string.Empty) + ".pdf", FileMode.Create));  //生成pdf路径，创建文件流
        }

        public CreatePdf(string pdfPath, bool pdfDate, float pdfWidth, float pdfHeight)
        {
            _document = new Document(iTextSharp.text.PageSize.LETTER, 25, 25, 25, 25);//定义pdf大小，设置上下左右边距
            Rectangle rect = new Rectangle(pdfWidth, pdfHeight);//设置整个版面的宽度和高度  
            _document.SetPageSize(rect);
            _writer = PdfWriter.GetInstance(_document, new FileStream(pdfPath + (pdfDate ? DateTime.Now.ToString("yyyyMMddhhmmss") : string.Empty) + ".pdf", FileMode.Create));  //生成pdf路径，创建文件流
        }
        
        private Document _document = null;
        public Document Document
        {
            get { return _document; }
            //private set { _document = value; }
        }
        private PdfWriter _writer = null;
        public PdfWriter Writer
        {
            get { return _writer; }
            //private set { _writer = value; }
        }

        /// <summary>
        /// 默认字体和颜色
        /// </summary>
        public Color defaultColor = new Color(int.Parse("9f9fa0", System.Globalization.NumberStyles.AllowHexSpecifier));
        public BaseFont defaultFont = BaseFont.CreateFont(@"c:\windows\fonts\arial.ttf", BaseFont.IDENTITY_H, BaseFont.NOT_EMBEDDED);

        //public Table SetIntTable()
        //{
        //    Table table = new Table();
        //}
        /// <summary>
        /// 设置文字的大小类型、颜色和样式 
        /// </summary>
        /// <param name="type">字体类型</param>
        /// <param name="size">大小</param>
        /// <param name="color">颜色</param>
        /// <param name="style">样式(不加样式值为：Font.NORMAL)</param>
        /// <returns></returns>
        public Font BaseFontAndSize(int type, int size, string color, int style)
        {
            BaseFont bf;
            Font font = null;
            Color c = new Color(int.Parse(color, System.Globalization.NumberStyles.AllowHexSpecifier));
            switch (type)
            {
                case 0:
                    bf = BaseFont.CreateFont(@"c:\windows\fonts\arial.ttf", BaseFont.IDENTITY_H, BaseFont.NOT_EMBEDDED);//字体：Arial   
                    font = new Font(bf, size, Font.NORMAL, c);
                    break;
                case 1:
                    bf = BaseFont.CreateFont(@"c:\windows\fonts\verdana.ttf", BaseFont.IDENTITY_H, BaseFont.NOT_EMBEDDED);//字体：Verdana  
                    font = new Font(bf, size, Font.NORMAL, c);
                    break;
                case 2:
                    bf = BaseFont.CreateFont(@"c:\windows\fonts\msyi.ttf", BaseFont.IDENTITY_H, BaseFont.NOT_EMBEDDED);//字体：微软雅黑  
                    font = new Font(bf, size, Font.NORMAL, c);
                    break;
            }
            return font;
        }



        #region 
        //private float bankai;//页面宽度的一半  
        //private float bangao;//页面高度的一半  
        //private float[] left = { 75, 1100 };
        //private float[] rightwidth = { 500, 675 };
        //private float[] imageWidth = { 600, 0 };
        //private float[] imgWidth = { 0, 600 };
        //private const bool boo = true;//当目录数大于10则进行分栏  
        //private const int column = 0;//0为左边1为右边 

        //public CreatePdf() { }

        //public CreatePdf(DataTable dt, string imagePath, string pdfPath)
        //{
        //    Document document = new Document(iTextSharp.text.PageSize.A4, 25, 25, 25, 25);//定义pdf大小，设置上下左右边距 
        //    Rectangle rect = new Rectangle(1190, 841);//设置整个版面的宽度和高度  
        //    document.SetPageSize(rect);
        //    bankai = document.PageSize.Width / 2;
        //    bangao = document.PageSize.Height / 2;

        //    //生成pdf路径，创建文件流
        //    PdfWriter writer = PdfWriter.GetInstance(document, new FileStream(pdfPath + DateTime.Now.ToString("yyyyMMddhhmmss") + ".pdf", FileMode.Create));  
        //    document.Open();

        //    //设置颜色  
        //    Color color = new Color(int.Parse("6c423c", System.Globalization.NumberStyles.AllowHexSpecifier));
        //    //设置字体
        //    BaseFont font = BaseFont.CreateFont(@"c:\windows\fonts\SIMLI.TTF", BaseFont.IDENTITY_H, BaseFont.NOT_EMBEDDED);


        //    //PdfContentByte cb = writer.DirectContent;
        //    //ColumnText ct = new ColumnText(cb);


        //}

        //public CreatePdf(Hashtable ht, string imagePath, string pdfPath)
        //{
        //    Document document = new Document(iTextSharp.text.PageSize.A4, 10, 10, 25, 25);//定义pdf大小，设置上下左右边距 
        //    //Rectangle rect = new Rectangle(1190, 841);//设置整个版面的宽度和高度  
        //    //document.SetPageSize(rect);
        //    //bankai = document.PageSize.Width / 2; 
        //    //bangao = document.PageSize.Height / 2;

        //    //生成pdf路径，创建文件流
        //    //PdfWriter writer = PdfWriter.GetInstance(document, new FileStream(pdfPath + DateTime.Now.ToString("yyyyMMddhhmmss") + ".pdf", FileMode.Create));
        //    PdfWriter writer = PdfWriter.GetInstance(document, new FileStream(pdfPath + ".pdf", FileMode.Create));
        //    document.Open();

        //    //设置颜色（默认）
        //    Color color = new Color(int.Parse("6c423c", System.Globalization.NumberStyles.AllowHexSpecifier));
        //    //设置字体（默认）
        //    BaseFont font = BaseFont.CreateFont(@"c:\Windows\fonts\SIMSUN.TTC,1", BaseFont.IDENTITY_H, BaseFont.NOT_EMBEDDED);


        //    PdfContentByte cb = writer.DirectContent;
        //    ColumnText ct = new ColumnText(cb);

        //    ct.AddText(new Paragraph("Symptom:", BaseFontAndSize(0, 20, "9f9fa0", Font.BOLD)));
        //    //ct.AddText(new Paragraph("Title.....................................", BaseFontAndSize(0, 17, "9f9fa0", Font.NORMAL)));
        //    ct.Indent = 20;
        //    ct.SetSimpleColumn(left[column], 300, rightwidth[column], 800, 16, Element.ALIGN_LEFT);
        //    ct.Go();

        //    ct.AddText(new Paragraph("Symptom2:", BaseFontAndSize(0, 17, "9f9fa0", Font.NORMAL)));
        //    //ct.AddText(new Paragraph("Title.....................................", BaseFontAndSize(0, 17, "9f9fa0", Font.NORMAL)));
        //    ct.Indent = 60;
        //    ct.SetSimpleColumn(left[column], 100, rightwidth[column], 750, 16, Element.ALIGN_LEFT);
        //    ct.Go();

        //    document.Close();//关闭document 
        //}

        #endregion
    }
}
