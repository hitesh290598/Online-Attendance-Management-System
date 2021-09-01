<%@ Page Title="" Language="C#" MasterPageFile="~/MasterProf.master" AutoEventWireup="true" CodeFile="Report.aspx.cs" Inherits="Report" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table class="table">
<tr><td>DEFAULTERS REPORT</td><td>
    <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">Genrate Report</asp:LinkButton></td></tr>
<tr><td>REGULAR STUDENTS </td><td>
    <asp:LinkButton ID="LinkButton2" runat="server">Generate Report</asp:LinkButton></td></tr>
</table>
</asp:Content>

