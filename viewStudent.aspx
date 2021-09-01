<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="viewStudent.aspx.cs" Inherits="viewStudent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<!-------   Content Area start  --------->
<div class="col-md-10 maincontent" >

    <!-----------  Content Menu Tab Start   ------------>
    <div class="panel panel-default contentinside">
        <div class="panel-heading">View Student</div>

<!----------------   Display Course List start   --------------->
           
               <div class="switchgroup">
               <table class="table"><tr><td><asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control"
                       DataSourceID="SqlDataSource2" DataTextField="coursename" 
                       DataValueField="courseid">
                   </asp:DropDownList>
                   <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                       ConnectionString="<%$ ConnectionStrings:AttendanceManagement %>" 
                       SelectCommand="SELECT * FROM [tbl_course]"></asp:SqlDataSource></td>
                       <td>
                           <asp:Button ID="Button4" runat="server" Text="Search" 
                               CssClass="btn btn-primary" onclick="Button4_Click" /></td></tr></table>
                   
               <div style ="height:400px; width:1000px; overflow:auto;">
                   <asp:GridView ID="GridView1" runat="server" 
                       AutoGenerateColumns="False" CssClass="table"
        DataSourceID="SqlDataSource1" DataKeyNames="studid">
        <Columns>
            <asp:BoundField DataField="studid" HeaderText="studid" 
                SortExpression="studid" ReadOnly="True" />
            <asp:BoundField DataField="studname" HeaderText="studname" 
                SortExpression="studname" />
            <asp:BoundField DataField="coursename" HeaderText="coursename" 
                SortExpression="coursename" />
            <asp:BoundField DataField="rollno" HeaderText="rollno" 
                SortExpression="rollno" />
            <asp:BoundField DataField="contactno" HeaderText="contactno" 
                SortExpression="contactno" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:AttendanceManagement %>" 
        
                       
                       SelectCommand="SELECT tbl_student.studid, tbl_student.studname, tbl_course.coursename, tbl_student.rollno, tbl_student.contactno FROM tbl_course INNER JOIN tbl_student ON tbl_course.courseid = tbl_student.courseid">
    </asp:SqlDataSource></div>
              
     <table class="table">
    <tr><td align="center">
        <asp:Button ID="Button1" runat="server" Text="REGISTER" CssClass="btn btn-primary" 
            onclick="Button1_Click" /></td>
            <td align="center"> 
                <asp:Button ID="Button3" runat="server" Text="UPDATE" 
                    CssClass="btn btn-primary" onclick="Button3_Click1" /></td>
                    <td align="center"><asp:Button ID="Button2" runat="server" Text="DELETE" onclick="Button2_Click" CssClass="btn btn-primary" />
                </td></tr>
            </table>
            </div>
             <script src="js/bootstrap.min.js"></script>
</asp:Content>

