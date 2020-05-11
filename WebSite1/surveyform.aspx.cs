using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using System.Data;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        XMLAccess xmlAccess = new XMLAccess();

        Dictionary<string, string> bookInfo = new Dictionary<string, string>();
        bookInfo.Add("name", txtName.Text);
        bookInfo.Add("author", txtAuthor.Text);
        bookInfo.Add("genre", txtGenre.Text);

        if (xmlAccess.AddNode(bookInfo))
        {
            Response.Write(txtName.Text + " is added to  database.");
        }
        else
        {
            Response.Write("Can not add the new book.");
        }

    }
    protected void bntSearch_Click(object sender, EventArgs e)
    {
        XMLAccess xmlAccess = new XMLAccess();
        Response.Write(xmlAccess.SearchNode(txtName.Text));
    }
    protected void bntDelete_Click(object sender, EventArgs e)
    {
        XMLAccess xmlAccess = new XMLAccess();
        Response.Write(xmlAccess.RemoveNode(txtName.Text));
    }
    
}
   
