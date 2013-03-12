<%@ Page Title="Gastenboek beheren" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="false"
    CodeFile="GastenboekBeheren.aspx.vb" Inherits="_Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
       Gastenboek beheren&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </h2>
  <br />
      <br />

  <br />
 <asp:GridView ID="gastenboekgrid" runat="server" AutoGenerateColumns="False" 
      cssclass= "gastenboekgrid" DataKeyNames="ID" DataSourceID="SqlNieuws" 
        Width="750px" AllowPaging="True">
  
      <Columns>
 <asp:BoundField DataField="Naam" HeaderText="Naam" SortExpression="Naam" />
<asp:BoundField DataField="Bericht" HeaderText="Bericht" SortExpression="Bericht" />


          <asp:CommandField ShowDeleteButton="True" />
      </Columns>
    
</asp:GridView>

<asp:SqlDataSource ID="SqlNieuws" Runat="server"
SelectCommand="SELECT [ID],[Naam], [Bericht], [Datum] FROM [tblGastenboek]"
Deletecommand="DELETE FROM tblGastenboek WHERE ID = @ID"
ConnectionString="<%$ ConnectionStrings:ConnectionStringNieuws %>" >
<DeleteParameters>
<asp:Parameter name="ID" />
</DeleteParameters>
</asp:SqlDataSource>
 
 <asp:Button
   ID="btnMultipleRowDelete"
   OnClick="btnMultipleRowDelete_Click"
   runat="server"
   Text="Delete Rows" Visible="False" />
   <br />
   <br />
   <br />
    <br />
    <br />
    &nbsp;
    
 
 
</asp:Content>