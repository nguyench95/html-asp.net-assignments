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

public partial class inventory : System.Web.UI.Page
{

    String xmlPath = ConfigurationManager.AppSettings["XMLDBPath"] + "inventory.xml";

    protected void Page_Load(object sender, EventArgs e)
    {
        loadFullGrid();
    }

    protected void btnReset_Click(object sender, EventArgs e)
    {
        loadFullGrid();
        txtSearch.Text = "";
        lblSearchMsg.Text = "";
    }

    protected void btnTitle_Click(object sender, EventArgs e)
    {
        doSearch("title");

    }

    protected void btnGenre_Click(object sender, EventArgs e)
    {
        doSearch("genre");

    }

    protected void btnAuthor_Click(object sender, EventArgs e)
    {
        doSearch("author");
    }

    protected void clearGrid()
    {
        stockGridView.DataSource = null;
        stockGridView.DataBind();
        return;
    }

    protected void loadFullGrid()
    {
        DataSet ds = new DataSet();
        ds.ReadXml(xmlPath);
        stockGridView.DataSource = ds.Tables[0];
        stockGridView.DataBind();
        return;
    }

    protected void doSearch(string type)
    {
        if(String.IsNullOrEmpty(txtSearch.Text))
        {
            lblSearchMsg.Text = "Search is empty, type something in box to search it.";
            return;
        }

        clearGrid();

        XmlDocument xmlDocument = new XmlDocument();
        xmlDocument.Load(xmlPath);

        XmlNodeList nodes = xmlDocument.SelectNodes(String.Format("books/book["+type+"='{0}']", txtSearch.Text));

        if(nodes.Count == 0)
        {
            lblSearchMsg.Text = "No Search results found.";
            return;
        }

        lblSearchMsg.Text = nodes.Count.ToString() +" results found";

        stockGridView.DataSource = ConvertXmlNodeListToDataTable(nodes);
        stockGridView.DataBind();

    }

    //not mine, taken from http://aspdotnetcodebook.blogspot.com/2008/04/how-to-convert-xmlnodelist-to-datatable.html
    public static DataTable ConvertXmlNodeListToDataTable(XmlNodeList xnl)
    {
        DataTable dt = new DataTable();
        int TempColumn = 0;

        foreach (XmlNode node in xnl.Item(0).ChildNodes)
        {
            TempColumn++;
            DataColumn dc = new DataColumn(node.Name, System.Type.GetType("System.String"));
            if (dt.Columns.Contains(node.Name))
            {
                dt.Columns.Add(dc.ColumnName = dc.ColumnName + TempColumn.ToString());
            }
            else
            {
                dt.Columns.Add(dc);
            }

        }

        int ColumnsCount = dt.Columns.Count;
        for (int i = 0; i < xnl.Count; i++)
        {
            DataRow dr = dt.NewRow();
            for (int j = 0; j < ColumnsCount; j++)
            {
                dr[j] = xnl.Item(i).ChildNodes[j].InnerText;
            }
            dt.Rows.Add(dr);
        }
        return dt;
    }
}