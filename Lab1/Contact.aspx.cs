using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Contact : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack)
        {
            //string token = Request.QueryString["token"];
            //UserNameLabel.Text
           
            Information.Text = "Login: " + Request.Form["ctl00$MainContent$UserName"];
        }
    }


}