using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class addsubjectallocation : System.Web.UI.Page
{
    db d = new db();
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = d.latestId("tbl_subjectallocation", "alloid");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        while (ListBox1.SelectedIndex != -1)
        {
            d.insertData("insert into tbl_subjectallocation values(" + d.latestId("tbl_subjectallocation", "alloid") + "," + ListBox1.Items[ListBox1.SelectedIndex].Value + "," + DropDownList1.SelectedValue + ")");
            ListBox1.Items.RemoveAt(ListBox1.SelectedIndex);
        }
        Response.Redirect("viewSubjectAllocation.aspx");
    }
}