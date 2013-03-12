<%@ Page Title="Foto's" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="false"
    CodeFile="fotos.aspx.vb" Inherits="_Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2> Foto&#39;s</h2>
  
        <br />
         <asp:GridView ID="fotogrid" runat="server" AutoGenerateColumns="False" 
                      DataKeyNames="Dag" DataSourceID="dtsOverzicht" 
            Width="375px" CssClass="fotogrid">
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                            <asp:BoundField DataField="Dag" HeaderText="Dag" 
                                SortExpression="Dag" />
                        </Columns>
                    </asp:GridView>
        <br />
        <br />

         <asp:DataList ID="dtlFotos" runat="server" DataSourceID="dtsLijst" 
                        Visible="False" Font-Bold="False" Font-Italic="False" 
            Font-Overline="False" Font-Strikeout="False" Font-Underline="False" 
            HorizontalAlign="Justify">
                        <ItemTemplate>
                            <asp:Image ID="Image1" runat="server"  alt=""
                                ImageUrl='<%# Eval("Naam", "~/Images/{0}") %>' />
                            <br />
                            <br />
                        </ItemTemplate>
                    </asp:DataList>

                     <asp:SqlDataSource ID="dtsOverzicht" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionStringDatabaseItalië %>" 
            SelectCommand="SELECT DISTINCT [Dag] FROM [tblFotos]">
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="dtsLijst" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionStringDatabaseItalië %>" 
            SelectCommand="SELECT  [Naam], [Dag] FROM [tblFotos]">
        </asp:SqlDataSource>
   
   <div>
    <asp:LinkButton ID="btnLogin" runat="server">Log in</asp:LinkButton>
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="btnBeheer" runat="server">Beheer</asp:LinkButton> 
    </div>
</asp:Content>