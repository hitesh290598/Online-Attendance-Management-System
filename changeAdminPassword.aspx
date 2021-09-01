<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="changeAdminPassword.aspx.cs" Inherits="changeAdminPassword" %>

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
          <tr><td>CURRENT PASSWORD</td><td>
              <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox></td><td>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                      ControlToValidate="TextBox1" ErrorMessage="***" ForeColor="#CC0000" 
                      ValidationGroup="M"></asp:RequiredFieldValidator>
                  <asp:Label ID="Label1" runat="server" ForeColor="#CC0000"></asp:Label>
              </td></tr>
          <tr><td>NEW PASSWORD</td><td>
              <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox></td><td>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                      ControlToValidate="TextBox2" ErrorMessage="***" ForeColor="#CC0000" 
                      ValidationGroup="M"></asp:RequiredFieldValidator>
              </td></tr>
          <tr><td>RE TYPE PASSWORD</td><td>
              <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox></td><td>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                      ControlToValidate="TextBox3" ErrorMessage="***" ForeColor="#CC0000" 
                      ValidationGroup="M"></asp:RequiredFieldValidator>
                  <asp:CompareValidator ID="CompareValidator1" runat="server" 
                      ControlToCompare="TextBox2" ControlToValidate="TextBox3" 
                      ErrorMessage="Password Does Not Match" ForeColor="#CC0000" ValidationGroup="M"></asp:CompareValidator>
              </td></tr>
          <tr><td colspan="3" align="center">
              <asp:Button ID="Button1" runat="server" Text="Change Password" 
                  CssClass="btn btn-primary" onclick="Button1_Click" ValidationGroup="M" /></td></tr>
          </table>
          </div>
          <script src="js/bootstrap.min.js"></script>
</asp:Content>

