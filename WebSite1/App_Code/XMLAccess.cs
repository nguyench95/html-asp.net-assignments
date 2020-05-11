using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Xml;
using System.Collections;
using System.Data;
using System.Configuration;

public class XMLAccess
{
    private string xmlPath
    {
        get
        {
            return ConfigurationManager.AppSettings["XMLDBPath"];
        }
    }

    public XMLAccess()
    {

    }

    public bool AddNode(Dictionary<string, string> bookInfo)
    {
        try
        {
            XmlDocument xmlDocument = new XmlDocument();
            xmlDocument.Load(xmlPath);


            XmlNode newBook = xmlDocument.CreateNode(XmlNodeType.Element, "Book", null);


            foreach (KeyValuePair<string, string> entry in bookInfo)
            {
                XmlElement node = xmlDocument.CreateElement(entry.Key.ToString());
                node.InnerText = entry.Value.ToString();


                newBook.AppendChild(node);
            }


            XmlNode root = xmlDocument.DocumentElement;
            root.AppendChild(newBook);

            xmlDocument.Save(xmlPath);

            return true;
        }
        catch
        {
            return false;
        }
    }

    public string RemoveNode(String name)
    {
        XmlDocument xmlDocument = new XmlDocument();
        xmlDocument.Load(xmlPath);

        XmlNode node = xmlDocument.SelectSingleNode(String.Format("Bookstore/Book[name='{0}']", name));
        if (node != null)
        {
            node.ParentNode.RemoveChild(node);

            xmlDocument.Save(xmlPath);
            string retMsg = String.Format("Book {0} is removed from the database.", name);
            return retMsg;
        }
        else
        {
            string notFound = String.Format("Book {0} is not in the database.", name);
            return notFound;
        }

    }

    public string SearchNode(String name)
    {
        XmlDocument xmlDocument = new XmlDocument();
        xmlDocument.Load(xmlPath);

        XmlNode node = xmlDocument.SelectSingleNode(String.Format("Bookstore/Book[name='{0}']", name));
        if (node != null)
            return node.OuterXml.ToString();
        else
        {
            string notFound = String.Format("Book {0} is not in the database.", name);
            return notFound;
        }

    }

    public DataSet RetrieveNodes()
    {
        DataSet ds = new DataSet();
        ds.ReadXml(xmlPath);

        return ds;
    }
}
