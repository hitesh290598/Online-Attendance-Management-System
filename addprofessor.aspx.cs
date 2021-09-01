using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class addprofessor : System.Web.UI.Page
{
    db d1 = new db();
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = d1.latestId("tbl_professor", "pid");
        Label2.Visible = false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (d1.checkAvailablity("tbl_professor", "pname", TextBox1.Text))
        {
            Label2.Visible = true;
        }
        else
        {
            Label2.Visible = false;
            d1.insertData("insert into tbl_professor values(" + d1.latestId("tbl_professor", "pid") + ",'" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "')");
            string user = "Your Userid is " + TextBox2.Text + " and Password is " + TextBox3.Text + "";
            d1.sendmail(TextBox4.Text, "USER ID AND PASSWORD", user);
            Response.Redirect("viewProfessor.aspx");
        }

    }
}