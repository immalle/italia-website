<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/ItaliaMasterPage.Master" CodeBehind="NieuwsBeheer.aspx.vb" Inherits="Italia_1213.NieuwsBeheer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<asp:TextBox ID="txtTest" runat="server"></asp:TextBox>

<h2>Dagverslagen beheren </h2>
    <br />

    <asp:SqlDataSource ID="SqlDataSource1" Runat="server"
        SelectCommand="SELECT [ID],[Naam], [Nieuws], [Datum] FROM [tblNieuws]"
        Deletecommand="DELETE FROM tblNieuws WHERE ID = @ID"
        UpdateCommand="Update tblNieuws SET Naam=@Naam, Nieuws=@Nieuws WHERE ID=@ID"
        ConnectionString="<%$ ConnectionStrings:ItaliaConnection %>" >
        <DeleteParameters>
            <asp:Parameter name="ID" />
        </DeleteParameters>
    </asp:SqlDataSource>

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


    <asp:Label ID="lblNaam" runat="server" Text="Naam: " style="font-family: 'Century Gothic'; font-size: large; font-style: italic"></asp:Label>
    <asp:TextBox ID="txtNaam" runat="server"></asp:TextBox>

    <br />
    <br />
    <asp:Calendar ID="Kalender1" runat="server"></asp:Calendar>
    <br />
    <br />
    <asp:TextBox ID="txtDatum" runat="server" Width="246px" Visible="False"></asp:TextBox>
    <br />
    <br />
    <asp:TextBox ID="txtNieuws" runat="server" Height="282px" TextMode="MultiLine" Width="553px"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="btnToevoegen" runat="server" Height="40px" Text="Toevoegen" Width="120px" />
    <asp:Button ID="btnAnnuleren" runat="server" Height="40px" Text="Annuleren" Width="120px" />


</asp:Content>
