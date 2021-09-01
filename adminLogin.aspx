<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminLogin.aspx.cs" Inherits="adminLogin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta charset="utf-8"/>
        <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
        <meta name="viewport" content="width=device-width, initial-scale=1"/>
        <title>Online Attendance Management System</title>
        <!-- Bootstrap -->
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/style.css" rel="stylesheet">
		 <script src="js/jquery.js"></script>
</head>
<body>
<div class="container-fluid">
		<!--- Header --------------------------->
		<div class="row navbar-fixed-top">
			<nav class="navbar navbar-default header">
			<div class="container-fluid">
				<div class="navbar-header">
				  <a class="navbar-brand logo" href="#">
					<img alt="Brand" src="images/logoatt.png">
				  </a>
				  <div class="navbar-text title"><p>Attendance Management System</p></div>
				</div>
			</div>
			</nav>
		</div>
		<!--- Header Ends Here --------------------------->
		
		<div class="row ">
			<div class="col-md-12">
				<div class="panel panel-default login">
					<div class="panel-heading logintitle">Login</div>

                    <div class="panel-body">
    <form id="form1" class="form-horizontal center-block" role="form" runat="server">
    <div class="input-group input-group-lg">
								  <span class="input-group-addon" id="sizing-addon1"><span class="glyphicon glyphicon-user" aria-hidden="true"></span></span>
                                    <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server">
                                        <asp:ListItem Selected="True">Select User</asp:ListItem>
                                        <asp:ListItem>Admin</asp:ListItem>
                                        <asp:ListItem>Professor</asp:ListItem>
                                    </asp:DropDownList>
                                    	</div>
                                    	<br />
                                        <div class="input-group input-group-lg">
								  <span class="input-group-addon" id="Span1"><span class="glyphicon glyphicon-user" aria-hidden="true"></span></span>
                                <asp:TextBox ID="TextBox1" runat="server" cssclass="form-control" name="User Id" placeholder="User Id" required aria-describedby="sizing-addon1"></asp:TextBox>
								</div>
								
								<br/>
								<div class="input-group input-group-lg">
								  <span class="input-group-addon" id="Span2"><span class="glyphicon glyphicon-lock" aria-hidden="true"></span></span>
                                  <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" name="password" cssclass="form-control" placeholder="Password" required aria-describedby="sizing-addon1"></asp:TextBox>
								</div>
								<br/>
                                <div class="col-sm-7 col-sm-offset-2">
                                  <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary btn-block btn-lg" Text="LOGIN" onclick="Button1_Click"  />
								</div>
    </form>
    	</div>
						
				</div>
			</div>				
		</div>
		
		<div class="row footer navbar-fixed-bottom">
			<div class="col-md-12">
				<div>Designed By :- # Hitesh & Rishabh #</div>
				<p>Copyrights © Attendance Management System 2018. All rights reserved. </p>
			</div>
		</div>
		</div>
         <script src="js/bootstrap.min.js"></script>
</body>
</html>
