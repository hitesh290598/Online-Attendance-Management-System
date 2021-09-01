﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="updateStudent.aspx.cs" Inherits="updateStudent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<!-------   Content Area start  --------->
<div class="col-md-10 maincontent" >

    <!-----------  Content Menu Tab Start   ------------>
    <div class="panel panel-default contentinside">
        <div class="panel-heading">Update Student</div>

<!----------------   Display Course List start   --------------->
  <div class="switchgroup">
            <table class="table">
        <tr>
            <td>
                STUDENT ID</td>
            <td class="style2">
                <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" 
                    ontextchanged="TextBox4_TextChanged" AutoPostBack="True"></asp:TextBox>
               <%-- <asp:Label ID="Label1" runat="server" Text="Label" CssClass="form-control"></asp:Label>--%>
            </td>
            <td class="style1">
                <asp:Label ID="Label1" runat="server" Text="Id does not exist" ForeColor="#CC0000"></asp:Label>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                STUDENT FULL NAME</td>
            <td class="style2">
                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
            </td>
            <td class="style1">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="***" ForeColor="Red" 
                    ValidationGroup="M"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                SELECT COURSE</td>
            <td class="style2">
                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control"
                    DataSourceID="SqlDataSource1" DataTextField="coursename" 
                    DataValueField="courseid">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:AttendanceManagement %>" 
                    SelectCommand="SELECT * FROM [tbl_course]"></asp:SqlDataSource>
            </td>
            <td class="style1">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="DropDownList1" ErrorMessage="***" ForeColor="Red" 
                    ValidationGroup="M"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                ROLL NO</td>
            <td class="style2">
                <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
            </td>
            <td class="style1">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="***" ForeColor="Red" 
                    ValidationGroup="M"></asp:RequiredFieldValidator>
            &nbsp;
                <asp:Label ID="Label2" runat="server" Text="Already exist" ForeColor="Red"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                CONTACT NO</td>
            <td class="style2">
                <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox>
            </td>
            <td class="style1">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage="***" ForeColor="Red" 
                    ValidationGroup="M"></asp:RequiredFieldValidator><asp:RegularExpressionValidator
                        ID="RegularExpressionValidator1" runat="server" 
                    ErrorMessage="Invalid Number" ControlToValidate="TextBox3" ForeColor="Red" 
                    ValidationExpression="^(\+91[\-\s]?)?[0]?(91)?[789]\d{9}$" ValidationGroup="M"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style2">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" CssClass="btn btn-primary" Width="50%"
                    Text="UPDATE STUDENT" />
            </td>
            <td class="style1">
                &nbsp;</td>
        </tr>
    </table>
     <script src="js/bootstrap.min.js"></script>

</asp:Content>

