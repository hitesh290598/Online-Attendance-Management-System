<%@ Page Language="C#" AutoEventWireup="true" CodeFile="professorLogin.aspx.cs" Inherits="professorLogin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 247px;
        }
        .style2
        {
            width: 229px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
   
        <table align="center" style="width:100%" >
            <tr>
                <td class="style1">
                    PROFESSOR ID</td>
                <td class="style2">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBox1" ErrorMessage="***" ForeColor="#CC0000" 
                        ValidationGroup="M"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    PASSWORD</td>
                <td class="style2">
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="TextBox2" ErrorMessage="***" ForeColor="#CC0000" 
                        ValidationGroup="M"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Button ID="Button1" runat="server" Text="LOGIN" ValidationGroup="M" 
                        onclick="Button1_Click" style="height: 26px" />
                </td>
                <td class="style2">
                    </td>
                <td>
                    </td>
            </tr>
        </table>
   
    </div>
    </form>
</body>
</html>
