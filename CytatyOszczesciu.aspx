<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CytatyOszczesciu.aspx.cs" Inherits="WebApplication1.CytatyOszczesciu" %>

<!DOCTYPE html>
<html>
<head>
    <title>Cytaty o szczęściu</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="style.css" rel="stylesheet" />

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
.grid
{
    box-shadow: 5px 5px 5px #808080;
}
</style>

</head>
<body style="overflow: auto; top: 5px; left: -10px;">

    <form id="form1" runat="server">

<div class="header" style="font-family: Amsterdam;text-shadow: 2px 2px 5px #a94242;">
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
  <h2 style="height: 77px">Cytaty o szczęściu</h2>
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
<div style="text-shadow: 5px 5px 5px #808080;">
        <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False"  Font-Size="Large" BorderStyle="Solid" BorderWidth="3px" HorizontalAlign="Center" Width="100%" CssClass="grid">
            <Columns>
                <asp:BoundField DataField="cytat" HeaderText="Cytat" SortExpression="cytat" />
                <asp:BoundField DataField="kto" HeaderText="Autor" SortExpression="kto" />
            </Columns>
            <HeaderStyle BackColor="#FF5050" BorderColor="#333333" BorderStyle="Solid" BorderWidth="3px" Font-Names="Amsterdam" Width="100%" Wrap="True" />
            <RowStyle BackColor="#F0F0F0" BorderColor="#333333" BorderStyle="None" Font-Names="sans-serif" Font-Size="Large" />
        </asp:GridView>
                    </div>
    </form>

</body>
</html>
