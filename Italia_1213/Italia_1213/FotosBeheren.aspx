<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/ItaliaMasterPage.Master" CodeBehind="FotosBeheren.aspx.vb" Inherits="Italia_1213.FotosBeheren" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    
    <h2> Foto&#39;s beheren</h2>

    <asp:GridView ID="fotogrid" runat="server" AutoGenerateColumns="False" 
      cssclass= "fotogrid" DataKeyNames="ID" DataSourceID="DtsOverzicht" 
        Width="750px">
        <Columns>
            <asp:BoundField DataField="Dag" HeaderText="Dag" SortExpression="Dag" />
            <asp:BoundField DataField="Naam" HeaderText="Naam" />
            <asp:CommandField ShowDeleteButton="True" />
        </Columns>    
    </asp:GridView>

    <asp:SqlDataSource ID="DtsOverzicht" Runat="server"
    SelectCommand="SELECT [ID], NAAM, [DAG] FROM [tblFotos]"
    Deletecommand="DELETE FROM tblFotos WHERE ID = @ID"
    ConnectionString="<%$ ConnectionStrings:ItaliaConnection %>" >
        <DeleteParameters>
            <asp:Parameter name="ID" />
        </DeleteParameters>
    </asp:SqlDataSource>
 
    <asp:Button ID="btnMultipleRowDelete" runat="server" Text="Delete Rows" Visible="False" />
</asp:Content>
