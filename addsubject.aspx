<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="addsubject.aspx.cs" Inherits="addsubject" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<!-------   Content Area start  --------->
<div class="col-md-10 maincontent" >

    <!-----------  Content Menu Tab Start   ------------>
    <div class="panel panel-default contentinside">
        <div class="panel-heading">Manage Subject</div>
           
               <div id="doctorlist" class="switchgroup">
    <table class="table">
    <tr>
        <td>
            SUBJECT ID</td>
        <td>
            <asp:Label ID="Label1" runat="server" Text="Label" CssClass="form-control"></asp:Label>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            SUBJECT NAME</td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="Enter Subject Name"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="TextBox1" ErrorMessage="***" ForeColor="#CC0000" 
                ValidationGroup="M"></asp:RequiredFieldValidator>
            <asp:Label ID="Label2" runat="server" Text="ALREADY EXIST" CssClass="label"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            COURSE NAME</td>
        <td>
            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control"
                DataSourceID="SqlDataSource1" DataTextField="coursename" 
                DataValueField="courseid">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:AttendanceManagement %>" 
                SelectCommand="SELECT [coursename], [courseid] FROM [tbl_course]">
            </asp:SqlDataSource>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="DropDownList1" ErrorMessage="***" ForeColor="#CC0000" 
                ValidationGroup="M"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="ADD" CssClass="btn btn-primary" Width="25%"
                ValidationGroup="M" />
        </td>
        <td>
            &nbsp;</td>
    </tr>
</table>
</div>
<script src="js/bootstrap.min.js"></script>
</asp:Content>

