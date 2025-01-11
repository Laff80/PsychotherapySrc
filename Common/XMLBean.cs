using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Xml;

namespace Insourcia.Common
{
    public class XMLBean
    {
        private static XmlDocument xmlDoc;

        public static string getValue(string tag)
        {
            return HandleXML.getElementValue(xmlDoc, tag);
        }

        public static void setValue(string content)
        {
            XMLBean.xmlDoc = HandleXML.ReadXML(content);
        }

        public static string Xml2JSON(string content)
        {
            XmlDocument xmlDoc1 = HandleXML.ReadXML(content);
           
            return XmlToJSON.Xml2JSON(xmlDoc1);
        }
    }
}
