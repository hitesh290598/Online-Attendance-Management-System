<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="viewProfessor.aspx.cs" Inherits="viewProfessor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<!-------   Content Area start  --------->
<div class="col-md-10 maincontent" >

    <!-----------  Content Menu Tab Start   ------------>
    <div class="panel panel-default contentinside">
        <div class="panel-heading">View Professor</div>

<!----------------   Display Course List start   --------------->
           
               <div class="switchgroup">
                <div style ="height:450px; width:1000px; overflow:auto;">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table"
        DataSourceID="SqlDataSource1" DataKeyNames="pid">
        <Columns>
            <asp:BoundField DataField="pid" HeaderText="pid" SortExpression="pid" 
                ReadOnly="True" />
            <asp:BoundField DataField="pname" HeaderText="pname" SortExpression="pname" />
            <asp:BoundField DataField="userid" HeaderText="userid" 
                SortExpression="userid" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:AttendanceManagement %>" 
        SelectCommand="SELECT [pid], [pname], [userid] FROM [tbl_professor]"></asp:SqlDataSource>
        </div>
        <table class="table">
        <tr align="center"><td align="center">
            <asp:Button ID="Button1" runat="server" Text="ADD" CssClass="btn btn-primary" Width="50%"
                onclick="Button1_Click" /></td><td align="center">
                <asp:Button ID="Button2" runat="server" Text="DELETE" 
                    CssClass="btn btn-primary" Width="30%" onclick="Button2_Click" /></td> </tr>
        </table>
        </div>
        <script src="js/bootstrap.min.js"></script>
</asp:Content>

