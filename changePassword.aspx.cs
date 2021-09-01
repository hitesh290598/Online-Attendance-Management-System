using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class changePassword : System.Web.UI.Page
{
    db d1 = new db();
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string st = d1.getSingleRow("select * from tbl_professor where pass='" + TextBox2.Text + "'");
        string[] data = st.Split(':');
        if (st.Equals(""))
        {
            Label2.Text = "Incorrect Password";
        }
        else
        {
            d1.updateData("update tbl_professor set pass='" + TextBox4.Text + "' where pass='" + TextBox2.Text + "'");    
            Response.Write("<script>alert('password changed succesfully...');</script>");
            //Response.Redirect("changePassword.aspx");
        }  
    }
}