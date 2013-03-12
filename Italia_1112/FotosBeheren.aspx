<%@ Page Title="Foto's beheren " Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="false"
    CodeFile="FotosBeheren.aspx.vb" Inherits="_Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2> Foto&#39;s beheren</h2>
  <br />
  <br />
     <asp:GridView ID="fotogrid" runat="server" AutoGenerateColumns="False" 
      cssclass= "fotogrid" DataKeyNames="ID" DataSourceID="dtsOverzicht" 
        Width="750px">
  
      <Columns>
 <asp:BoundField DataField="Dag" HeaderText="Dag" SortExpression="Dag" />


          <asp:CommandField ShowDeleteButton="True" />
      </Columns>
    
</asp:GridView>

<asp:SqlDataSource ID="DtsOverzicht" Runat="server"
SelectCommand="SELECT DISTINCT [ID], [DAG] FROM [tblFotos]"
Deletecommand="DELETE FROM tblFotos WHERE ID = @ID"
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
    
  <div>
    <asp:LinkButton ID="btnLogin" runat="server">Log in</asp:LinkButton>
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="btnBeheer" runat="server">Beheer</asp:LinkButton> 
    </div>
 
</asp:Content>