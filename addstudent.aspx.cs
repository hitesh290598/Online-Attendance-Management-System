using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Collections;

public partial class addstudent : System.Web.UI.Page
{
    db d1 = new db();
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = d1.latestId("tbl_student", "studid");
        Label2.Visible = false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String st = DropDownList1.SelectedValue;
        string qry = "select * from tbl_student where courseid="+ st +" and rollno="+TextBox2.Text;
        string op = d1.getSingleRow(qry);
        if (op.Length > 0)
        {
            Label2.Visible = true;
        }
        else
        {
            d1.insertData("insert into tbl_student values("+d1.latestId("tbl_student", "studid")+",'"+TextBox1.Text+"',"+DropDownList1.SelectedValue+","+TextBox2.Text+","+TextBox3.Text+")");
            Response.Redirect("viewStudent.aspx");
        }
    }
}