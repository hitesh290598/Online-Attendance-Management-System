using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class professorLogin : System.Web.UI.Page
{
    db d = new db();
    protected void Page_Load(object sender, EventArgs e)
    {
      
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string st=d.getSingleRow("select * from tbl_professor  where userid='"+TextBox1.Text+"' and pass='"+TextBox2.Text+"'");
        string[] data=st.Split(':');
        if (st.Equals(""))
        {
            Response.Redirect("professorLogin.aspx");
        }
        else
        {
            if ((data[2] == TextBox1.Text) && (data[3] == TextBox2.Text))
            {
                Session["professor"] = data[0];
                Response.Redirect("profmain.aspx");

            }
            else
            {
                Response.Redirect("professorLogin.aspx");

            }
        }
    }
}