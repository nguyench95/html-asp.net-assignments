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

public partial class index : System.Web.UI.Page
{
    String inventoryXmlPath = ConfigurationManager.AppSettings["XMLDBPath"] + "inventory.xml";
    String discountsXmlPath = ConfigurationManager.AppSettings["XMLDBPath"] + "discounts.xml";
    String newReleasesXmlPath = ConfigurationManager.AppSettings["XMLDBPath"] + "newReleases.xml";

    protected void Page_Load(object sender, EventArgs e)
    {
        Session["contactBack"] = false;
    }

    protected void newReleasesGridView_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}