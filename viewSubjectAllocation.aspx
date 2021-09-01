<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="viewSubjectAllocation.aspx.cs" Inherits="viewSubjectAllocation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<!-------   Content Area start  --------->
<div class="col-md-10 maincontent" >

    <!-----------  Content Menu Tab Start   ------------>
    <div class="panel panel-default contentinside">
        <div class="panel-heading">View Subject Allocation</div>

<!----------------   Display Course List start   --------------->
           
               <div class="switchgroup">
     <div style ="height:450px; width:1000px; overflow:auto;">
     <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table"
        DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="alloid" HeaderText="alloid" 
                SortExpression="alloid" />
            <asp:BoundField DataField="pname" HeaderText="pname" SortExpression="pname" />
            <asp:BoundField DataField="subname" HeaderText="subname" 
                SortExpression="subname" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:AttendanceManagement %>" 
        SelectCommand="SELECT tbl_subjectallocation.alloid, tbl_professor.pname, tbl_subject.subname FROM tbl_subjectallocation INNER JOIN tbl_subject ON tbl_subjectallocation.subid = tbl_subject.subid INNER JOIN tbl_professor ON tbl_subjectallocation.pid = tbl_professor.pid">
    </asp:SqlDataSource>
    </div>
   <table class="table">
   <tr><td align="center">
        <asp:Button ID="Button1" runat="server" Text="ALLOCATE" CssClass="btn btn-primary" Width="50%"
            onclick="Button1_Click" /></td>
        <td align="center">
            <asp:Button ID="Button2" runat="server" Text="DE-ALLOCATE" CssClass="btn btn-primary" Width="50%" onclick="Button2_Click" /></td></tr>
            </table>
            </div>
        <script src="js/bootstrap.min.js"></script>
</asp:Content>

