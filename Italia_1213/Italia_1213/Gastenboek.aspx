<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/ItaliaMasterPage.Master" CodeBehind="Gastenboek.aspx.vb" Inherits="Italia_1213.Gastenboek" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
   <h2>Gastenboek</h2>

  <asp:GridView ID="gastenboekgrid" runat="server" 
        AutoGenerateColumns="False"  Width="750px" 
        cssclass="gastenboekgrid" DataSourceID="SqlNieuws" 
        AllowPaging="True">
      <Columns>
        <asp:BoundField DataField="Naam" HeaderText="Naam" SortExpression="Naam" />
        <asp:BoundField DataField="Bericht" HeaderText="Bericht" SortExpression="Bericht" />
        <asp:BoundField DataField="Datum" HeaderText="Datum" SortExpression="Datum" />
      </Columns>
    </asp:GridView>
    
    <asp:SqlDataSource ID="SqlNieuws" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ItaliaConnection %>" 
        SelectCommand="SELECT [Naam], [Bericht], [Datum] FROM [tblGastenboek]">
    </asp:SqlDataSource>
               
    <div id="berichten">
        <p>Naam :
        <asp:TextBox ID="txtNaam" runat="server" height="26px" Width="200px" MaxLength="20" CssClass="tekstboxNaam"></asp:TextBox>        
        <asp:Button ID="btnToevoegen" runat="server" Height="40px" Text="Toevoegen" Width="120px" />
        <asp:Button ID="btnAnnuleren" runat="server" Height="40px" Text="Annuleren" Width="120px" /></p>
    </div>
        
    <div id="Bericht">
        <p><span style="vertical-align:top">Bericht :</span>
        <asp:TextBox ID="txtBericht" runat="server" Height="126px" Width="453px" CssClass="TekstboxBericht" TextMode="MultiLine"></asp:TextBox></p>            
    </div>        
      
    <asp:Button ID="btnlogin" runat="server" Text="Login" />
    </asp:Content>
