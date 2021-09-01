<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="viewSubject.aspx.cs" Inherits="viewSubject" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<!-------   Content Area start  --------->
<div class="col-md-10 maincontent" >

    <!-----------  Content Menu Tab Start   ------------>
    <div class="panel panel-default contentinside">
        <div class="panel-heading">View Subject</div>

<!----------------   Display Course List start   --------------->
           
               <div class="switchgroup">
   <div style ="height:450px; width:1000px; overflow:auto;">
   <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table"
        DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="subid" HeaderText="subid" SortExpression="subid" />
            <asp:BoundField DataField="subname" HeaderText="subname" 
                SortExpression="subname" />
            <asp:BoundField DataField="coursename" HeaderText="coursename" 
                SortExpression="coursename" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:AttendanceManagement %>" 
        SelectCommand="SELECT tbl_subject.subid, tbl_subject.subname, tbl_course.coursename FROM tbl_course INNER JOIN tbl_subject ON tbl_course.courseid = tbl_subject.courseid">
    </asp:SqlDataSource>
    </div>
   <table class="table"> 
    <tr><td align="center">
        <asp:Button ID="Button1" runat="server" Text="ADD SUBJECT" CssClass="btn btn-primary" Width="50%"
            onclick="Button1_Click" /></td>
        <td align="center">
            <asp:Button ID="Button2" runat="server" Text="DELETE SUBJECT"  CssClass="btn btn-primary" Width="50%"
                onclick="Button2_Click" /></td></tr></table>
                </div>
        <script src="js/bootstrap.min.js"></script>
</asp:Content>

