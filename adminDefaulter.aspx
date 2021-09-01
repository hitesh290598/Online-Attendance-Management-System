<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="adminDefaulter.aspx.cs" Inherits="adminDefaulter" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!-------   Content Area start  --------->
<div class="col-md-10 maincontent" >

    <!-----------  Content Menu Tab Start   ------------>
    <div class="panel panel-default contentinside">
        <div class="panel-heading">Manage Defaulter</div>
               <div id="doctorlist" class="switchgroup">
               <table class="table">
               <tr><td>CLASS</td><td>
                   <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control" AutoPostBack="True" 
                       onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                   </asp:DropDownList>
               </td><td></td></tr>
               <tr><td>SUBJECT</td><td>
                   <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control" 
                       AutoPostBack="True" onselectedindexchanged="DropDownList2_SelectedIndexChanged">
                       <asp:ListItem Enabled="true" Selected="True" Text="-------------SELECT SUBJECT-------------" Value="-1"></asp:ListItem> 
                   </asp:DropDownList>
               </td><td></td></tr>
               <tr><td>PROFESSOR NAME</td><td>
                   <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox></td><td></td></tr>
               <tr><td>DATE</td><td>FROM<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                   <asp:ImageButton ID="ImageButton1" runat="server" Height="20px" 
                       ImageUrl="~/IMG/a1.png" onclick="ImageButton1_Click" Width="27px" />
                   <asp:Calendar ID="Calendar1" runat="server" BackColor="White" 
                       BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" 
                       DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" 
                       ForeColor="#003399" Height="200px" Width="220px" 
                       onselectionchanged="Calendar1_SelectionChanged">
                       <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                       <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                       <OtherMonthDayStyle ForeColor="#999999" />
                       <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                       <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                       <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" 
                           Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                       <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                       <WeekendDayStyle BackColor="#CCCCFF" />
                   </asp:Calendar>
                   &nbsp;TO 
                   <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                   <asp:ImageButton ID="ImageButton2" runat="server" Height="20px" 
                       ImageUrl="~/IMG/a1.png" onclick="ImageButton2_Click" Width="28px" />
                   <asp:Calendar ID="Calendar2" runat="server" BackColor="White" 
                       BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" 
                       DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" 
                       ForeColor="#003399" Height="200px" Width="220px" 
                       onselectionchanged="Calendar2_SelectionChanged">
                       <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                       <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                       <OtherMonthDayStyle ForeColor="#999999" />
                       <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                       <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                       <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" 
                           Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                       <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                       <WeekendDayStyle BackColor="#CCCCFF" />
                   </asp:Calendar>
                   </td><td></td></tr>
               </table>
               <div style ="height:200px; width:1000px; overflow:auto;">

                   <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table"
                       DataSourceID="SqlDataSource2">
                       <Columns>
                           <asp:BoundField DataField="studid" HeaderText="studid" 
                               SortExpression="studid" />
                           <asp:BoundField DataField="studname" HeaderText="studname" 
                               SortExpression="studname" />
                           <asp:BoundField DataField="rollno" HeaderText="rollno" 
                               SortExpression="rollno" />
                           <asp:BoundField DataField="contactno" HeaderText="contactno" 
                               SortExpression="contactno" />
                           <asp:BoundField DataField="present" HeaderText="present" ReadOnly="True" 
                               SortExpression="present" />
                       </Columns>
                   </asp:GridView>
                   <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                       ConnectionString="<%$ ConnectionStrings:AttendanceManagement %>" 
                       SelectCommand="SELECT derivedtbl_1.studid, tbl_student.studname, tbl_student.rollno, tbl_student.contactno, derivedtbl_1.present FROM (SELECT studid, COUNT(studid) AS present FROM tbl_attendance WHERE (subid = @sub3) AND (attendance = 1) AND (CAST(date_time AS date) BETWEEN CAST(@sdate AS date) AND CAST(@edate AS date)) GROUP BY studid HAVING (COUNT(studid) &lt; (SELECT (SELECT COUNT(date_time) AS nooflec FROM (SELECT date_time FROM tbl_attendance AS tbl_attendance_2 WHERE (subid = @sub1) AND (CAST(date_time AS date) BETWEEN CAST(@s2date AS date) AND CAST(@e2date AS date)) GROUP BY date_time) AS test) - (SELECT COUNT(date_time) * 0.25 AS nooflec FROM (SELECT date_time FROM tbl_attendance AS tbl_attendance_1 WHERE (subid = @sub2) AND (CAST(date_time AS date) BETWEEN CAST(@s1date AS date) AND CAST(@e1date AS date)) GROUP BY date_time) AS test_1) AS Expr1))) AS derivedtbl_1 INNER JOIN tbl_student ON derivedtbl_1.studid = tbl_student.studid">
                       <SelectParameters>
                           <asp:ControlParameter ControlID="DropDownList2" Name="sub3" 
                               PropertyName="SelectedValue" />
                           <asp:ControlParameter ControlID="TextBox2" Name="sdate" PropertyName="Text" />
                           <asp:ControlParameter ControlID="TextBox3" Name="edate" PropertyName="Text" />
                           <asp:ControlParameter ControlID="DropDownList2" Name="sub1" 
                               PropertyName="SelectedValue" />
                           <asp:ControlParameter ControlID="TextBox2" Name="s2date" PropertyName="Text" />
                           <asp:ControlParameter ControlID="TextBox3" Name="e2date" PropertyName="Text" />
                           <asp:ControlParameter ControlID="DropDownList2" Name="sub2" 
                               PropertyName="SelectedValue" />
                           <asp:ControlParameter ControlID="TextBox2" Name="s1date" PropertyName="Text" />
                           <asp:ControlParameter ControlID="TextBox3" Name="e1date" PropertyName="Text" />
                       </SelectParameters>
                   </asp:SqlDataSource>

               </div>
               <table class="table">
               <tr><td><asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CssClass="table"
                       DataSourceID="SqlDataSource3">
                       <Columns>
                           <asp:BoundField DataField="totallectures" HeaderText="totallectures" 
                               ReadOnly="True" SortExpression="totallectures" />
                       </Columns>
                   </asp:GridView>
                   <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                       ConnectionString="<%$ ConnectionStrings:AttendanceManagement %>" 
                       SelectCommand="SELECT COUNT(Expr1) AS totallectures FROM (SELECT COUNT(date_time) AS Expr1 FROM tbl_attendance WHERE (subid = @sub1) AND (CAST(date_time AS date) BETWEEN CAST(@sdate AS date) AND CAST(@edate AS date)) GROUP BY date_time) AS derivedtbl_1">
                       <SelectParameters>
                           <asp:ControlParameter ControlID="DropDownList2" Name="sub1" 
                               PropertyName="SelectedValue" />
                           <asp:ControlParameter ControlID="TextBox2" Name="sdate" PropertyName="Text" />
                           <asp:ControlParameter ControlID="TextBox3" Name="edate" PropertyName="Text" />
                       </SelectParameters>
                   </asp:SqlDataSource></td>
                   
               </tr>
               </table>
</div>
<script src="js/bootstrap.min.js"></script>

</asp:Content>

