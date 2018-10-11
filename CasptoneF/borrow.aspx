﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="borrow.aspx.cs" Inherits="CasptoneF.borrow" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    
    <title>Welcome to Lendy!</title>
    
    <link rel="stylesheet" href="../css/bootstrap.css"/>
    <link rel="stylesheet" href="../css/webCSS.css"/>

    <style>
        .btn 
        {
            color: white !important;
            border-color: white !important;
        }
        .mainButton
        {
            cursor: pointer;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <!-- NAVBAR -->
<nav class="navbar fixed-top navbar-expand-lg navbar-dark bgark">
    <a class="navbar-brand" href="index.html">Lendy</a>
    
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse text-center" id="navbarNavAltMarkup">
        <div class="navbar-nav mr-auto navbar-left font-sz-5">
        </div>
        <div class="navbar-nav ml-auto navbar-right font-sz-5">
            <a class="nav-item nav-link active" href="index.aspx"> Home <span class="sr-only">(current)</span></a>
            <a class="nav-item nav-link ml-2" href="lendForm.aspx">Lend</a>
            <a class="nav-item nav-link ml-2" href="#">Contact</a>
            <a class="nav-item nav-link ml-2" href="login.aspx">Login</a>
        </div>
    </div>
</nav>
<!-- BANNER -->    
<!-- MAIN BODY INFO -->
<div class="container text-center pt-5">
    <div class="row pt-5">
        <div class='col-lg-4 pt-4 ml-auto'>
        <div class="card">
            <div class="card border-0mx-auto' style='width: 18rem;">
                <asp:Image ID="mainImage" runat="server" AlternateText="Product Image" CssClass="card-img-top" />
            </div>
            <ul class="list-group list-group-flush">
                <li class="list-group-item">
                    <asp:Label ID="description" runat="server" Text="Label"></asp:Label></li>
                <li class="list-group-item">
                    <asp:Label ID="info" runat="server" Text="Label"></asp:Label></li>
                <li class="list-group-item">
                    <asp:Button ID="cancelButton" runat="server" Text="Cancel" OnClick="cancelButton_Click" />
                    <asp:Button ID="borrowButton" runat="server" Text="Borrow" OnClick="borrowButton_Click" />
                </li>
            </ul>
         </div>
         </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:testDataConnectionString %>" SelectCommand="SELECT * FROM [new_Table]"></asp:SqlDataSource>
    </div>
</div> 
    
<!-- FOOTER -->
<footer class="footer bg-dark">
    <div class="container  w-100 h-100">
        <div class="row">
            <div class="col pt-4">
                <p class="text-white text-right"><a href="privacy.html">Notice of Privacy Practices</a></p>
            </div>
        </div>
    </div>
</footer>
<script src="https://code.jquery.com/jquery-3.0.0.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="../js/bootstrap.js"></script>    
<!-- <script src="../js/webJava.js"></script> -->
        </div>
    </form>
</body>
</html>
