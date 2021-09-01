<%@ Page Title="" Language="C#" MasterPageFile="~/MasterProf.master" AutoEventWireup="true" CodeFile="defaulter.aspx.cs" Inherits="defaulter" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!-------   Content Area start  --------->
<div class="col-md-10 maincontent" >

    <!-----------  Content Menu Tab Start   ------------>
    <div class="panel panel-default contentinside">
        <div class="panel-heading">Manage Defaulter</div>

         <!----------------   Display Defaulter List   --------------->
          <div  class="switchgroup">
          <table class="table" style="width:100%;">
        <tr>
            <td>
                CLASS</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control"
                    DataSourceID="SqlDataSource1" DataTextField="coursename" 
                    DataValueField="courseid">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:AttendanceManagement %>" 
                    
                    SelectCommand="SELECT DISTINCT tbl_course.courseid, tbl_course.coursename FROM tbl_subjectallocation INNER JOIN tbl_subject ON tbl_subjectallocation.subid = tbl_subject.subid INNER JOIN tbl_course ON tbl_subject.courseid = tbl_course.courseid WHERE (tbl_subjectallocation.pid = @par1)">
                    <SelectParameters>
                        <asp:SessionParameter Name="par1" SessionField="professor" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td>
                </td>
        </tr>
        <tr>
            <td>
                SUBJECT</td>
            <td>
                <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control"
                    DataSourceID="SqlDataSource2" DataTextField="subname" DataValueField="subid">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:AttendanceManagement %>" 
                    
                    
                    SelectCommand="SELECT tbl_subject.subid, tbl_subject.subname FROM tbl_subjectallocation INNER JOIN tbl_subject ON tbl_subjectallocation.subid = tbl_subject.subid WHERE (tbl_subjectallocation.pid = @par1) AND (tbl_subject.courseid = @par2)">
                    <SelectParameters>
                        <asp:SessionParameter Name="par1" SessionField="professor" />
                        <asp:ControlParameter ControlID="DropDownList1" Name="par2" 
                            PropertyName="SelectedValue" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td>
                </td>
        </tr>
        <tr><td>DATE </td>
            <td>FROM 
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:ImageButton ID="ImageButton1" runat="server" 
                    onclick="ImageButton1_Click" Height="20px" ImageUrl="~/IMG/a1.png" 
                    Width="25px" />
                <asp:Calendar ID="Calendar1" runat="server" 
                    onselectionchanged="Calendar1_SelectionChanged" BackColor="White" 
                    BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" 
                    DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" 
                    ForeColor="#003399" Height="200px" Width="220px">
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
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <asp:ImageButton ID="ImageButton2" runat="server" 
                    onclick="ImageButton2_Click" Height="20px" ImageUrl="~/IMG/a1.png" 
                    Width="25px" />
                <asp:Calendar ID="Calendar2" runat="server" 
                    onselectionchanged="Calendar2_SelectionChanged" BackColor="White" 
                    BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" 
                    DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" 
                    ForeColor="#003399" Height="200px" Width="220px">
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
                </td>
            <td></td>
            </tr>
            </table>
       
            <div style ="height:250px; width:1000px; overflow:auto;">
                <%--<asp:Button ID="Button1" runat="server" Text="SUBMIT" onclick="Button1_Click" CssClass="btn btn-primary" Width="100%" />--%>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" cssClass="table"
                    DataSourceID="SqlDataSource3">
                    <Columns>
                        <asp:BoundField DataField="studid" HeaderText="studid" 
                            SortExpression="studid" />
                        <asp:BoundField DataField="studname" HeaderText="studname" 
                            SortExpression="studname" />
                        <asp:BoundField DataField="rollno" HeaderText="rollno" 
                            SortExpression="rollno" />
                        <asp:BoundField DataField="contactno" HeaderText="contactno" 
                            SortExpression="contactno" />
                        <asp:BoundField DataField="present" HeaderText="present" 
                            SortExpression="present" ReadOnly="True" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:AttendanceManagement %>" 
                    
                    
                    SelectCommand="SELECT derivedtbl_1.studid, tbl_student.studname, tbl_student.rollno, tbl_student.contactno, derivedtbl_1.present FROM (SELECT studid, COUNT(studid) AS present FROM tbl_attendance WHERE (subid = @sub3) AND (attendance = 1) AND (CAST(date_time AS date) BETWEEN CAST(@sdate AS date) AND CAST(@edate AS date)) GROUP BY studid HAVING (COUNT(studid) &lt; (SELECT (SELECT COUNT(date_time) AS nooflec FROM (SELECT date_time FROM tbl_attendance AS tbl_attendance_2 WHERE (subid = @sub1) AND (CAST(date_time AS date) BETWEEN CAST(@s2date AS date) AND CAST(@e2date AS date)) GROUP BY date_time) AS test) - (SELECT COUNT(date_time) * 0.25 AS nooflec FROM (SELECT date_time FROM tbl_attendance AS tbl_attendance_1 WHERE (subid = @sub2) AND (CAST(date_time AS date) BETWEEN CAST(@s1date AS date) AND CAST(@e1date AS date)) GROUP BY date_time) AS test_1) AS Expr1))) AS derivedtbl_1 INNER JOIN tbl_student ON derivedtbl_1.studid = tbl_student.studid">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList2" Name="sub3" 
                            PropertyName="SelectedValue" />
                        <asp:ControlParameter ControlID="TextBox1" Name="sdate" PropertyName="Text" />
                        <asp:ControlParameter ControlID="TextBox2" Name="edate" PropertyName="Text" />
                        <asp:ControlParameter ControlID="DropDownList2" Name="sub1" 
                            PropertyName="SelectedValue" />
                        <asp:ControlParameter ControlID="TextBox1" Name="s2date" PropertyName="Text" />
                        <asp:ControlParameter ControlID="TextBox2" Name="e2date" PropertyName="Text" />
                        <asp:ControlParameter ControlID="DropDownList2" Name="sub2" 
                            PropertyName="SelectedValue" />
                        <asp:ControlParameter ControlID="TextBox1" Name="s1date" PropertyName="Text" />
                        <asp:ControlParameter ControlID="TextBox2" Name="e1date" PropertyName="Text" />
                    </SelectParameters>
                </asp:SqlDataSource>
                </div>
                <%--<br />--%>
                <table class="table">
                 <tr>
                 <td colspan="3">
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" cssClass="table"
                    DataSourceID="SqlDataSource4">
                    <Columns>
                        <asp:BoundField DataField="totallectures" HeaderText="totallectures" 
                            ReadOnly="True" SortExpression="totallectures" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:AttendanceManagement %>" 
                    SelectCommand="SELECT COUNT(Expr1) AS totallectures FROM (SELECT COUNT(date_time) AS Expr1 FROM tbl_attendance WHERE (subid = @sub1) AND (CAST(date_time AS date) BETWEEN CAST(@sdate AS date) AND CAST(@edate AS date)) GROUP BY date_time) AS derivedtbl_1">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList2" Name="sub1" 
                            PropertyName="SelectedValue" />
                        <asp:ControlParameter ControlID="TextBox1" Name="sdate" PropertyName="Text" />
                        <asp:ControlParameter ControlID="TextBox2" Name="edate" PropertyName="Text" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        
    </table>
  
    <script src="js/bootstrap.min.js"></script>
</asp:Content>

