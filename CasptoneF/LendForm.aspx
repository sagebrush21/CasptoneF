<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="lendForm.aspx.cs" Inherits="CasptoneF.LendForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    
    <title>Welcome to Lendy!</title>
    
    <link rel="stylesheet" href="./css/bootstrap.css"/>
    <link rel="stylesheet" href="./css/webCSS.css"/>
    <style type="text/css">
        .auto-style1 {
            margin-top: 0px;
        }
        .auto-style2 {
            height: 33px;
        }
        #submitButton{
            width:  100px;
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
        <div class="navbar-nav ml-auto navbar-right font-sz-5">
            <a class="nav-item nav-link active" href="index.aspx"> Home <span class="sr-only">(current)</span></a>
            <a class="nav-item nav-link ml-2" href="lend.aspx">Lend</a>
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
            
            <table style="width:100%;">
                <tr>
                    <td>
                        <b>Instruction</b>: Enter your name, email, city, and description according to what 'borrowers' will see.
                    </td>         
                </tr>
                <tr>
                    <td>
                    Please enter a valid city as this is where the 'borrowers' will expect to pick up your item. 
                    </td>
                </tr>
                <tr>
                    <td>
                        .....
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        Name: <asp:TextBox ID="nameTextBox" runat="server" CssClass="auto-style1"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        Email: <asp:TextBox ID="emailTextBox" runat="server" CssClass="auto-style1"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        City: <asp:TextBox ID="cityTextBox" runat="server" CssClass="auto-style1"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        Description: <asp:TextBox ID="descriptionTextBox" runat="server" CssClass="auto-style1"></asp:TextBox>
                    </td>
                    <td class="auto-style2"></td>
                    <td class="auto-style2"></td>
                </tr>
                <tr>
                    <td>
                        <asp:FileUpload ID="imageFileUpload" runat="server" />
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="submitButton" runat="server" Text="Submit" OnClick="submitButton_Click" />
                    </td>
                    <td>
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            
        </div>
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
<script src="./js/bootstrap.js"></script>    
<!-- <script src="../js/webJava.js"></script> -->
        </div>
    </form>
</body>
</html>
