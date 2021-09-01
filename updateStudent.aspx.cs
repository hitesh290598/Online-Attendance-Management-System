using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class updateStudent : System.Web.UI.Page
{
    db d1 = new db();
    protected void Page_Load(object sender, EventArgs e)
    {
        Label2.Visible = false;
        Label1.Visible = false;
    }
    protected void TextBox4_TextChanged(object sender, EventArgs e)
    {
        string st = d1.GetSingleRow("select * from tbl_student where studid=" + TextBox4.Text + "");
        string[] data = st.Split(':');
        if (st.Length > 0)
        {
            TextBox1.Text = data[1].ToString();
            TextBox2.Text = data[3].ToString();
            DropDownList1.Text = data[2].ToString();
            TextBox3.Text = data[4].ToString();
        }
        else
        {
            Label1.Visible = true;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String st = DropDownList1.SelectedValue;
        string qry = "select * from tbl_student where courseid=" + st + " and rollno=" + TextBox2.Text;
        string op = d1.getSingleRow(qry);
        if (op.Length > 0)
        {
            Label2.Visible = true;
        }
        else
        {
            d1.updateData("update tbl_student set studname='" + TextBox1.Text + "',courseid=" + DropDownList1.SelectedValue + " ,rollno=" + TextBox2.Text + " ,contactno=" + TextBox3.Text + " where studid=" + TextBox4.Text + "");
            Response.Redirect("viewStudent.aspx");
        }
    }
    
}