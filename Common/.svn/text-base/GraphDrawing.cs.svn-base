using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Drawing;
using System.Data;
using System.Drawing.Drawing2D;
using System.Drawing.Text;

namespace Insourcia.Common
{
    public class RatingDatas
    {
        public List<SymptomRatingData> RatingData { get; set; }
    }
    public class SymptomRatingData
    {
        public int Client { get; set; }
        public int Therapist { get; set; }
        public DateTime Data { get; set; }
    }

    /// <summary>
    /// 提供实现条形图的绘制
    /// </summary>
    public class GraphDrawing
    {
        private List<Color> ColorItem = GetColorList();
        //private int _height;
        //private int _legendWidth;//图例宽度

        public Image BarGraph(string GraphTitle, int width, int height, List<RatingDatas> ratingDataList)
        {
            if (ratingDataList.Count < 1)
            {
                return null;
            }
            //上下边距
            int iChartTop = 75;
            int iChartBottom = 35;
            //左右边距
            int iChartLeft = 50;
            int iChartRight = 50;
            //图的高和宽
            int iChartWidth = width - iChartLeft - iChartRight;
            int iChartHeight = height - iChartTop - iChartBottom;
            // 最大值为5
            float fHighPoint = 5;
            //每条矩形的宽度
            float barWidth = iChartWidth / 72;
            //值为1时所对应的高度(最小刻度值)
            float barMinHeight = iChartHeight / fHighPoint;

            //建立一个Graphics对象实例 
            Bitmap bitmap = new Bitmap(width, height);
            try
            {
                Graphics graph = Graphics.FromImage(bitmap);

                //设置条图图形和文字属性
                graph.ScaleTransform(1, 1);
                graph.SmoothingMode = SmoothingMode.Default;
                graph.TextRenderingHint = TextRenderingHint.AntiAlias;

                //设定画布和边 
                graph.Clear(Color.White);
                graph.DrawRectangle(Pens.Black, 0, 0, width - 5, height - 5);

                //画大标题 
                graph.DrawString(GraphTitle, new Font("Arial", 14), Brushes.Black, new PointF(width / 2 - 25, 25));

                //画条形图 
                PointF barOrigin = new PointF(iChartLeft + (barWidth / 2), 0);

                foreach (RatingDatas ratingDatas in ratingDataList)
                {
                    List<SymptomRatingData> ratingData = ratingDatas.RatingData;
                    DateTime dt = new DateTime();
                    //画Client列
                    for (int i = 0; i < ratingData.Count; i++)
                    {
                        SymptomRatingData symptomRatingData = ratingData[i];
                        float barHeight = Convert.ToSingle(symptomRatingData.Client) * barMinHeight;
                        barOrigin.Y = iChartTop + iChartHeight - barHeight;
                        graph.FillRectangle(new SolidBrush(ColorItem[i]), barOrigin.X, barOrigin.Y, barWidth, barHeight);
                        barOrigin.X = barOrigin.X + (barWidth + barWidth / 2);
                        dt = symptomRatingData.Data;
                    }
                    //Client同Therapist之间的间隔
                    barOrigin.X += 20;
                    //画日期列
                    graph.DrawString(dt.ToShortDateString(), new Font("Arial", 12), Brushes.Black, new PointF(barOrigin.X - 50, iChartTop + iChartHeight + 10));
                    //画Therapist列
                    for (int i = 0; i < ratingData.Count; i++)
                    {
                        SymptomRatingData symptomRatingData = ratingData[i];
                        float barHeight = Convert.ToSingle(symptomRatingData.Therapist) * barMinHeight;
                        barOrigin.Y = iChartTop + iChartHeight - barHeight;
                        graph.FillRectangle(new SolidBrush(ColorItem[i]), barOrigin.X, barOrigin.Y, barWidth, barHeight);
                        barOrigin.X = barOrigin.X + (barWidth + barWidth / 2);
                    }
                    //两次Rating之间的间隔
                    barOrigin.X += 40;
                }
                //设置边 
                graph.DrawLine(new Pen(Color.Black, 2), new Point(iChartLeft, iChartTop), new Point(iChartLeft, iChartTop + iChartHeight));
                graph.DrawLine(new Pen(Color.Black, 2), new Point(iChartLeft, iChartTop + iChartHeight), new Point(iChartLeft + iChartWidth, iChartTop + iChartHeight));

                //画图例
                //bitmap = DrawLegend(bitmap,width,height,legendWidth,dataTable);

                //输出图形 
                graph.Dispose();
                return bitmap;
            }
            catch (Exception)
            {
                return null;
            }
            
        }

        /// <summary>
        /// 画图例
        /// </summary>
        /// <param name="graph"></param>
        /// <returns></returns>
        private Bitmap DrawLegend(Bitmap graph, int width, int height, int legendWidth, DataTable dataTable)
        {
            Bitmap bitmap = new Bitmap(250, height);
            Graphics objGraphic = Graphics.FromImage(bitmap);
            Graphics graphic = Graphics.FromImage(graph);

            int i, x;
            for (i = 0, x = legendWidth; i < dataTable.Rows.Count; i++)
            {
                //Draw the bar
                SolidBrush brush = new SolidBrush(ColorItem[i]);
                objGraphic.FillRectangle(brush, 10, height - 90 - x, legendWidth, legendWidth);

                string drawString = dataTable.Rows[i][0].ToString() + " - " + dataTable.Rows[i][1].ToString();
                Font drawFont = new Font("Arial", 8);
                SolidBrush drawBrush = new SolidBrush(Color.Black);

                objGraphic.DrawString(drawString, drawFont, drawBrush, legendWidth * 2, height - 90 - x);

                //x axis spacing by m_legendWidth + 5
                x += legendWidth + 5;
            }

            // Draw the string and the rectangle for the legend
            graphic.DrawRectangle(Pens.Black, width / 2, 0, x + 10, 40);
            //graphic.
            //graphic.DrawString("Legend", new Font("Arial", 11, FontStyle.Bold), Brushes.Purple, new PointF(width - 180, height - 110 - x));

            graphic.DrawImage(bitmap, width / 2, 0);

            return (graph);
        }

        public static List<Color> GetColorList()
        {
            List<Color> colorList = new List<Color>();

            foreach (string colorName in Enum.GetNames(typeof(KnownColor)))
            {
                if (colorName.StartsWith("D") || colorName.StartsWith("P"))
                {
                    colorList.Add(Color.FromName(colorName));
                }
            }

            return colorList;
        }

        protected Color GetChartItemColor(int index)
        {
            Color selectedColor;
            switch (index)
            {
                case 0:
                    selectedColor = Color.Blue;
                    break;
                case 1:
                    selectedColor = Color.Red;
                    break;
                case 2:
                    selectedColor = Color.Yellow;
                    break;
                case 3:
                    selectedColor = Color.Purple;
                    break;
                default:
                    selectedColor = Color.Green;
                    break;
            }
            return selectedColor;
        }
    }
}
