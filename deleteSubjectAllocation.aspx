<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="deleteSubjectAllocation.aspx.cs" Inherits="deleteSubjectAllocation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<!-------   Content Area start  --------->
<div class="col-md-10 maincontent" >

    <!-----------  Content Menu Tab Start   ------------>
    <div class="panel panel-default contentinside">
        <div class="panel-heading">Delete Professor</div>

<!----------------   Display Course List start   --------------->
           
               <div class="switchgroup">
        <table class="table">
<tr><td>ALLOCATION ID</td><td>
    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" 
        AutoPostBack="True" ontextchanged="TextBox1_TextChanged"></asp:TextBox></td><td>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="TextBox1" ErrorMessage="***" ForeColor="#CC0000" 
            ValidationGroup="M"></asp:RequiredFieldValidator>
        <asp:Label ID="Label1" runat="server" ForeColor="#CC0000" Text="Invalid ID"></asp:Label>
    </td></tr>

</table>
<div>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table"
        DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="alloid" HeaderText="alloid" 
                SortExpression="alloid" />
            <asp:BoundField DataField="subid" HeaderText="subid" SortExpression="subid" />
            <asp:BoundField DataField="pid" HeaderText="pid" SortExpression="pid" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:AttendanceManagement %>" 
        SelectCommand="SELECT alloid, subid, pid FROM tbl_subjectallocation WHERE (alloid = @id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox1" Name="id" PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
</div>
<table class="table">
<tr><td align="center">
    <asp:Button ID="Button1" runat="server" Text="DELETE" onclick="Button1_Click" CssClass="btn btn-primary" Width="25%"
        ValidationGroup="M" /></td></tr>
</table>
</div>
<script src="js/bootstrap.min.js"></script>
</asp:Content>

