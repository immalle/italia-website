<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/ItaliaMasterPage.Master" CodeBehind="NieuwsBekijken.aspx.vb" Inherits="Italia_1213.NieuwsBekijken1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2> Dagverslagen</h2>

    <div>
    <asp:GridView ID="dgvOverzicht" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Datum" DataSourceID="dtsOverzicht" 
      Font-Size="25pt" ForeColor="black" CellPadding="4" GridLines="None" Height="25px" Width="100%" CssClass="nieuwsgrid1">

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
     </div>

     <asp:FormView ID="frvDetail" runat="server" DataKeyNames="Datum" DataSourceID="dtsDetail" RenderOuterTable="False">
         <ItemTemplate>
         <p>
            <asp:Label ID="DatumLabel" runat="server" forecolor="black" Text='<%# Eval("Datum") %>' />
         </p>
         <p>
            <asp:Label ID="NieuwsLabel" runat="server" ForeColor="Black"  Text='<%# Eval("Nieuws").ToString().replace(Chr(13), "<br />") %>' />
         </p>
         </ItemTemplate>
    </asp:FormView>

    <asp:SqlDataSource ID="dtsOverzicht" runat="server" ConnectionString="<%$ ConnectionStrings:ItaliaConnection %>" 
        SelectCommand="SELECT Datum FROM tblNieuws">
    </asp:SqlDataSource>
        
    <asp:SqlDataSource ID="dtsDetail" runat="server" ConnectionString="<%$ ConnectionStrings:ItaliaConnection %>" 
        SelectCommand="SELECT [Datum], [Nieuws] FROM [tblNieuws] WHERE ([Datum] = @Datum)">
        <SelectParameters>
            <asp:ControlParameter ControlID="dgvOverzicht" Name="Datum" PropertyName="SelectedValue" Type="DateTime" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
