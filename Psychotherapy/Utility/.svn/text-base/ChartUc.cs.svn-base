using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Insourcia.Psychotherapy.Utility
{
    public class ChartUc
    {
        private const string path = "ClientFiles\\{0}\\{1}\\{2}";

        /// <summary>
        /// 
        /// </summary>
        /// <param name="id"></param>
        /// <param name="folder"></param>
        /// <param name="file"></param>
        /// <returns></returns>
        public static string GetFilePath(int id, string folder, string file)
        {
            string filepath = string.Format(path, id, folder, file);
            if (System.IO.File.Exists(AppDomain.CurrentDomain.BaseDirectory + filepath))
            {
                return filepath;
            }
            return string.Empty;
        }

    }
}