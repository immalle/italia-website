<%@ Page Title="Foto's uploaden" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="false"
    CodeFile="fotoUploaden.aspx.vb" Inherits="_Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2> Foto&#39;s uploaden</h2>
                    <br />
                
            
          
                <td class="style3">
                    <asp:Calendar ID="Kalender1" runat="server"></asp:Calendar>
                    <br />
                    <br />
                    <asp:FileUpload ID="fulPadNieuweFoto" runat="server"/>
                    <br />
                    <br />
&nbsp;
                    <br />
                    <asp:Button ID="btnOphalen" runat="server" Text="Ophalen" 
        Height="25px" Width="100px" />
                    <br />


    <asp:SqlDataSource ID="SqlNieuws" runat="server" 
    ConnectionString="<%$ ConnectionStrings:ConnectionStringNieuws %>" 
    SelectCommand="SELECT [ID], [Naam], [Dag] FROM [tblFotos] ORDER BY [Dag]">
</asp:SqlDataSource>


                    <br />
                    <br />
                    <br />
                    <asp:Label ID="lblFout" runat="server" Visible="False"></asp:Label>
                    <br />
                    <br />
                </td>
                <td valign="top">
                    <br />
                </td>
           
        
        <div>
    <asp:LinkButton ID="btnLogin" runat="server">Log in</asp:LinkButton>
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="btnBeheer" runat="server">Beheer</asp:LinkButton> 
    </div>
</asp:Content>