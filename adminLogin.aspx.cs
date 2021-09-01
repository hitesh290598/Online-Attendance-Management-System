using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class adminLogin : System.Web.UI.Page
{
    db d = new db();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedValue == "Admin")
        {
            string st = d.getSingleRow("select * from tbl_admin  where uid='" + TextBox1.Text + "' and pass='" + TextBox2.Text + "'");
            string[] data = st.Split(':');
            if (st.Equals(""))
            {
                Response.Write("<script>alert('Invalid username or password');</script>");
                //Response.Redirect("adminLogin.aspx");
            }
            else
            {
                if ((data[0] == TextBox1.Text) && (data[1] == TextBox2.Text))
                {
                    Session["admin"] = data[0];
                    Response.Redirect("adminmain.aspx");

                }
                else
                {
                    Response.Write("<script>alert('Invalid username or password');</script>");
                    //Response.Redirect("adminLogin.aspx");

                }
            }
        }
        else if (DropDownList1.SelectedValue == "Professor")
        {
            string st = d.getSingleRow("select * from tbl_professor  where userid='" + TextBox1.Text + "' and pass='" + TextBox2.Text + "'");
            string[] data = st.Split(':');
            if (st.Equals(""))
            {
                Response.Write("<script>alert('Invalid username or password');</script>");
                //Response.Write("<script LANGUAGE='JavaScript' >alert('Invalid Username or password')</script>");
               // Response.Redirect("adminLogin.aspx");
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
                    Response.Write("<script>alert('Invalid username or password');</script>");
                    //Response.Write("<script LANGUAGE='JavaScript' >alert('Invalid Username or password')</script>");
                    //Response.Redirect("adminLogin.aspx");

                }
            }
        }
        else
        {
            Response.Write("<script>alert('Invalid username or password');</script>");
           // Response.Write("<script>alert('login successful');</script>");
           // Response.Redirect("adminLogin.aspx");
        }
    }
}