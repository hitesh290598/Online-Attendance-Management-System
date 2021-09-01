<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="viewCourse.aspx.cs" Inherits="viewCourse" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!-------   Content Area start  --------->
<div class="col-md-10 maincontent" >

    <!-----------  Content Menu Tab Start   ------------>
    <div class="panel panel-default contentinside">
        <div class="panel-heading"><b>View Course</b></div>
        

<!----------------   Display Course List start   --------------->
           
               <div id="doctorlist" class="switchgroup">
             <div style ="height:450px; width:1000px; overflow:auto;">
               <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table"
        DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="courseid" HeaderText="courseid" 
                SortExpression="courseid" />
            <asp:BoundField DataField="coursename" HeaderText="coursename" 
                SortExpression="coursename" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:AttendanceManagement %>" 
        SelectCommand="SELECT * FROM [tbl_course]"></asp:SqlDataSource>
              </div>
          <table class="table">
        <tr><td align="center">
            <asp:Button ID="Button1" runat="server" Text="ADD COURSE" CssClass="btn btn-primary"  
                onclick="Button1_Click" /></td>
            <td align="center">
                <asp:Button ID="Button2" runat="server" Text="DELETE COURSE" CssClass="btn btn-primary" 
                    onclick="Button2_Click" /></td></tr>
        </table>
        </div>
           <script src="js/bootstrap.min.js"></script>
   <%-- <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="courseid" HeaderText="courseid" 
                SortExpression="courseid" />
            <asp:BoundField DataField="coursename" HeaderText="coursename" 
                SortExpression="coursename" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:AttendanceManagement %>" 
        SelectCommand="SELECT * FROM [tbl_course]"></asp:SqlDataSource>
        <table>
        <tr><td>
            <asp:Button ID="Button1" runat="server" Text="ADD COURSE" 
                onclick="Button1_Click" /></td>
            <td>
                <asp:Button ID="Button2" runat="server" Text="DELETE COURSE" 
                    onclick="Button2_Click" /></td></tr>
        </table>--%>
</asp:Content>

