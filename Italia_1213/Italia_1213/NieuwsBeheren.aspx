<%@ Page Title="Nieuws beheren" Language="VB" MasterPageFile="~/ItaliaMasterPage.Master" AutoEventWireup="false"
    CodeFile="NieuwsBeheren.aspx.vb" Inherits="_Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent"></asp:Content>

<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>Nieuws beheren </h2>
    <br />

    <asp:GridView ID="nieuwsgrid" runat="server" AutoGenerateColumns="False"
        DataKeyNames="ID" DataSourceID="SqlNieuws"
        Width="750px" CssClass="nieuwsgrid">
        <Columns>
            <asp:BoundField DataField="Naam" HeaderText="Naam" SortExpression="Naam" />
            <asp:BoundField DataField="Nieuws" HeaderText="Nieuws" SortExpression="Nieuws" />
            <asp:CommandField ShowDeleteButton="True" />
            <asp:CommandField ShowEditButton="true" />
        </Columns>
    </asp:GridView>

    <asp:SqlDataSource ID="SqlNieuws" Runat="server"
        SelectCommand="SELECT [ID],[Naam], [Nieuws], [Datum] FROM [tblNieuws]"
        Deletecommand="DELETE FROM tblNieuws WHERE ID = @ID"
        UpdateCommand="Update tblNieuws SET Naam=@Naam, Nieuws=@Nieuws WHERE ID=@ID"
        ConnectionString="<%$ ConnectionStrings:ItaliaConnection %>" >
        <DeleteParameters>
            <asp:Parameter name="ID" />
        </DeleteParameters>
    </asp:SqlDataSource>
    
    <div>
        <asp:Button ID="btnToevoegen"></asp:Button>
    </div>
</asp:Content>