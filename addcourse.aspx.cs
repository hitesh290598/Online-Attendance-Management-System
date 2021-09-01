using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class addcourse : System.Web.UI.Page
{
    db d1 = new db();

    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = d1.latestId("tbl_course", "courseid");
        Label2.Visible = false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if(d1.checkAvailablity("tbl_course", "coursename",TextBox2.Text))
        {
            Label2.Visible=true;
        }
        else
        {
            Label2.Visible=false;
            d1.insertData("insert into tbl_course values("+d1.latestId("tbl_course", "courseid")+",'"+TextBox2.Text+"')");
            Response.Redirect("viewCourse.aspx");
        }
     

    }
}