<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/ItaliaMasterPage.Master" CodeBehind="FotosUploaden.aspx.vb" Inherits="Italia_1213.FotosUploaden" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Calendar ID="calDatum" runat="server"></asp:Calendar>
    <asp:FileUpload ID="fupUpload" runat="server" />
    <asp:Button ID="btnUpload" runat="server" Text="Load Up" />
    <asp:SqlDataSource ID="sqlDatasource" ConnectionString="<%$ ConnectionStrings:ItaliaConnection %>"
        runat="server"></asp:SqlDataSource>
</asp:Content>

