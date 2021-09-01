<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="addsubjectallocation.aspx.cs" Inherits="addsubjectallocation" %>

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
            <td>
                ALLOCATION ID</td>
            <td>
                <asp:Label ID="Label1" runat="server" CssClass="form-control"></asp:Label>
            </td>
            <td class="style1">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                SELECT PROFESSOR
            </td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control"
                    DataSourceID="SqlDataSource1" DataTextField="pname" DataValueField="pid">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:AttendanceManagement %>" 
                    SelectCommand="SELECT * FROM [tbl_professor]"></asp:SqlDataSource>
            </td>
            <td class="style1">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                SELECT SUBJECT</td>
            <td>
                <asp:ListBox ID="ListBox1" runat="server" DataSourceID="SqlDataSource2" CssClass="form-control"                    DataTextField="subname" DataValueField="subid" Height="141px" 
                    SelectionMode="Multiple" Width="169px"></asp:ListBox>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:AttendanceManagement %>" 
                    SelectCommand="SELECT subid, subname FROM tbl_subject WHERE (subid NOT IN (SELECT subid FROM tbl_subjectallocation))">
                </asp:SqlDataSource>
            </td>
            <td class="style1">
               
            </td>
        </tr>
       <tr><td colspan="2" align="center"> <asp:Button ID="Button1" runat="server" onclick="Button1_Click"  CssClass="btn btn-primary"
                    Text="ALLOCATE SUB" /></td></tr> 
    </table>
</div>
<script src="js/bootstrap.min.js"></script>
</asp:Content>

