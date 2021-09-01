using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class adminDefaulter : System.Web.UI.Page
{
    db d = new db();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Calendar1.Visible = false;
            Calendar2.Visible = false;
            DropDownList1.DataSource = null;
            SqlDataSource s2 = new SqlDataSource();
            s2.ID = "sql2";
            this.Page.Controls.Add(s2);
            s2.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["AttendanceManagement"].ConnectionString;
            s2.SelectCommand = "select * from tbl_course";
            DropDownList1.DataSource = s2;
            DropDownList1.DataTextField = "coursename";
            DropDownList1.DataValueField = "courseid";
            DropDownList1.DataBind();
            DropDownList1.Items.Insert(0, new ListItem("-------------SELECT CLASS-------------", ""));
        }
       
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        DropDownList2.DataSourceID = null;
        SqlDataSource s1 = new SqlDataSource();
        s1.ID = "sql";
        this.Page.Controls.Add(s1);
        s1.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["AttendanceManagement"].ConnectionString;
        s1.SelectCommand = "select subid,subname from tbl_subject where courseid=" + DropDownList1.SelectedValue + "";
        DropDownList2.DataSource = s1;
        DropDownList2.DataTextField = "subname";
        DropDownList2.DataValueField = "subid";
        DropDownList2.DataBind();
        DropDownList2.Items.Insert(0, new ListItem("-------------SELECT SUBJECT-------------", ""));
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        string st=d.getSingleRow("SELECT tbl_professor.pname FROM tbl_professor INNER JOIN tbl_subjectallocation ON tbl_professor.pid = tbl_subjectallocation.pid WHERE (tbl_subjectallocation.subid = "+DropDownList2.SelectedValue+")");
        string[] data=st.Split(':');
        TextBox1.Text=data[0].ToString();
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Calendar1.Visible = true;
    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        TextBox2.Text = Calendar1.SelectedDate.ToShortDateString();
        Calendar1.Visible = false;
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Calendar2.Visible = true;
    }
    protected void Calendar2_SelectionChanged(object sender, EventArgs e)
    {
        TextBox3.Text = Calendar2.SelectedDate.ToShortDateString();
        Calendar2.Visible = false;
    }
}