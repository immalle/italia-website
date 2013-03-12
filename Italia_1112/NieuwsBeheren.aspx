<%@ Page Title="Nieuws beheren" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="false"
    CodeFile="NieuwsBeheren.aspx.vb" Inherits="_Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        Nieuws beheren </h2>
  <br />
      <br />

  <br />
 <asp:GridView ID="nieuwsgrid" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="ID" DataSourceID="SqlNieuws" 
        Width="750px" CssClass="nieuwsgrid">
  
   <Columns>
  

<asp:BoundField DataField="Naam" HeaderText="Naam" SortExpression="Naam" />
<asp:BoundField DataField="Nieuws" HeaderText="Nieuws" SortExpression="Nieuws" />


       <asp:CommandField ShowDeleteButton="True" />

   </Columns>
</asp:GridView>
 
<asp:SqlDataSource ID="SqlNieuws" Runat="server"
SelectCommand="SELECT [ID],[Naam], [Nieuws], [Datum] FROM [tblNieuws]"
Deletecommand="DELETE FROM tblNieuws WHERE ID = @ID"
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

   <div>
    <asp:LinkButton ID="btnLogin" runat="server">Log in</asp:LinkButton>
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="btnBeheer" runat="server">Beheer</asp:LinkButton> 
    </div>
</asp:Content>