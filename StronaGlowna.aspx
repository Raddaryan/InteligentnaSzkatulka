<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StronaGlowna.aspx.cs" Inherits="WebApplication1.StronaGlowna" %>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="style.css" rel="stylesheet" />

<style>
* {box-sizing: border-box;}
body {font-family: Verdana, sans-serif;}
.mySlides {display: none;}
img {vertical-align: middle;}

/* Slideshow container */
.slideshow-container {
  max-width: 800px;
  position: relative;
  margin: auto;
        top: 30px;
        left: -3px;
    }

/* Caption text */
.text {
  color: #f2f2f2;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
}

/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

/* The dots/bullets/indicators */
.dot {
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active {
  background-color: #717171;
}

/* Fading animation */
.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 1.5s;
  animation-name: fade;
  animation-duration: 1.5s;
}

@-webkit-keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .text {font-size: 11px}
}
</style>

</head>
<body>

     <form id="form1" runat="server">
<div class="header" style="font-family: Amsterdam;text-shadow: 2px 2px 5px red;">
  <h2 style="height: 77px">Inteligentna Szkatułka</h2>
</div>

<div id="navbar">
    <div id="buttons" style="float: left">
     <asp:Button ID="Button1" OnClick="ButtonStrona"  runat="server" Text="Strona Główna" class="active" href="javascript:void(0)"  CausesValidation="False" Font-Bold="True" Font-Italic="True"  Font-Size="Small" Font-Overline="False"  Height="50px" Width="180px" ValidateRequestMode="Disabled" BorderColor="Black" BorderStyle="Solid" BackColor="#FF5050" />
     <asp:Button ID="Button2" OnClick="ButtonMilosc" runat="server" Text="Cytaty o miłości" href="javascript:void(0)" CausesValidation="False" Font-Bold="True" Font-Italic="True"  Font-Size="Small" Font-Overline="False"  Height="50px" Width="180px" ValidateRequestMode="Disabled" BorderColor="Black" BorderStyle="Solid" />
     <asp:Button ID="Button3" OnClick="ButtonSzczescie" runat="server" Text="Cytaty o szczęściu" href="javascript:void(0)" CausesValidation="False" Font-Bold="True" Font-Italic="True"  Font-Size="Small" Font-Overline="False"  Height="50px" Width="180px" ValidateRequestMode="Disabled" BorderColor="Black" BorderStyle="Solid" />
     <asp:Button ID="Button4" OnClick="ButtonSmutek" runat="server" Text="Cytaty o smutku" href="javascript:void(0)" CausesValidation="False" Font-Bold="True" Font-Italic="True"  Font-Size="Small" Font-Overline="False"  Height="50px" Width="180px" ValidateRequestMode="Disabled" BorderColor="Black" BorderStyle="Solid" />
    <asp:Button ID="Button5" OnClick="ButtonPrzyjazn" runat="server" Text="Cytaty o przyjaźni" href="javascript:void(0)" CausesValidation="False" Font-Bold="True" Font-Italic="True"  Font-Size="Small" Font-Overline="False"  Height="50px" Width="180px" ValidateRequestMode="Disabled" BorderColor="Black" BorderStyle="Solid" /> 
   <asp:Button ID="Button6" OnClick="ButtonSentencje" runat="server" Text="Sentencje" href="javascript:void(0)" CausesValidation="False" Font-Bold="True" Font-Italic="True"  Font-Size="Small" Font-Overline="False"  Height="50px" Width="180px" ValidateRequestMode="Disabled" BorderColor="Black" BorderStyle="Solid" /> 

    </div>
    <div id="buttons1" style="float:right">
        <asp:Button ID="Button7" OnClick="ButtonDodaj" runat="server" Text="Dodaj własne" href="javascript:void(0)" CausesValidation="False" Font-Bold="True" Font-Italic="True"  Font-Size="Small" Font-Overline="False"  Height="50px" Width="180px" ValidateRequestMode="Disabled" BorderColor="Black" BorderStyle="Solid" BackColor="#33CC33" />
     <asp:Button ID="Button8" OnClick="ButtonUstawienia" runat="server" Text="Ustawienia" href="javascript:void(0)" CausesValidation="False" Font-Bold="True" Font-Italic="True"  Font-Size="Small" Font-Overline="False"  Height="50px" Width="180px" ValidateRequestMode="Disabled" BorderColor="Black" BorderStyle="Solid" BackColor="#FF5050" />
     </div>

</div>

<div class="slideshow-container">

<div class="mySlides fade">
  <div class="numbertext"></div>
  <img src="slajdy\szkatulka1.png" style="width:100%">
  
</div>

<div class="mySlides fade">
  <div class="numbertext"></div>
  <img src="slajdy\szkatulka2.png" style="width:100%">
  
</div>

<div class="mySlides fade">
  <div class="numbertext"></div>
  <img src="slajdy\szkatulka3.png" style="width:100%">
  
</div>

</div>
<br>

<div style="text-align:center">
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span> 
</div>
 
<script>
    window.onscroll = function () { myFunction() };

    var navbar = document.getElementById("navbar");
    var sticky = navbar.offsetTop;

    function myFunction() {
        if (window.pageYOffset >= sticky) {
            navbar.classList.add("sticky")
        } else {
            navbar.classList.remove("sticky");
        }
    }
</script>
<script>
    var slideIndex = 0;
    showSlides();

    function showSlides() {
        var i;
        var slides = document.getElementsByClassName("mySlides");
        var dots = document.getElementsByClassName("dot");
        for (i = 0; i < slides.length; i++) {
            slides[i].style.display = "none";
        }
        slideIndex++;
        if (slideIndex > slides.length) { slideIndex = 1 }
        for (i = 0; i < dots.length; i++) {
            dots[i].className = dots[i].className.replace(" active", "");
        }
        slides[slideIndex - 1].style.display = "block";
        dots[slideIndex - 1].className += " active";
        setTimeout(showSlides, 4000); // Change image every 2 seconds
    }
</script>
    <script>
        document.getElementById("navbar").addEventListener("click", myFunction);

        function myFunction() {
            location.replace("CytatyOmilosci.aspx");
        }
</script>
         </form>
</body>
</html>





