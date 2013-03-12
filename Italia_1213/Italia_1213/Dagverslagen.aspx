<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/ItaliaMasterPage.Master" CodeBehind="Dagverslagen.aspx.vb" Inherits="Italia_1213.Dagverslagen" %>
<asp:Content ID="HeaderContent" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2> Dagverslagen</h2>

    <asp:SqlDataSource ID="SqlNieuws" Runat="server"
        SelectCommand="SELECT [ID],[Naam], [Nieuws], [Datum] FROM [tblNieuws]"
        Deletecommand="DELETE FROM tblNieuws WHERE ID = @ID"
        UpdateCommand="Update tblNieuws SET Naam=@Naam, Nieuws=@Nieuws WHERE ID=@ID"
        ConnectionString="<%$ ConnectionStrings:ItaliaConnection %>" >
        <DeleteParameters>
            <asp:Parameter name="ID" />
        </DeleteParameters>
    </asp:SqlDataSource>

    <asp:GridView ID="dgvOverzicht" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Datum" DataSourceID="dtsOverzicht" 
      Font-Size="25pt" ForeColor="black" CellPadding="4" GridLines="None" Height="25px" Width="748px" CssClass="nieuwsgrid1">

        <AlternatingRowStyle BackColor="White" />
        <Columns>
                <asp:CommandField SelectText="Lees verslag van " ShowSelectButton="True" />
                <asp:BoundField DataField="Datum" HeaderText="Datum" ReadOnly="True" SortExpression="Datum" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="black" Font-Bold="false" ForeColor="White"/>
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="black" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
     </asp:GridView>
     <br />

     <asp:FormView ID="frvDetail" runat="server" DataKeyNames="Datum" DataSourceID="dtsDetail" RenderOuterTable="False">
        <EditItemTemplate>
            <asp:Label ID="DatumLabel1" runat="server" Text='<%# Eval("Datum") %>' />
            <br />
            <asp:TextBox ID="NieuwsTextBox" runat="server" ForeColor="black" Text='<%# Bind("Nieuws") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            <asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>

        <InsertItemTemplate>
            <asp:TextBox ID="DatumTextBox" runat="server"  Text='<%# Bind("Datum") %>' />
            <br />
            <asp:TextBox ID="NieuwsTextBox" runat="server" Text='<%# Bind("Nieuws") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            <asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
         </InsertItemTemplate>
                        
         <ItemTemplate>
            <asp:Label ID="DatumLabel" runat="server" forecolor="black" Text='<%# Eval("Datum") %>' />
            <br />
            <br />
            <asp:Label ID="NieuwsLabel" runat="server" ForeColor="Black"  Text='<%# Eval("Nieuws").ToString().replace(Chr(13), "<br />") %>' />
            <br />
         </ItemTemplate>
    </asp:FormView>
        <br />
        <asp:SqlDataSource ID="dtsOverzicht" runat="server" ConnectionString="<%$ ConnectionStrings:ItaliaConnection %>" 
            SelectCommand="SELECT Datum FROM tblNieuws"></asp:SqlDataSource>
        <asp:SqlDataSource ID="dtsDetail" runat="server" ConnectionString="<%$ ConnectionStrings:ItaliaConnection %>" 
            SelectCommand="SELECT [Datum], [Nieuws] FROM [tblNieuws] WHERE ([Datum] = @Datum)">
            <SelectParameters>
                <asp:ControlParameter ControlID="dgvOverzicht" Name="Datum" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
                 <br />
                 <br />
                 <br />

   <asp:Label ID="lblnaamnieuwtje" runat="server" Text="Naam: " style="font-family: 'Century Gothic'; font-size: large; font-style: italic">
    </asp:Label>
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
