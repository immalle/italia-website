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

        <center><h3>Hotels</h3></center>
        <table id="tblHotels" class="style1">
            <tr>
                <td>
                22 en 23 maart
                </td>
                <td>
                HOTEL RIALTO SUISSE***
                <br />
                Piazza Umberto 16 A
                <br />
                55043 Lido di Camaiore
                <br />
                tel. 0039 0584 618051
                <br />
                <asp:HyperLink id="hlRialto" runat="server" NavigateUrl="http://www.rialtosuisse.it/">http://www.rialtosuisse.it/</asp:HyperLink>                
                </td>
            </tr>
            <tr>
                <td>
                23 tot 25 maart
                </td>
                <td>
                HOTEL DONATELLO***
                <br />
                Piazza Indipendenza 23
                <br />
                50123 Firenze
                <br />
                tel. 0039 055 4627472
                <br />
                <asp:HyperLink id="hlDonatello" runat="server" NavigateUrl="http://www.hoteldonatellofirenze.com/">http://www.hoteldonatellofirenze.com/</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td>
                25 tot 28 maart
                </td>
                <td>
                HOTEL SHANGRI'LA CORSETTI****
                <br />
                Via Algeria 141
                <br />
                00144 E.U.R. Roma (Latium)
                <br />
                tel. 0039 06 5916441
                <br />
                <asp:HyperLink id="hlCorsetti" runat="server" NavigateUrl="http://www.shangrilacorsetti.it/">http://www.shangrilacorsetti.it/</asp:HyperLink>                
                </td>
            </tr>
            <tr>
                <td>
                28 en 29 maart
                </td>
                <td>
                HOTEL ASTORIA***
                <br />
                Via Roncacci 15
                <br />
                53042 chianciano Terme
                <br />
                tel. 0039 0578 61324
                <br />
                <asp:HyperLink id="hlAstoria" runat="server" NavigateUrl="http://www.albergoastoria.net/">http://www.albergoastoria.net/</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td>
                29 en 30 maart
                </td>
                <td>
                HOTEL MADISON***
                <br />
                Via Silvio Trentin 62
                <br />
                30016 Jesolo
                <br/>
                tel. 0039 0421 370806
                <br />
                <asp:HyperLink id="hlMadison" runat="server" NavigateUrl="http://www.hotelmadison.eu/en/">http://www.hotelmadison.eu/en/</asp:HyperLink>                
                </td>
            </tr>
        </table>
        <asp:Button ID="btnlogin" runat="server" Text="login" />
        </asp:Content>