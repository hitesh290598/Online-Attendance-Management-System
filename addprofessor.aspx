<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="addprofessor.aspx.cs" Inherits="addprofessor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<!-------   Content Area start  --------->
<div class="col-md-10 maincontent" >

    <!-----------  Content Menu Tab Start   ------------>
    <div class="panel panel-default contentinside">
        <div class="panel-heading">Manage Professor</div>
           
               <div id="doctorlist" class="switchgroup">
    <table class="table">
    <tr>
        <td class="style1">
            PROFESSOR ID</td>
        <td class="style2">
            <asp:Label ID="Label1" runat="server" CssClass="form-control" ></asp:Label>
            
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style1">
            PROFESSOR FULL NAME</td>
        <td class="style2">
            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="Enter Professor Full Name"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="TextBox1" ErrorMessage="***" ForeColor="#CC0000" 
                ValidationGroup="M"></asp:RequiredFieldValidator>
            <asp:Label ID="Label2" runat="server" Text="ALREADY EXIST" ForeColor="#CC0000"></asp:Label>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                ControlToValidate="TextBox1" ErrorMessage="(only char allowed)" 
                ForeColor="#CC0000" ValidationExpression="^[a-zA-Z\s]+$" ValidationGroup="M"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="style1">
            EMAIL ID</td>
        <td class="style2">
            <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" placeholder="Enter Email ID"></asp:TextBox>
            </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                ControlToValidate="TextBox4" ErrorMessage="***" ForeColor="#CC0000" 
                ValidationGroup="M"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                ControlToValidate="TextBox4" ErrorMessage="(Invalid Email ID)" 
                ForeColor="#CC0000" 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                ValidationGroup="M"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="style1">
            USER ID</td>
        <td class="style2">
            <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" placeholder="Enter User ID"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="TextBox2" ErrorMessage="***" ForeColor="#CC0000" 
                ValidationGroup="M"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style1">
            PASSWORD</td>
        <td class="style2">
            <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" 
                placeholder="Enter Password" TextMode="Password"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="TextBox3" ErrorMessage="***" ForeColor="#CC0000" 
                ValidationGroup="M"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style1">
            &nbsp;</td>
        <td class="style2">
            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" CssClass="btn btn-primary"
                Width="25%" Text="ADD" ValidationGroup="M" />
        </td>
        <td>
            &nbsp;</td>
    </tr>
</table>
</div>
<script src="js/bootstrap.min.js"></script>
</asp:Content>

