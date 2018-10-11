﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signUp.aspx.cs" Inherits="CasptoneF.signUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <title>Welcome to Lendy!</title>
    
    <link rel="stylesheet" href="./css/bootstrap.css">
    <link rel="stylesheet" href="./css/webCSS.css">
    
    <style type="text/css">
	
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <!-- NAVBAR -->
<nav class="navbar fixed-top navbar-expand-lg navbar-dark bgark">
    <a class="navbar-brand" href="index.html">Lendy
    
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse text-center" id="navbarNavAltMarkup">
        <div class="navbar-nav mr-auto navbar-left font-sz-5">
        </div>
        <div class="navbar-nav ml-auto navbar-right font-sz-5">
            <%--<a class="nav-item nav-link" href="#"> Home </a>
            <a class="nav-item nav-link ml-2" href="#">Borrow</a>
            <a class="nav-item nav-link ml-2" href="#">Lend</a>
            <a class="nav-item nav-link ml-2" href="#">Contact</a>--%>
            <a class="nav-item nav-link ml-2 active" href="login.aspx">Login <span class="sr-only">(current)</span></a>
        </div>
    </div>
</nav>
<!-- BANNER -->    
<!-- MAIN BODY INFO -->
<div class="container text-center pt-5">
   <div>
		<h1>Create an Account</h1>
        <br />
			User Name: <asp:TextBox ID="usernameTextBox" runat="server"></asp:TextBox><br /><br />
			Password:  <asp:TextBox ID="passwordTextBox" runat="server" TextMode="Password"></asp:TextBox><br /><br />
			Confirm Password:   Password:  <asp:TextBox ID="confirmPasswordTextBox" runat="server" TextMode="Password"></asp:TextBox><br /><br />
			Security Question:  <asp:DropDownList ID="securityDropDownList" runat="server">
            <asp:ListItem Value="color">What is your Favorite color?</asp:ListItem>
            <asp:ListItem Value="car">What is your favorite kind of car?</asp:ListItem>
            <asp:ListItem Value="year">What is your birth year?</asp:ListItem>
            </asp:DropDownList><br /><br />
			Answer:  <asp:TextBox ID="answerTextBox" runat="server"></asp:TextBox><br /><br />
            <asp:Button ID="submitButton" runat="server" Text="Submit" OnClick="submitButton_Click" />
			<br />
	</div>
</div> 
    
<!-- FOOTER -->
<footer class="footer bg-dark">
    <div class="container  w-100 h-100">
        <div class="row">
            <div class="col pt-4">
                <p class="text-white text-right"><a href="privacy.html">Notice of Privacy Practices</p>
            </div>
        </div>
    </div>
</footer>
<script src="https://code.jquery.com/jquery-3.0.0.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="./js/bootstrap.js"></script>    
<!-- <script src="../js/webJava.js"></script> -->
        </div>
    </form>
</body>
