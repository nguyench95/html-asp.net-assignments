using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using System.Configuration;
using System.Collections;
using System.Data;

public partial class editXml : System.Web.UI.Page
{
    String xmlPath = ConfigurationManager.AppSettings["XMLDBPath"] + "inventory.xml";
    XmlDocument xmlDocument = new XmlDocument();

    protected void Page_Load(object sender, EventArgs e)
    {
        loadFullGrid();
        xmlDocument.Load(xmlPath);
    }

    protected void loadFullGrid()
    {
        DataSet ds = new DataSet();
        ds.ReadXml(xmlPath);
        stockGridView.DataSource = ds.Tables[0];
        stockGridView.DataBind();
        return;
    }

    protected XmlNode findNode()
    {
        XmlNode node = xmlDocument.SelectSingleNode(String.Format("books/book[title='{0}']", txtTitle.Text));
        return node;
    }

    protected void btnReset_Click(object sender, EventArgs e)
    {
        loadFullGrid();
        txtTitle.Text = "";
        txtAuthor.Text = "";
        txtGenre.Text = "";
        txtDescription.Text = "";
        txtPrice.Text = "";
        txtQuantity.Text = "";
        txtImg.Text = "";
        lblStatus.Text = "";
    }

    protected void btnEdit_Click(object sender, EventArgs e)
    {
        XmlNode node = findNode();
        if(node == null)
        {
            lblStatus.Text = "title not found";
            return;
        }

        if(!String.IsNullOrEmpty(txtAuthor.Text))
        {
            node["author"].InnerText = txtAuthor.Text;
        }
        if (!String.IsNullOrEmpty(txtGenre.Text))
        {
            node["genre"].InnerText = txtGenre.Text;
        }
        if (!String.IsNullOrEmpty(txtDescription.Text))
        {
            node["description"].InnerText = txtDescription.Text;
        }
        if (!String.IsNullOrEmpty(txtPrice.Text))
        {
            node["price"].InnerText = txtPrice.Text;
        }
        if (!String.IsNullOrEmpty(txtQuantity.Text))
        {
            node["quantity"].InnerText = txtQuantity.Text;
        }
        if (!String.IsNullOrEmpty(txtImg.Text))
        {
            node["cover"].InnerText = txtImg.Text;
        }

        xmlDocument.Save(xmlPath);
        loadFullGrid();
    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        XmlNode node = findNode();
        if (node != null)
        {
            lblStatus.Text = "title already added";
            return;
        }
        else if (String.IsNullOrEmpty(txtTitle.Text))
        {
            lblStatus.Text = "must have a title, book not added";
            return;
        }

        XmlNode newNode = xmlDocument.CreateNode(XmlNodeType.Element, "book", null);

        Dictionary<string, string> bookInfo = new Dictionary<string, string>();
        bookInfo.Add("title", txtTitle.Text);
        bookInfo.Add("author", txtAuthor.Text);
        bookInfo.Add("genre", txtGenre.Text);
        bookInfo.Add("description", txtDescription.Text);
        bookInfo.Add("price", txtPrice.Text);
        bookInfo.Add("quantity", txtQuantity.Text);
        bookInfo.Add("cover", txtImg.Text);


        foreach (KeyValuePair<string, string> entry in bookInfo)
        {
            XmlElement childNode = xmlDocument.CreateElement(entry.Key.ToString());
            childNode.InnerText = entry.Value.ToString();
            newNode.AppendChild(childNode);
        }

        XmlNode root = xmlDocument.DocumentElement;
        root.AppendChild(newNode);

        xmlDocument.Save(xmlPath);

        lblStatus.Text = txtTitle.Text + " has been added";
        loadFullGrid();
    }

    protected void btnDelete_Click(object sender, EventArgs e)
    {
        XmlNode node = findNode();
        if (node == null)
        {
            lblStatus.Text = "title not found";
            return;
        }

        node.ParentNode.RemoveChild(node);
        xmlDocument.Save(xmlPath);

        lblStatus.Text = txtTitle.Text + " removed from database";
        loadFullGrid();
    }
}