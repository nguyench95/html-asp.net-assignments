using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class contactConfirm : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblName.Text = (String)Session["contactName"];
        lblEmail.Text = (String)Session["contactEmail"];
        lblPhone.Text = (String)Session["contactPhone"];
        lblComment.Text = (String)Session["contactComment"];
    }

    protected void btnBack_Click(object sender, EventArgs e)
    {
        Session["contactBack"] = true;
        Response.Redirect("contact.aspx");
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        Response.Redirect("contactSent.aspx");
    }
}