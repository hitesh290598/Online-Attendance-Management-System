<%@ Page Title="" Language="C#" MasterPageFile="~/MasterProf.master" AutoEventWireup="true" CodeFile="changePassword.aspx.cs" Inherits="changePassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!-------   Content Area start  --------->
<div class="col-md-10 maincontent" >

    <!-----------  Content Menu Tab Start   ------------>
    <div class="panel panel-default contentinside">
        <div class="panel-heading">change Password</div>

         <!----------------   Display Defaulter List   --------------->
          <div  class="switchgroup">
        <table class="table">
<tr><td>CURENT PASSWORD</td><td>
    <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" placeholder="Enter Current Password"></asp:TextBox></td><td>
        <asp:Label ID="Label2" runat="server" ForeColor="#CC0000" CssClass="label"></asp:Label>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="TextBox2" ErrorMessage="***" ForeColor="#CC0000" 
            ValidationGroup="M"></asp:RequiredFieldValidator>
    </td></tr>
<tr><td>NEW PASSWORD</td><td>
    <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" placeholder="Enter New Password"></asp:TextBox></td><td>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ControlToValidate="TextBox3" ErrorMessage="***" ForeColor="#CC0000" 
            ValidationGroup="M"></asp:RequiredFieldValidator>
    </td></tr>
<tr><td>RE-TYPE PASSWORD</td><td>
    <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" placeholder="Re-Type Passweord"></asp:TextBox></td><td>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
            ControlToValidate="TextBox4" ErrorMessage="***" ForeColor="#CC0000" 
            ValidationGroup="M"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompareValidator1" runat="server" 
            ControlToCompare="TextBox3" ControlToValidate="TextBox4" 
            ErrorMessage="(Password does not match)" ForeColor="#CC0000" 
            ValidationGroup="M"></asp:CompareValidator>
    </td></tr>
<tr><td colspan="3" align="center">
    <asp:Button ID="Button1" runat="server" Text="CHANGE PASSWORD" onclick="Button1_Click" CssClass="btn btn-primary"
        ValidationGroup="M" />
    </td></tr>
</table>
</div>
<script src="js/bootstrap.min.js"></script>
</asp:Content>

