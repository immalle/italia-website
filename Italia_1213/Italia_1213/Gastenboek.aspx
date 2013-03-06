<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/ItaliaMasterPage.Master" CodeBehind="Gastenboek.aspx.vb" Inherits="Italia_1213.Gastenboek" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
<style type="text/css">
#berichten
{
    margin-left:5px;
 }
 
 #txtberichten
    {
     Width:200px;
     Height:26px;
     background-color:;
     }
    
</style>
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
 Naam : <asp:TextBox ID="txtNaam" runat="server" MaxLength:20;></asp:TextBox>        
        <asp:Button ID="btnToevoegen" runat="server" Height="40px" Text="Toevoegen" Width="120px" />
        <asp:Button ID="btnAnnuleren" runat="server" Height="40px" Text="Annuleren" Width="120px" />
    </div>
    <div>
        Bericht : <asp:TextBox ID="txtBericht" runat="server" Height="126px" TextMode="MultiLine" Width="425px"></asp:TextBox>            
    </div>
        
      
    <div>
        <asp:LinkButton ID="btnBeheer" runat="server">Beheer</asp:LinkButton> 
    </div>
 
    </asp:Content>
