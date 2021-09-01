using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class attendance : System.Web.UI.Page
{
    db d = new db();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String dtts = DateTime.Now.ToString();

        for (int i = 0; i < CheckBoxList1.Items.Count; i++)
        {
            if (CheckBoxList1.Items[i].Selected == true)
            {
                d.insertData("insert into tbl_attendance values(" + d.latestId("tbl_attendance", "attid") + "," + DropDownList1.SelectedValue + "," + DropDownList2.SelectedValue + "," + CheckBoxList1.Items[i].Value + ", '" + dtts + "',1)");
            }
            else
            {
                d.insertData("insert into tbl_attendance values(" + d.latestId("tbl_attendance", "attid") + "," + DropDownList1.SelectedValue + "," + DropDownList2.SelectedValue + "," + CheckBoxList1.Items[i].Value + ",'" + dtts + "',0)");

            }
        }
        
        Response.Redirect("attendance.aspx");
    }
}