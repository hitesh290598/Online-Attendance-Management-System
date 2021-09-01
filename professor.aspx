<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="professor.aspx.cs" Inherits="professor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="pid" HeaderText="pid" SortExpression="pid" />
            <asp:BoundField DataField="pname" HeaderText="pname" SortExpression="pname" />
            <asp:BoundField DataField="userid" HeaderText="userid" 
                SortExpression="userid" />
            <asp:BoundField DataField="pass" HeaderText="pass" SortExpression="pass" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:AttendanceManagement %>" 
        SelectCommand="SELECT * FROM [tbl_professor]"></asp:SqlDataSource>
        <table>
        <tr><td>
            <asp:Button ID="Button1" runat="server" Text="ADD PROFESSOR" 
                onclick="Button1_Click" /></td>
            <td>
                <asp:Button ID="Button2" runat="server" Text="DELETE PROFESSOR" 
                    onclick="Button2_Click" /></td></tr>
        </table>
</asp:Content>

