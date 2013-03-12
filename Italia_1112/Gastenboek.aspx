<%@ Page Title="Gastenboek" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="false"
    CodeFile="Gastenboek.aspx.vb" Inherits="_Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
       Gastenboek&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </h2>
 <br />
 <br />


  <asp:GridView ID="gastenboekgrid" runat="server" 
  
  AutoGenerateColumns="False"  Width="750px" 
    cssclass="gastenboekgrid" DataSourceID="SqlNieuws" 
        AllowPaging="True">
      <Columns>
          <asp:BoundField DataField="Naam" HeaderText="Naam" 
              SortExpression="Naam" />
          <asp:BoundField DataField="Bericht" HeaderText="Bericht" 
              SortExpression="Bericht" />
          <asp:BoundField DataField="Datum" HeaderText="Datum" 
              SortExpression="Datum" />
      </Columns>
    
</asp:GridView>


    <asp:SqlDataSource ID="SqlNieuws" runat="server" 
    ConnectionString="<%$ ConnectionStrings:ConnectionStringDatabaseItalië %>" 
    
        SelectCommand="SELECT [Naam], [Bericht], [Datum] FROM [tblGastenboek] ORDER BY [Datum] DESC">
    
</asp:SqlDataSource>


    <br />
    <br />
    <asp:Label ID="lblnaamnieuwtje" runat="server" Text="Naam :" 
        style="font-weight: 700; font-size: medium"></asp:Label>
    &nbsp;
    <asp:TextBox ID="txtNaam" runat="server" MaxLength="20"></asp:TextBox>
    <br />
    <br />
    &nbsp;
    <asp:TextBox ID="txtDatum" runat="server" Width="246px" Visible="False"></asp:TextBox>
    <br />
    <asp:TextBox ID="txtBericht" runat="server" Height="126px" TextMode="MultiLine" 
        Width="425px"></asp:TextBox>
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