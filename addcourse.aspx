<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="addcourse.aspx.cs" Inherits="addcourse" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<!-------   Content Area start  --------->
<div class="col-md-10 maincontent" >

    <!-----------  Content Menu Tab Start   ------------>
    <div class="panel panel-default contentinside">
        <div class="panel-heading">Manage Course</div>
        <div id="doctorlist" class="switchgroup">
        <table class="table">
    <tr>
        <td>
            COURSE ID</td>
        <td>
            <asp:Label ID="Label1" runat="server" CssClass="form-control"></asp:Label>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            COURSE NAME</td>
        <td>
            <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" placeholder="Enter Course Name"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="TextBox2" ErrorMessage="***" ForeColor="#CC0000" 
                ValidationGroup="M"></asp:RequiredFieldValidator>
            <asp:Label ID="Label2" runat="server" Text="ALREADY EXIST" CssClass="label"></asp:Label>
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
   <script src="js/bootstrap.min.js"></script>
    
</asp:Content>

