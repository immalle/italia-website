<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/ItaliaMasterPage.Master" CodeBehind="Programma.aspx.vb" Inherits="Italia_1213.Programma" %>
    <asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2> Programma </h2>
        <br />
        <br />
        <asp:Image ID="imgMap" class="map" runat="server" ImageUrl="~/img/map_2011.jpg" Height="800px" Width="750px" ImageAlign="Middle" />

        <center><h3>Dagprogramma</h3></center>
        <table id="tblReisschema" class="style1">
            <tr>
                <td>
                Donderdag 21 maart
                </td>      
                <td>
                <b>Vertrek naar Italië</b><br />
                Verzamelen aan de Notelaar om 23:30u.
                </td> 
            </tr>
            <tr>
                <td>
                Vrijdag 22 Maart
                </td>
                <td>
                <b>De reis</b><br />
                Vertrek om 00:00u.
                Ontbijten in <b>Zwitserland</b>.
                Busreis naar de Middellandse Zee.
                </td>
                </tr>
                <tr>
                <td>
                Zaterdag 23 maart
                </td>
                <td>
                Voormiddag <b>Pisa</b> bezoeken.
                Namiddag wandeling in <b>Firenze</b>.
                </td>
                </tr>
                <tr>
                <td>
                Zondag 24 maart
                </td>
                <td><b>Firenze</b><br />
                Voormiddag musea bezoeken.
                Namiddag vrije winkelnamiddag.
                </td>
                </tr>
                <tr>
                <td>
                Maandag 25 maart
                </td>
                <td>
                <b>Assisi</b><br />
                Avondmaal in <b>Rome</b>
                </td>
                </tr>
                <tr>
                <td>
                Dinsdag 26 maart
                </td>
                <td>
                <b>Vaticaan</b><br />
                Voormiddag Sint-Pietersplein en koepel bekijken.
                Namiddag Vaticaans Museum en stadrally doorheen Rome naar het restaurant.               
                </td>
                </tr>
                <tr>
                <td>
                Woensdag 27 maart
                </td>
                <td>
                <b>Oud Rome</b><br />
                Voormiddag de thermen en het circus bezoeken.
                Namiddag de foro bezoeken.
                Om 16u naar de Colloseo.
                </td>
                </tr>
                <tr>
                <td>
                Donderdag 28 maart
                </td>
                <td>
                Voormiddag in <b>Ostia Antica</b>.
                Namiddag naar het strand.
                Overnachten in <b>Chianciano</b>.
                </td>
                </tr>
                <tr>
                <td>
                Vrijdag 29 maart
                </td>
                <td>Busreis met middagstop in <b>Siena</b>.
                Overnachting in <b>Lido Di Jesolo</b>.            
                </td>
                </tr>
                <tr>
                <td>
                Zaterdag 30 maart
                </td>
                <td>
                <b>Venetië</b><br />
                </td>
                </tr>
        </table>
        <asp:Button ID="btnlogin" runat="server" Text="login" />
        </asp:Content>