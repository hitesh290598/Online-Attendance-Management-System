﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterProf : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["professor"] == null)
        {
            Response.Redirect("adminLogin.aspx");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["professor"] = null;
        Session.Abandon();
        Response.Redirect("adminLogin.aspx");
    }
}
