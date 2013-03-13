<%@ Page Title="Inloggen" Language="VB" MasterPageFile="~/ItaliaMasterPage.Master" AutoEventWireup="false"
    CodeFile="inloggen.aspx.vb" Inherits="_Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
<h2>Inloggen </h2>
             
    <strong></strong>Dit is enkel voor beheerders<br />

    <asp:Login ID="lgnAanmelden" runat="server" BackColor="#F7F7DE" 
        BorderColor="#CCCC99" BorderStyle="Solid" BorderWidth="1px" 
        Font-Names="Verdana" Font-Size="10pt" 
        ClientIDMode="Predictable" >
        <TitleTextStyle BackColor="#6B696B" Font-Bold="True" ForeColor="#FFFFFF" />
    </asp:Login>

</asp:Content>