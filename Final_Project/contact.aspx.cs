using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class contact : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if((bool)Session["contactBack"])
        {
            txtName.Text = (String)Session["contactName"];
            txtEmail.Text = (String)Session["contactEmail"];
            txtPhone.Text = (String)Session["contactPhone"];
            txtComment.Text = (String)Session["contactComment"];
            Session["contactBack"] = false;
        }
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        Session["contactName"] = txtName.Text;
        Session["contactPhone"] = txtPhone.Text;
        Session["contactEmail"] = txtEmail.Text;
        Session["contactComment"] = txtComment.Text;
        Response.Redirect("contactConfirm.aspx");
    }

    protected void valEmailOrPhone_ServerValidate(object source, ServerValidateEventArgs args)
    {
        if(string.IsNullOrEmpty(txtEmail.Text) && string.IsNullOrEmpty(txtPhone.Text))
        {
            args.IsValid = false;
            return;
        }
        args.IsValid = true;
    }
}