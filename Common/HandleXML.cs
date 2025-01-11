using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Xml;

namespace Insourcia.Common
{
    /// <summary>
    /// 功能：对xml文件的基本操作 如：读、写、查找等
    /// 作者：Leeo
    /// 时间：2010-12-27
    /// </summary>
    public static class HandleXML
    {
        /// <summary>
        /// 创建xml文档
        /// </summary>
        /// <returns>返回xml文档对象</returns>
        public static XmlDocument CreatXML()
        {
            //创建xml文档
            XmlDocument xmldoc = new XmlDocument();

            //创建一个声明类型的节点
            XmlNode xmlnode = xmldoc.CreateNode(XmlNodeType.XmlDeclaration, "", "");
            xmlnode.InnerText += " encoding=\"UTF-8\"";
            xmldoc.AppendChild(xmlnode);

            //添加注释
            XmlComment xmlcomm = xmldoc.CreateComment("注释内容");
            xmldoc.AppendChild(xmlcomm);

            return xmldoc;
        }

        /// <summary>
        /// 读取xml格式字符串，将其转换为XmlDocument对象
        /// </summary>
        /// <param name="xmlString"></param>
        /// <returns></returns>
        public static XmlDocument ReadXML(String xmlString)
        {
            XmlDocument xmlDoc = new XmlDocument();
            xmlDoc.LoadXml(xmlString);
            return xmlDoc;
        }

       /// <summary>
        /// 根据xml节点名称查找对应的节点值
       /// </summary>
       /// <param name="xmlDoc"></param>
       /// <param name="nodeName"></param>
       /// <returns></returns>
        public static string getElementValue(XmlDocument xmlDoc, string nodeName)
        {
            XmlNode nodeValue = xmlDoc.SelectSingleNode("//" + nodeName);
            if (nodeValue == null) return string.Empty;
            return nodeValue.InnerText.Trim();

        }
    }
}
