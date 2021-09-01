using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;

public partial class viewStudent : System.Web.UI.Page
{
    db d1 = new db();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("addstudent.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("deleteStudent.aspx");
    }
    protected void Button3_Click1(object sender, EventArgs e)
    {
        Response.Redirect("updateStudent.aspx");
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        GridView1.DataSourceID = null;
        SqlDataSource S1 = new SqlDataSource();
        S1.ID = "Sql";
        this.Page.Controls.Add(S1);
        S1.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["AttendanceManagement"].ConnectionString;
        S1.SelectCommand = "SELECT tbl_student.studid, tbl_student.studname, tbl_course.coursename, tbl_student.rollno, tbl_student.contactno FROM tbl_course INNER JOIN tbl_student ON tbl_course.courseid = tbl_student.courseid where tbl_student.courseid="+DropDownList1.SelectedValue+";";
        GridView1.DataSource = S1;
        GridView1.DataBind();
    }
}