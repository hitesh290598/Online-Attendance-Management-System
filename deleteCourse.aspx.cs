using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class deleteCourse : System.Web.UI.Page
{
    db d1 = new db();
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Visible = false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string st = d1.getSingleRow("select * from tbl_course where courseid=" + TextBox1.Text + "");
        if (st.Length > 0)
        {
            d1.deleteData("delete from tbl_course where courseid=" + TextBox1.Text + "");
            Response.Redirect("viewCourse.aspx");
        }
        else
        {
            Label1.Visible = true;
        }
        
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
        GridView1.Visible = true;

    }
}