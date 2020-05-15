<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DodajWlasne.aspx.cs" Inherits="WebApplication1.DodajWlasne" %>
<!DOCTYPE html>
<html>
<head>
    <title>Dodaj własne</title>
        <link href="style.css" rel="stylesheet" />

    <script src="swalert.js" type="text/javascript"></script>
    <script>
        function alertme()
        {
            swal(
                'Wiadomość została wysłana!')

        }
    </script>

 <style>
.button:hover
{
    background: white;
    border: solid 1px grey;
    font-family: Arial, sans-serif;
    font-size: 12px;
    font-weight: bold;
    color: Red;   
    height: 25px;
    cursor: pointer;

}
.button2:hover
{
    background: white;
    border: solid 1px grey;
    font-family: Arial, sans-serif;
    font-size: 12px;
    font-weight: bold;
    color: white;   
    height: 25px;
    cursor: pointer;

}
.textbox
{
    box-shadow: 5px 5px 5px #808080;
}
.grid
{
    box-shadow: 5px 5px 5px #808080;
}



     #form1 {
         margin-right: 409px;
         width: 1513px;
         height: 1008px;
     }



 </style>


</head>
<body style="overflow: auto; top: 1px; left: -10px;">
     <form id="form1" runat="server">
<div class="header" style="font-family: Amsterdam;">
<h2 style="height: 77px"><a href = "StronaGlowna.aspx">Inteligentna Szkatułka</a></h2>
</div>

<div id="navbar">
    <div id="buttons" style="float: left">
     <asp:Button ID="Button1" OnClick="ButtonStrona"  runat="server" Text="Strona Główna" class="active" href="javascript:void(0)"  CausesValidation="False" Font-Bold="True" Font-Italic="True"  Font-Size="Small" Font-Overline="False"  Height="50px" Width="180px" ValidateRequestMode="Disabled" BorderColor="Black" BorderStyle="Solid" BackColor="#FF5050" CssClass ="button2"/>
     <asp:Button ID="Button2" OnClick="ButtonMilosc" runat="server" Text="Cytaty o miłości" href="javascript:void(0)" CausesValidation="False" Font-Bold="True" Font-Italic="True"  Font-Size="Small" Font-Overline="False"  Height="50px" Width="180px" ValidateRequestMode="Disabled" BorderColor="Black" BorderStyle="Solid" CssClass ="button"/>
     <asp:Button ID="Button3" OnClick="ButtonSzczescie" runat="server" Text="Cytaty o szczęściu" href="javascript:void(0)" CausesValidation="False" Font-Bold="True" Font-Italic="True"  Font-Size="Small" Font-Overline="False"  Height="50px" Width="180px" ValidateRequestMode="Disabled" BorderColor="Black" BorderStyle="Solid" CssClass ="button"/>
     <asp:Button ID="Button4" OnClick="ButtonSmutek" runat="server" Text="Cytaty o smutku" href="javascript:void(0)" CausesValidation="False" Font-Bold="True" Font-Italic="True"  Font-Size="Small" Font-Overline="False"  Height="50px" Width="180px" ValidateRequestMode="Disabled" BorderColor="Black" BorderStyle="Solid" CssClass ="button"/>
    <asp:Button ID="Button5" OnClick="ButtonPrzyjazn" runat="server" Text="Cytaty o przyjaźni" href="javascript:void(0)" CausesValidation="False" Font-Bold="True" Font-Italic="True"  Font-Size="Small" Font-Overline="False"  Height="50px" Width="180px" ValidateRequestMode="Disabled" BorderColor="Black" BorderStyle="Solid" CssClass ="button"/> 
   <asp:Button ID="Button6" OnClick="ButtonSentencje" runat="server" Text="Sentencje" href="javascript:void(0)" CausesValidation="False" Font-Bold="True" Font-Italic="True"  Font-Size="Small" Font-Overline="False"  Height="50px" Width="180px" ValidateRequestMode="Disabled" BorderColor="Black" BorderStyle="Solid" CssClass ="button" /> 

    </div>
    <div id="buttons1" style="float:right">
        <asp:Button ID="Button7" OnClick="ButtonDodaj" runat="server" Text="Dodaj własne" href="javascript:void(0)" CausesValidation="False" Font-Bold="True" Font-Italic="True"  Font-Size="Small" Font-Overline="False"  Height="50px" Width="180px" ValidateRequestMode="Disabled" BorderColor="Black" BorderStyle="Solid" BackColor="#33CC33" CssClass ="button"/>
          </div>

</div>

<div class="header" style="text-shadow: 2px 2px 5px #a94242;">
  <h2 style="height: 45px; width: 1513px; margin-bottom: 0px;">Dodaj własną wiadomość</h2>
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
         <div align="center">
          <asp:TextBox ID="wiadomosc" placeholder="  Wpisz wiadomość..." runat="server" width="45%" Height="110px" align="center" BackColor="#F0F0F0"  Font-Size="Large" CssClass="textbox" BorderColor="#333333" BorderStyle="Solid" BorderWidth="2px" Font-Names="sans-serif" MaxLength="85" TextMode="MultiLine" CausesValidation="True"></asp:TextBox> 
         <asp:Image ID="Image1" runat="server" AlternateText="send.jpeg" BorderStyle="None" Height="284px" ImageUrl="~/images/send-large-files.png" Width="469px" />
         <br />
                   </div>
         <div align="center">
         <asp:TextBox ID="imie" placeholder="  Podpisz się..." runat="server" width="14%" Height="25px" BackColor="#F0F0F0" align="center"  Font-Size="Large" CssClass="textbox" BorderColor="#333333" BorderStyle="Solid" BorderWidth="2px" Font-Names="sans-serif" MaxLength="20" CausesValidation="True"></asp:TextBox> 
         <br />
             <br />
       

         <asp:Button ID="ButtoWyslij" runat="server" OnClick="ButtonWyslij" Text="Wyślij!" Font-Bold="True" Font-Italic="True"  Font-Size="Medium"  Height="49px" Width="213px" BorderColor="#333333" BorderStyle="Solid" BackColor="#33CC33" CssClass ="button"/>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="imie" ErrorMessage="Uzupełnij..!" Font-Size="Medium" Font-Bold="true" ForeColor="Red"></asp:RequiredFieldValidator>
         <br />
             
            </div>
         <br />
         <br />
         <br />
                 
                <div style="text-shadow: 5px 5px 5px #808080;">
        <asp:GridView ID="GridView6" runat="server" AutoGenerateColumns="False"  Font-Size="Large" BorderStyle="Solid" BorderWidth="3px" HorizontalAlign="Center" Width="100%" CssClass="grid" Visible="TRUE">
            <Columns>
                <asp:BoundField DataField="cytat" HeaderText="Cytat" SortExpression="cytat" />
                <asp:BoundField DataField="kto" HeaderText="Autor" SortExpression="kto" />
                <asp:BoundField DataField="odczytane" HeaderText="Odczytano" SortExpression="odczytane" />
            </Columns>
            <HeaderStyle BackColor="#FF5050" BorderColor="#333333" BorderStyle="Solid" BorderWidth="3px" Font-Names="Amsterdam" Width="100%" Wrap="True" />
            <RowStyle BackColor="#F0F0F0" BorderColor="#333333" BorderStyle="None" Font-Names="sans-serif" Font-Size="Large" />
        </asp:GridView>
                    </div>
        
         </form>
</body>
</html>
