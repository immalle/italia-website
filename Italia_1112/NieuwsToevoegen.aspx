<%@ Page Title="Nieuws toevoegen" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="false"
    CodeFile="NieuwsToevoegen.aspx.vb" Inherits="_Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        Nieuws toevoegen&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </h2>
  
   

    <asp:SqlDataSource ID="SqlNieuws" runat="server" 
    ConnectionString="<%$ ConnectionStrings:ConnectionStringNieuws %>" 
    
    SelectCommand="SELECT [Naam], [Nieuws], [Datum] FROM [tblNieuws] ORDER BY [Datum] DESC">
</asp:SqlDataSource>


    <br />
    <br />
    <asp:Label ID="lblnaamnieuwtje" runat="server" Text="Naam: " 
        style="font-family: 'Century Gothic'; font-size: large; font-style: italic"></asp:Label>
    &nbsp;
    <asp:TextBox ID="txtNaam" runat="server"></asp:TextBox>
    <br />
    <br />
                    <asp:Calendar ID="Kalender1" runat="server"></asp:Calendar>
    <br />
    <br />
    &nbsp;
    <asp:TextBox ID="txtDatum" runat="server" Width="246px" Visible="False"></asp:TextBox>
    <br />
    <br />
    <asp:TextBox ID="txtNieuws" runat="server" Height="282px" TextMode="MultiLine" 
        Width="553px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <br />
    <asp:Button ID="btnToevoegen" runat="server" Height="40px" Text="Toevoegen" 
        Width="120px" />
    <asp:Button ID="btnAnnuleren" runat="server" Height="40px" Text="Annuleren" 
        Width="120px" />

 <br />
 <br />
 <br />
 <div>
    <asp:LinkButton ID="btnLogin" runat="server">Log in</asp:LinkButton>
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="btnBeheer" runat="server">Beheer</asp:LinkButton> 
    </div>
</asp:Content>