<%@ Page Language="C#" AutoEventWireup="true" CodeFile="defaulterReport.aspx.cs" Inherits="defaulterReport" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<%@ Register assembly="CrystalDecisions.Web, Version=13.0.3500.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <cc1:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
        </cc1:ToolkitScriptManager>
    SELECT DATE FROM
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <cc1:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="TextBox1" Format="dd-MMM-yyyy">
        </cc1:CalendarExtender>
        To
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <cc1:CalendarExtender ID="CalendarExtender2" runat="server" TargetControlID="TextBox2" Format="dd-MMM-yyyy">
        </cc1:CalendarExtender>
        <asp:Button ID="Button1" runat="server" Text="Generate Report" />
        <br />
    </div>
    </form>
</body>
</html>
