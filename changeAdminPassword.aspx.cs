using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class changeAdminPassword : System.Web.UI.Page
{
    db d1 = new db();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string st = d1.getSingleRow("select * from tbl_admin where pass='" + TextBox1.Text + "'");
        string[] data = st.Split(':');
        if (st.Equals(""))
        {
            Label1.Text = "Incorrect Password";
        }
        else
        {
            d1.updateData("update tbl_admin set pass='" + TextBox3.Text + "' where pass='" + TextBox1.Text + "'");
            Response.Write("<script>alert('password changed succesfully...');</script>");
            //Response.Redirect("changeAdminPassword.aspx");
        }
    }
}