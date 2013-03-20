<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/ItaliaMasterPage.Master" CodeBehind="FotosUploaden.aspx.vb" Inherits="Italia_1213.FotosUploaden" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            $('.jqueryDatepicker').datepicker();
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        Datum:
        <asp:TextBox ID="textCalender" CssClass="jqueryDatepicker" runat="server"></asp:TextBox>
    </div>
    <div>
        Bestand:
        <asp:FileUpload ID="fupUpload" runat="server" />
    </div>
    <asp:Button ID="btnUpload" runat="server" Text="Load Up" />
    <asp:SqlDataSource ID="sqlDatasource" ConnectionString="<%$ ConnectionStrings:ItaliaConnection %>"
        runat="server"></asp:SqlDataSource>
</asp:Content>  

