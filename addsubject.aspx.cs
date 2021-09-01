using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class addsubject : System.Web.UI.Page
{
    db d1 = new db();
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = d1.latestId("tbl_subject", "subid");
        Label2.Visible = false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (d1.checkAvailablity("tbl_subject", "subname", TextBox1.Text))
        {
            Label2.Visible = true;
        }
        else
        {
            Label2.Visible = false;
            d1.insertData("insert into tbl_subject values(" + d1.latestId("tbl_subject", "subid") + ",'" + TextBox1.Text + "','"+DropDownList1.SelectedValue+"')");
            Response.Redirect("viewSubject.aspx");
        }
    }
}