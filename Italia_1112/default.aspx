<%@ Page Title="default" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="false"
    CodeFile="default.aspx.vb" Inherits="_Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>BEHEER</h2>
  
                <p> 

                   
                    <asp:LinkButton ID="btnFotosbeheren" runat="server">Foto's beheren</asp:LinkButton>
                    <br />
                    <asp:LinkButton ID="btnFotosUploaden" runat="server">Foto's uploaden</asp:LinkButton>
                    <br />
                    <br />
                    <asp:LinkButton ID="btnNieuwsbeheren" runat="server">Nieuws beheren</asp:LinkButton>
                    <br />
                    <asp:LinkButton ID="btnNieuwstoevoegen" runat="server">Nieuws toevoegen</asp:LinkButton>
                    <br />
                    <br />
                    <asp:LinkButton ID="btnGastenboekBeheren" runat="server">Gastenboek beheren</asp:LinkButton>
                    <br />
                    <br />
                   
         
    
    <asp:Button ID="btnAfmelden" runat="server" Height="25px" Text="Afmelden" 
        Width="120px" />
                
        
           
           
    
    
  </p>
           
                </asp:Content>