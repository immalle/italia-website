<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/ItaliaMasterPage.Master" CodeBehind="Fotos.aspx.vb" Inherits="Italia_1213.Fotos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
<style type="text/css">
        
        .img 
        {
            
            height: 500px;
            width: 640px;
            margin: 20px;
            border: 10px solid gray;
        }
        .img-selected 
        {
            border: 10px solid black;
        }
        #imageviewport
        {
            text-align: center;
        }
        
       
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div><p>Kies een datum</p></div>
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="true" ></asp:DropDownList>
    <div id="fotoview" runat="server">
    </div>
</asp:Content>
