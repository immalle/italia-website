<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="false"
    CodeFile="Startpagina.aspx.vb" Inherits="_Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    </asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        Home
        <a href=http://www.facebook.com/immaculatamalle target=_blank>
        <asp:Image ID="Image00" class="map" runat="server" 
        ImageUrl="~/Images/facebook_logo.png" Height=38px BorderStyle=None ImageAlign=Right/></a>&nbsp
        <a href=http://www.immalle.be target=_blank>
        <asp:Image ID="Image0" class="map" runat="server" 
        ImageUrl="~/Images/temp.jpg" Height=40px BorderStyle=None ImageAlign=Right/></a>
        
        </h2>
    <p>
        De Italiëreis van het <a href=http://www.immalle.be target=_blank>Immaculata Instituut Oostmalle</a> is een absoluut hoogtepunt na 6 lange jaren in het secundair 
        onderwijs. Als je het aan een oud-leerling vraagt zou hij vol lof over deze 
        meerdaagse uitstap spreken.<br />
        <br />
        In Firenze stappen we de Renaissance binnen. Onze leerkrachten doen er 
        Michelangelo, David en de Medici herleven. Shoppen langs de kraampjes zorgt voor 
        een evenwicht. Sommigen kunnen er hun collectie t-shirts aanvullen.<br />
        <br />
        Langs het Middeleeuwse Assisi rijden we naar Rome. Een dag vullen we met het 
        Oude Rome: de thermen, het Colosseum, Forum Romanum …<br />
        Een tweede dag staat het kleine Vaticaanstad op het menu. Van alle kanten 
        bewonderen we er de monumentale St-Pietersbasiliek: van binnen en buiten, langs 
        boven en langs onder.<br />
        <br />
        In de Vaticaanse musea herinneren we ons de Esthetica- powerpoints: de Laocoön, 
        de School van Athene, het scheppend vingertje in de Sixtijnse kapel.<br />
        <br />
        Ook de moderne helden in hun voetbalarena maken hun opwachting. Voetbalshirts en 
        -sjaals waar nog dagen mee gezwaaid wordt zijn onvergetelijke souvenirs voor de 
        talrijke liefhebbers van het calcio. Voor hen zetten we (indien mogelijk) het 
        voetbal als facultatief op het programma.<br />
        <br />
        Venetië is het laatste toetje op de taart: één prachtig decor dat echt blijkt. 
        Voor we het weten zijn acht dagen voorbijgevlogen. Had je in Firenze dan toch 
        maar over de snuit van het varkentje gewreven, in Rome een muntje in de 
        Trevi-fontein gegooid en gewenst nog eens terug te komen …<br />
                  
    </p>
     <div>
    <asp:LinkButton ID="btnLogin" runat="server">Log in</asp:LinkButton>
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="btnBeheer" runat="server">Beheer</asp:LinkButton> 
    </div>
</asp:Content>