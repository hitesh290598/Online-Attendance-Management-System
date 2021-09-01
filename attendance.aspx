<%@ Page Title="" Language="C#" MasterPageFile="~/MasterProf.master" AutoEventWireup="true" CodeFile="attendance.aspx.cs" Inherits="attendance" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <!-------   Content Area start  --------->
<div class="col-md-10 maincontent" >

    <!-----------  Content Menu Tab Start   ------------>
    <div class="panel panel-default contentinside">
        <div class="panel-heading">Manage Attendance</div>
         <div id="doctorlist" class="switchgroup">
         <table class="table">
        <tr>
            <td>
                SELECT COURSE</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control" AutoPostBack="True" 
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
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                SELECT SUBJECT</td>
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
                &nbsp;</td>
        </tr>
        </table>
        <div style ="height:300px; width:1000px; overflow:auto;">
        <table class="table">
        <tr>
            <td>
                STUDENTS LIST</td>
            <td>
                <asp:CheckBoxList ID="CheckBoxList1" runat="server" CssClass="checkbox-inline"
                    DataSourceID="SqlDataSource3" DataTextField="ROLLNAME" DataValueField="studid">
                </asp:CheckBoxList>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:AttendanceManagement %>" 
                    SelectCommand="SELECT studid, studname + ',' + CONVERT (varchar(10), rollno) AS ROLLNAME FROM tbl_student WHERE (courseid = @par1)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="par1" 
                            PropertyName="SelectedValue" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        </table>
        </div>
        <table class="table">
        <tr>
            
            <td colspan="3" align="center">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" CssClass="btn btn-primary" Text="SUBMIT" />
            </td>
            
        </tr>
        </table>
         </div>
        <script src="js/bootstrap.min.js"></script>

</asp:Content>

