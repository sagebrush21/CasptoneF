﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="CasptoneF.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <title>Welcome to Lendy!</title>
    
    <link rel="stylesheet" href="../css/bootstrap.css">
    <link rel="stylesheet" href="../css/webCSS.css">

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
            <asp:TextBox ID="searchTextBox" runat="server"></asp:TextBox>
            <asp:Button ID="searchButton" runat="server" Text="Search" OnClick="searchButton_Click" />
        </div>
        <div class="navbar-nav ml-auto navbar-right font-sz-5">
            <a class="nav-item nav-link active" href="index.aspx"> Home <span class="sr-only">(current)</span></a>
            <a class="nav-item nav-link ml-2" href="#">Borrow</a>
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
        <div class="col-lg">
            <div class="card border-0 mx-auto" style="width: 18rem;">
                <a href="location.html"><img class="card-img-top" src="../images/chemistry.jpg" alt="Card image cap"></a>
                <div class="card-body">
                    <h5 class="card-title text-center"><a href="location.html"><button>Chemistry: The Central Science (13th Edition)</button></a></h5>    
                </div>
            </div>
        </div>
        <div class="col-lg">
            <div class="card border-0 mx-auto" style="width: 18rem;">
                <a href="location.html"><img class="card-img-top" src="../images/purse.jpg" alt="Card image cap"></a>
                <div class="card-body">
                    <h5 class="card-title text-center"><a href="location.html"><button>Black Purse</button></a></h5>    
                </div>
            </div>
        </div>
        <div class="col-lg">
            <div class="card border-0 mx-auto" style="width: 18rem;">
                <a href="location.html"><img class="card-img-top" src="../images/backpack.jpg" alt="Card image cap"></a>
                <div class="card-body">
                    <h5 class="card-title text-center"><a href="location.html"><button>Backpack</button></a></h5>    
                </div>
            </div>
        </div>
    </div>
    <div class="row pt-5">
        <asp:PlaceHolder ID="testPlaceHolder" runat="server"></asp:PlaceHolder>
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
