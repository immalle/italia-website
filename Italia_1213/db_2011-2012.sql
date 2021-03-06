USE [goecbe]
GO
/****** Object:  Table [dbo].[tblStartpagina]    Script Date: 03/06/2013 09:48:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblStartpagina](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Titel] [nvarchar](50) NULL,
	[Tekst] [ntext] NULL,
	[NaamFoto] [varchar](50) NULL,
 CONSTRAINT [PK_tblStartpagina] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblNieuws]    Script Date: 03/06/2013 09:48:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblNieuws](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Naam] [nvarchar](30) NULL,
	[Nieuws] [nvarchar](max) NULL,
	[Datum] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tblNieuws_1] PRIMARY KEY CLUSTERED 
(
	[Datum] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblNieuws] ON
INSERT [dbo].[tblNieuws] ([ID], [Naam], [Nieuws], [Datum]) VALUES (7, N'Pisa-Firenze', N'Dinsdag 27 maart, de tweede dag van onze Italiereis, startten we in Pisa. We bewonderden er het Campo dei miracoli met de scheve toren, de doopkapel, de dom en het Campo Santo. We reden verder naar Firenze en kregen daar de kans om  te lunchen in de omgeving van de dom. Met de hele groep maakten we na de lunch een wandeling doorheen Firenze om de stad te verkennen. We zagen de Porcellino, Ponte Vecchio, Piazzalle Michelangelo. We klommen nog verder door naar de San Miniato dei monti. We daalden terug naar het stadcentrum via de Santa Crocekerk en de Piazza della Signoria want om 7uur werden we verwacht in een van de gezellige restaurantjes. Na het eten gingen we naar het hotel voor de definitieve kamerverdeling en zat onze tweede dag Italië er op. ', N'dinsdag 27 maart 2012')
INSERT [dbo].[tblNieuws] ([ID], [Naam], [Nieuws], [Datum]) VALUES (14, N'Venetië', N'Vandaag werden we al om kwart na 6 gewekt. We moesten namelijk al om half 9 onze boot naar Venetië nemen. We waren net iets te laat en moesen daardoor op de volgend boot wachten. Hierdoor waren we iets later op onze bestemming.  In Venetië zelf ontdekten we de pracht van de lagune,  waarin Venetië het zich bevindt. Natuurlijk waren er ook nog de  prachtige gondels die zich een weg banen tussen de vele kanalen. Later op de dag mochten we de talrijke straten van venetie zelf ontdekken. De pittoreske huizen en vele winkels zorgden voor een mooie sfeer. Na ons avontuur trokken we terug naar de boot en vertrokken we terug richting Oostmalle waar we werden opgewacht door onze ouders en vrienden. ', N'dinsdag 3 april 2012')
INSERT [dbo].[tblNieuws] ([ID], [Naam], [Nieuws], [Datum]) VALUES (10, N'Assisi', N'Donderdag 29 maart 2012, de dag waarop onze christelijkheid een boost kreeg ...

Op deze bloedhete dag hebben alle leerlingen maar liefst zes kerken bezocht. Die zes historische gebouwen vertelden iets over het leven van Franciscus van Assisi. Deze heilige was zeer geliefd bij zowel de Franciscanen als bij onze leerlingen, zoals u ziet op de foto.

Het Portiuncula-kapelletje was, als een cadeautje in een Kindersurprise, verstopt in de Santa Maria degli Angeli. Op deze plek heeft Franciscus veel gebeden, maar ook zijn laatste adem uitgeblazen. Daarna zetten we het feestje verder in de bus, onderweg naar Rome, de eeuwige stad en middelpunt van het vroegere Romeinse Rijk.
', N'donderdag 29 maart 2012')
INSERT [dbo].[tblNieuws] ([ID], [Naam], [Nieuws], [Datum]) VALUES (13, N'Siena', N'Deze morgen werden we pas gewekt om 8 uur.  Na een stevig ontbijt vertrokken we naar Siena.  Van dit stadje wordt gezegd dat het het mooiste plein heeft van Italië.  Hierover waren onze meningen wat verdeeld maar het was in ieder geval uniek omdat het de vorm had van een schelp.  In de bus hadden we al een film over de Palio gezien.  Dit is een paardenwedstrijd die hier twee keer per jaar plaatsvindt.  Heel de stad leeft naar dit evenement toe en alle wijken nemen er aan deel.  De straatjes waren steil en smal  maar heel gezellig.  De dom was heel groot en mooi, we probeerden ons voor te stellen hoe het er zou uitzien als ze helemaal volgens plan zou zijn afgewerkt. Rond 14 uur zaten we op de bus.  Toen we rond 19.30 u. in het hotel aankwamen, was het eten bijna klaar.  Het was lekker en meer dan genoeg.  Mijnheer Cambré werd nog bedankt voor zijn jarenlange inzet voor de Italiëreis.  Omdat hij een fervent jogger is, hadden we allemaal iets in verband met lopen aan.  We kwamen dan al joggend het hotel-restaurant binnen. Hij vond het een leuke verrassing. Nu kijken we al uit naar het bezoek aan Venetië.  Hiervoor moeten we dan wel op 6 uur opstaan.  Dat belooft!!!!', N'maandag 2 april 2012')
INSERT [dbo].[tblNieuws] ([ID], [Naam], [Nieuws], [Datum]) VALUES (6, N'Viareggio', N'Dag 1: Oostmalle-Viareggio 2012-03-26

We vertrokken om 0.00 u. aan de Notelaar richting Italië. Het was een zeer lange en vermoeiende reis.
Omstreeks 16.30 u. kwamen we in het badstadje Viareggio aan. Na het verdelen van de kamers gingen we gezamenlijk naar het strand en toen was het leed al snel vergeten.
We konden even ontspannen onder de Italiaanse zon op het prachtige strand van Viareggio. Achteraf keerden we terug naar het hotel om ons voor te bereiden op een zeer lekkere maaltijd in het hotel Tahiti.
', N'maandag 26 maart 2012')
INSERT [dbo].[tblNieuws] ([ID], [Naam], [Nieuws], [Datum]) VALUES (11, N'', N'De dag  begon met een lekker ontbijt. Daarna vertrokken we naar Vaticaanstad waar we de Sint-Pietersbasiliek bezochten.  We klommen helemaal tot boven in  de koepel.  Daar hadden we een prachtig zicht over de stad . We kregen even tijd om te eten en daarna werd de groep gesplitst.  Diegenen die zondag naar de voetbal zouden gaan, bezochten Ostia Antica, de oude resten van de havenstad van het oude Rome. De andere groep bewonderde de kunst in het Vaticaans museum.  Vooral de Sixtijnse kapel was de moeite.  Het was erg indrukwekkend om de mooie muurschilderingen van het scheppingsverhaal in het echt te zien.  We wandelden nadien verder naar Sant’ Ignatio.  Daar zagen we hoe beelden en schilderijen naadloos in mekaar kunnen overgaan.  Ook het Pantheon vonden we enorm indrukwekkend.  De wandeling eindigde in het restaurant. Daar kwamen we terug samen met de andere groep die de trein en de Romeinse metro getrotseerd had.  Om de avond af te sluiten wandelden we door het oude Rome.  Het was ondertussen donker geworden.  De Trevi fontein kwam nu nog extra tot zijn recht.  Op de Piazza Navona kregen we nog even tijd om souvenirtjes te kopen in de winkeltjes die we tijdens de wandeling straal voorbij gelopen waren.  De bus bracht ons terug naar het hotel. Het was een toffe maar vermoeiende dag.  We waren blij dat we konden douchen en gaan pitten.', N'vrijdag 30 maart 2012')
INSERT [dbo].[tblNieuws] ([ID], [Naam], [Nieuws], [Datum]) VALUES (9, N'Firenze', N'Nadat we veel te vroeg moesten opstaan, genoten we van een lekker ontbijt. Daarna vertrokken we met een deel van de groep naar San Marco. We hebben veel kloostercellen bezichtigd en kregen veel uitleg van onze goede gids. Na een aangename pauze,onder een stralende zon, bezochten we de Accademia. Het standbeeld van David was adembenemend en prachtig in detail. In de Medici-kapel waren we verwonderd door de pracht en praal van het interieur. Op het einde van de dag kwamen we tot de conclusie dat Sven en Jens nice zijn! De shoppingnamiddag startte voor iedereen bij een schitterende temperatuur van 26°C. De prijzen van de handtassen waren wel heel uiteenlopend.
We kozen dus maar waar voor ons geld en bestelden een glaasje …
', N'woensdag 28 maart 2012')
INSERT [dbo].[tblNieuws] ([ID], [Naam], [Nieuws], [Datum]) VALUES (15, N'terugreis', N'woensdagmiddag...
onze Italiëreis zit er alweer op. Na een zorgeloze nachtrit konden we aan de Notelaar voor de laatste keer de koffers uitladen. Lange tijd leefden we naar de reis toe. Wat moet je je bij die reis voorstellen? Zitten we echt 17u in de bus voor we in Italië zijn? Is het Colosseum in het echt ook zo indrukwekkend? Hoe zit de dagindeling in elkaar? Krijgen we echt elke dag spaghetti? 
Na 10 dagen is Italië iets heel concreets geworden en zijn al die vragen vervangen door onuitwisbare herinneringen. 
Foto s worden bekeken op de site en de talrijke persoonlijke facebookpagina s. Reisanecdotes worden doorverteld, in afgezwakte en in uitvergrote versie.
Maar die reis... die neemt niemand ons nog af!!!', N'woensdag 4 april 2012')
INSERT [dbo].[tblNieuws] ([ID], [Naam], [Nieuws], [Datum]) VALUES (12, N'zaterdag 31 maart', N'Vandaag hebben we eens wat langer mogen slapen. Na het ontbijt bezochten we eerst de overblijfselen van de thermen. Daarna mochten we allemaal eens een kijkje nemen door “het sleutelgat van Rome”. We wandelden nog langs “la bocca della verita”. Na de middag gingen we via het stadhuis van Rome naar Forum Romanum. Hier bezochten we de eerste stenen van het Romeinse Rijk en wandelden we over de hoofdweg van het oude Rome. Voor het avondeten gingen we nog tot boven op het Colosseum. Na het avondeten bezochten we de Spaanse trappen waar we nog vrije tijd kregen om een glaasje te gaan drinken of even te windowshoppen bij Prada en Gucci.', N'zaterdag 31 maart 2012')
INSERT [dbo].[tblNieuws] ([ID], [Naam], [Nieuws], [Datum]) VALUES (16, N'Voetbal en strand', N'Vandaag konden we kiezen tussen voetbal of het strand.
De groep die naar de voetbal ging nam de metro.
De wedstrijd ging tussen AS Roma en Novara.
Novara stond bij het begin van de match voor met 0-1.
Nadien is AS Roma in actie geschoten en zijn ze gewonnen met 5-2.
De groep die naar het strand ging, bezocht nog eerst Ostia Antica (de oude havenstad van Rome).
Daar kon je naar ruïnes kijken en hoorde je verhalen over vroeger.
Zo kon je onder andere oude toiletten, café, bakkerij, wijnmakerij,… zien.
In de namiddag gingen ze naar het strand. 
Daar konden ze zonnen, wandelen, zwemmen,…
', N'zondag 1 april 2012')
SET IDENTITY_INSERT [dbo].[tblNieuws] OFF
/****** Object:  Table [dbo].[tblGastenboek]    Script Date: 03/06/2013 09:48:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblGastenboek](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Naam] [varchar](30) NULL,
	[Bericht] [nvarchar](max) NULL,
	[Datum] [varchar](50) NULL,
 CONSTRAINT [PK_tblGastenboek] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tblGastenboek] ON
INSERT [dbo].[tblGastenboek] ([ID], [Naam], [Bericht], [Datum]) VALUES (1, N'Bert C.', N'Iets later dan voorzien werkt de databank van de site  (met dank aan dhr. Van Broeckhoven)! Allemaal veel plezier met de site, en voor de leerlingen en begeleiders natuurlijk vooral een superleuke reis gewenst!', N'24/03/2012 15:34:13')
INSERT [dbo].[tblGastenboek] ([ID], [Naam], [Bericht], [Datum]) VALUES (3, N'Nico', N'Bedankt aan iedereen die aan de site gewerkt heeft.
We denken aan jullie in Italië(voor zij die niet mee zijn) ', N'25/03/2012 12:48:51')
INSERT [dbo].[tblGastenboek] ([ID], [Naam], [Bericht], [Datum]) VALUES (4, N'Nathalie', N'En ze zijn vertrokken !', N'26/03/2012 0:14:49')
INSERT [dbo].[tblGastenboek] ([ID], [Naam], [Bericht], [Datum]) VALUES (5, N'de gepensioneerde', N'ZE zijn inderdaad vertrokken, maar ik ben niet mee (snik). Aan iedereen een heel toffe, interessante reis toegewenst. We wachten vol ongeduld op het eerste dagverslag.', N'26/03/2012 15:00:47')
INSERT [dbo].[tblGastenboek] ([ID], [Naam], [Bericht], [Datum]) VALUES (6, N'Nathalie', N'En ze zijn veilig en wel in Versilia aangekomen :) !
', N'26/03/2012 19:37:23')
INSERT [dbo].[tblGastenboek] ([ID], [Naam], [Bericht], [Datum]) VALUES (7, N'Hilde', N'Sjiek initiatief! Leuk om zo de reis te kunnen volgen...
', N'26/03/2012 23:57:31')
INSERT [dbo].[tblGastenboek] ([ID], [Naam], [Bericht], [Datum]) VALUES (9, N'Linda', N'Ondanks de vermoeidheid toch de moeite genomen om ons van een verslag te voorzien...Bedankt! ', N'27/03/2012 7:23:11')
INSERT [dbo].[tblGastenboek] ([ID], [Naam], [Bericht], [Datum]) VALUES (10, N'rit', N'fijn dat je van thuis uit deze reis zo wat kan volgen, genieten zullen jullie alvast!', N'27/03/2012 15:44:06')
INSERT [dbo].[tblGastenboek] ([ID], [Naam], [Bericht], [Datum]) VALUES (11, N'jp', N'Als de reis zo goed is als de site, dan wordt het een topper.  Een thuisblijver tegen wil en dank.', N'27/03/2012 15:53:36')
INSERT [dbo].[tblGastenboek] ([ID], [Naam], [Bericht], [Datum]) VALUES (12, N'M.-L. Bens', N'Ciao a tutti! Dit wordt vast een memorabele reis in la bella Italia...', N'28/03/2012 19:44:42')
INSERT [dbo].[tblGastenboek] ([ID], [Naam], [Bericht], [Datum]) VALUES (13, N'Bert C.', N'Geniet morgen van Assisi en een vlotte reis naar Roma daarna! Veel groeten!', N'28/03/2012 20:48:41')
INSERT [dbo].[tblGastenboek] ([ID], [Naam], [Bericht], [Datum]) VALUES (14, N'Sabine', N'Aan alle stralende zesdejaars: geniet met volle teugen van deze unieke reis! Veel plezier!', N'29/03/2012 8:03:20')
INSERT [dbo].[tblGastenboek] ([ID], [Naam], [Bericht], [Datum]) VALUES (15, N'E. Devriendt', N'Aan allen, geniet ook vandaag van de Italiaanse pracht in Assisi. Voor morgen wens ik jullie een mooie zonsondergang en veel sfeer op de Spaanse trappen.', N'29/03/2012 8:58:03')
INSERT [dbo].[tblGastenboek] ([ID], [Naam], [Bericht], [Datum]) VALUES (16, N'Van Thournout Brigit', N'Knappe reis, ik herbeleef een beetje mijn eigen Italiëreis van in het jaar 1977. Oeps al zo lang geleden :( Nog veel plezier allemaal!', N'29/03/2012 10:51:44')
INSERT [dbo].[tblGastenboek] ([ID], [Naam], [Bericht], [Datum]) VALUES (18, N'VanThournout Brigitt', N'Ik herbeleef een beetje mijn eigen Italiëreis van in het jaar 1977, oeps al zooo lang geleden :(  Geniet er allemaal van en veel plezier.
mama van Tanja', N'29/03/2012 10:54:35')
INSERT [dbo].[tblGastenboek] ([ID], [Naam], [Bericht], [Datum]) VALUES (21, N'Chris', N'bedankt, onze Jan staat op de foto, plezant!
Genieten daar allemaal, aan het weer zal het zeker nie liggen!
We genieten hier mee.', N'29/03/2012 15:05:53')
INSERT [dbo].[tblGastenboek] ([ID], [Naam], [Bericht], [Datum]) VALUES (22, N'Hilde', N'Wat een vrolijke fotoreportage vandaag! 6ST heefft er zin in precies.. Veel plezier nog ginder...', N'30/03/2012 7:25:55')
INSERT [dbo].[tblGastenboek] ([ID], [Naam], [Bericht], [Datum]) VALUES (23, N'Sabine', N'Yes, ze zijn er dan toch bij, die van 6 St! Blij te zien dat jullie zo genieten, maar ik had van jullie niet anders verwacht. Full report on Monday April 16, please!', N'30/03/2012 9:02:02')
INSERT [dbo].[tblGastenboek] ([ID], [Naam], [Bericht], [Datum]) VALUES (24, N'Ann G', N'Hela daar! Prachtige beelden ... hopelijk ondertussen nog niet te moe ... ik blijf jullie volgen! Tot binnenkort!', N'30/03/2012 11:27:04')
INSERT [dbo].[tblGastenboek] ([ID], [Naam], [Bericht], [Datum]) VALUES (25, N'Hans V.B.', N'Opgepast bij het uploaden van fotos (zie mail). 
Nog veel plezier verder!', N'30/03/2012 21:27:40')
INSERT [dbo].[tblGastenboek] ([ID], [Naam], [Bericht], [Datum]) VALUES (26, N'Bert C.', N'Hopelijk hebben jullie genoten van wandeling doorheen de restanten van het oude Rome (vond ik toch zeer de moeite toen) en veel plezier op voetbal/strand morgen he!', N'31/03/2012 15:28:26')
INSERT [dbo].[tblGastenboek] ([ID], [Naam], [Bericht], [Datum]) VALUES (27, N'Hilde', N'Waar zijn de fotos van 6 ST naartoe?', N'31/03/2012 23:15:07')
INSERT [dbo].[tblGastenboek] ([ID], [Naam], [Bericht], [Datum]) VALUES (28, N'WOWfans', N'Wie slaagt erin om 6I op de foto te zetten? 
Misschien moeten we een beloning uitloven om deze klus te klaren ...', N'1/04/2012 1:14:50')
INSERT [dbo].[tblGastenboek] ([ID], [Naam], [Bericht], [Datum]) VALUES (29, N'WOWfans', N'Wie slaagt erin om 6I op de foto te zetten? Misschien moeten we een beloning uitloven om deze klus te klaren ...	1/04/2012 1:14:50', N'1/04/2012 1:16:39')
INSERT [dbo].[tblGastenboek] ([ID], [Naam], [Bericht], [Datum]) VALUES (30, N'Bert C.', N'Duidelijk nog steeds geweldig weer en ik veronderstel ook een zalige reis! Mijn laatste post, dus nog héél véél plezier allemaal en daarna een vlotte terugreis en een deugddoende paasvakantie! Veel groeten', N'2/04/2012 14:41:56')
INSERT [dbo].[tblGastenboek] ([ID], [Naam], [Bericht], [Datum]) VALUES (31, N'BV', N'Zoals de klokjes in Italië tikken, tikken ze nergens. Geniet van deze reis! ', N'2/04/2012 19:10:41')
INSERT [dbo].[tblGastenboek] ([ID], [Naam], [Bericht], [Datum]) VALUES (32, N'Jenthe M', N'Geniet nog van de laatste dag in het prachtige Venetië, een mooie afsluiter van de onvergetelijke Italiëreis!', N'3/04/2012 10:25:38')
INSERT [dbo].[tblGastenboek] ([ID], [Naam], [Bericht], [Datum]) VALUES (33, N'dvNdjyvniuX', N'Nikon is vandaag de nog nog altjid een fabrikant van optische instrumenten. Er werken circa 25.000 mensen. De fabrieken van Nikon staan nog altjid in Japan. Aan fotografie en film gerelateerde producten zorgen voor 72,5% van de totale omzet van Nikon. Het is dus duidelijk dat Nikon zich succesvol op deze markt richt. De afgelopen jaren heeft het ook marktaandeel kunnen afsnoepen van Canon.', N'11/07/2012 5:09:52')
INSERT [dbo].[tblGastenboek] ([ID], [Naam], [Bericht], [Datum]) VALUES (34, N'hans', N'', N'20/02/2013 13:29:34')
SET IDENTITY_INSERT [dbo].[tblGastenboek] OFF
/****** Object:  Table [dbo].[tblFotos]    Script Date: 03/06/2013 09:48:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblFotos](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Naam] [varchar](50) NULL,
	[Dag] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblFotos] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tblFotos] ON
INSERT [dbo].[tblFotos] ([ID], [Naam], [Dag]) VALUES (1, N'IMG_0015.jpg', N'maandag 26 maart 2012')
INSERT [dbo].[tblFotos] ([ID], [Naam], [Dag]) VALUES (2, N'IMG_0019.jpg', N'maandag 26 maart 2012')
INSERT [dbo].[tblFotos] ([ID], [Naam], [Dag]) VALUES (3, N'IMG_0024.jpg', N'maandag 26 maart 2012')
INSERT [dbo].[tblFotos] ([ID], [Naam], [Dag]) VALUES (4, N'IMG_0032.jpg', N'maandag 26 maart 2012')
INSERT [dbo].[tblFotos] ([ID], [Naam], [Dag]) VALUES (6, N'IMG_0043.jpg', N'maandag 26 maart 2012')
INSERT [dbo].[tblFotos] ([ID], [Naam], [Dag]) VALUES (7, N'IMG_0045.jpg', N'maandag 26 maart 2012')
INSERT [dbo].[tblFotos] ([ID], [Naam], [Dag]) VALUES (8, N'IMG_0049.jpg', N'maandag 26 maart 2012')
INSERT [dbo].[tblFotos] ([ID], [Naam], [Dag]) VALUES (9, N'IMG_0063.jpg', N'maandag 26 maart 2012')
INSERT [dbo].[tblFotos] ([ID], [Naam], [Dag]) VALUES (10, N'IMG_0085.jpg', N'maandag 26 maart 2012')
INSERT [dbo].[tblFotos] ([ID], [Naam], [Dag]) VALUES (11, N'IMG_0090.jpg', N'maandag 26 maart 2012')
INSERT [dbo].[tblFotos] ([ID], [Naam], [Dag]) VALUES (22, N'DSCN1125.jpg', N'dinsdag 27 maart 2012')
INSERT [dbo].[tblFotos] ([ID], [Naam], [Dag]) VALUES (23, N'DSCN1176.jpg', N'dinsdag 27 maart 2012')
INSERT [dbo].[tblFotos] ([ID], [Naam], [Dag]) VALUES (24, N'DSCN1208.jpg', N'dinsdag 27 maart 2012')
INSERT [dbo].[tblFotos] ([ID], [Naam], [Dag]) VALUES (25, N'DSCN1210.jpg', N'dinsdag 27 maart 2012')
INSERT [dbo].[tblFotos] ([ID], [Naam], [Dag]) VALUES (26, N'DSCN1212.jpg', N'dinsdag 27 maart 2012')
INSERT [dbo].[tblFotos] ([ID], [Naam], [Dag]) VALUES (27, N'DSCN1213.jpg', N'dinsdag 27 maart 2012')
INSERT [dbo].[tblFotos] ([ID], [Naam], [Dag]) VALUES (28, N'DSCN1214.jpg', N'dinsdag 27 maart 2012')
INSERT [dbo].[tblFotos] ([ID], [Naam], [Dag]) VALUES (29, N'DSCN1216.jpg', N'dinsdag 27 maart 2012')
INSERT [dbo].[tblFotos] ([ID], [Naam], [Dag]) VALUES (32, N'IMG_0124.jpg', N'dinsdag 27 maart 2012')
INSERT [dbo].[tblFotos] ([ID], [Naam], [Dag]) VALUES (33, N'IMG_0146.jpg', N'dinsdag 27 maart 2012')
INSERT [dbo].[tblFotos] ([ID], [Naam], [Dag]) VALUES (65, N'1.jpg', N'woensdag 28 maart 2012')
INSERT [dbo].[tblFotos] ([ID], [Naam], [Dag]) VALUES (66, N'2.jpg', N'woensdag 28 maart 2012')
INSERT [dbo].[tblFotos] ([ID], [Naam], [Dag]) VALUES (67, N'3.jpg', N'woensdag 28 maart 2012')
INSERT [dbo].[tblFotos] ([ID], [Naam], [Dag]) VALUES (68, N'4.jpg', N'woensdag 28 maart 2012')
INSERT [dbo].[tblFotos] ([ID], [Naam], [Dag]) VALUES (69, N'5.jpg', N'woensdag 28 maart 2012')
INSERT [dbo].[tblFotos] ([ID], [Naam], [Dag]) VALUES (70, N'6.jpg', N'woensdag 28 maart 2012')
INSERT [dbo].[tblFotos] ([ID], [Naam], [Dag]) VALUES (71, N'7.jpg', N'woensdag 28 maart 2012')
INSERT [dbo].[tblFotos] ([ID], [Naam], [Dag]) VALUES (72, N'8.jpg', N'woensdag 28 maart 2012')
INSERT [dbo].[tblFotos] ([ID], [Naam], [Dag]) VALUES (73, N'9.jpg', N'woensdag 28 maart 2012')
INSERT [dbo].[tblFotos] ([ID], [Naam], [Dag]) VALUES (74, N'10.jpg', N'woensdag 28 maart 2012')
INSERT [dbo].[tblFotos] ([ID], [Naam], [Dag]) VALUES (76, N'do1.jpg', N'donderdag 29 maart 2012')
INSERT [dbo].[tblFotos] ([ID], [Naam], [Dag]) VALUES (77, N'do2.jpg', N'donderdag 29 maart 2012')
INSERT [dbo].[tblFotos] ([ID], [Naam], [Dag]) VALUES (78, N'do3.jpg', N'donderdag 29 maart 2012')
INSERT [dbo].[tblFotos] ([ID], [Naam], [Dag]) VALUES (79, N'do4.jpg', N'donderdag 29 maart 2012')
INSERT [dbo].[tblFotos] ([ID], [Naam], [Dag]) VALUES (80, N'do5.jpg', N'donderdag 29 maart 2012')
INSERT [dbo].[tblFotos] ([ID], [Naam], [Dag]) VALUES (81, N'do6.jpg', N'donderdag 29 maart 2012')
INSERT [dbo].[tblFotos] ([ID], [Naam], [Dag]) VALUES (82, N'do7.jpg', N'donderdag 29 maart 2012')
INSERT [dbo].[tblFotos] ([ID], [Naam], [Dag]) VALUES (83, N'do8.jpg', N'donderdag 29 maart 2012')
INSERT [dbo].[tblFotos] ([ID], [Naam], [Dag]) VALUES (84, N'do9.jpg', N'donderdag 29 maart 2012')
INSERT [dbo].[tblFotos] ([ID], [Naam], [Dag]) VALUES (85, N'do10.jpg', N'donderdag 29 maart 2012')
INSERT [dbo].[tblFotos] ([ID], [Naam], [Dag]) VALUES (86, N'vrij1.jpg', N'vrijdag 30 maart 2012')
INSERT [dbo].[tblFotos] ([ID], [Naam], [Dag]) VALUES (87, N'vrij2.jpg', N'vrijdag 30 maart 2012')
INSERT [dbo].[tblFotos] ([ID], [Naam], [Dag]) VALUES (88, N'vrij3.jpg', N'vrijdag 30 maart 2012')
INSERT [dbo].[tblFotos] ([ID], [Naam], [Dag]) VALUES (89, N'vrij4.jpg', N'vrijdag 30 maart 2012')
INSERT [dbo].[tblFotos] ([ID], [Naam], [Dag]) VALUES (90, N'vrij5.jpg', N'vrijdag 30 maart 2012')
INSERT [dbo].[tblFotos] ([ID], [Naam], [Dag]) VALUES (91, N'vrij6.jpg', N'vrijdag 30 maart 2012')
INSERT [dbo].[tblFotos] ([ID], [Naam], [Dag]) VALUES (92, N'vrij7.jpg', N'vrijdag 30 maart 2012')
INSERT [dbo].[tblFotos] ([ID], [Naam], [Dag]) VALUES (93, N'vrij8.jpg', N'vrijdag 30 maart 2012')
INSERT [dbo].[tblFotos] ([ID], [Naam], [Dag]) VALUES (94, N'vrij9.jpg', N'vrijdag 30 maart 2012')
INSERT [dbo].[tblFotos] ([ID], [Naam], [Dag]) VALUES (95, N'vrij10.jpg', N'vrijdag 30 maart 2012')
INSERT [dbo].[tblFotos] ([ID], [Naam], [Dag]) VALUES (96, N'za1.jpg', N'zaterdag 31 maart 2012')
INSERT [dbo].[tblFotos] ([ID], [Naam], [Dag]) VALUES (97, N'za2.jpg', N'zaterdag 31 maart 2012')
INSERT [dbo].[tblFotos] ([ID], [Naam], [Dag]) VALUES (98, N'za3.jpg', N'zaterdag 31 maart 2012')
INSERT [dbo].[tblFotos] ([ID], [Naam], [Dag]) VALUES (100, N'za5.jpg', N'zaterdag 31 maart 2012')
INSERT [dbo].[tblFotos] ([ID], [Naam], [Dag]) VALUES (101, N'za6.jpg', N'zaterdag 31 maart 2012')
INSERT [dbo].[tblFotos] ([ID], [Naam], [Dag]) VALUES (102, N'za7.jpg', N'zaterdag 31 maart 2012')
INSERT [dbo].[tblFotos] ([ID], [Naam], [Dag]) VALUES (103, N'za8.jpg', N'zaterdag 31 maart 2012')
INSERT [dbo].[tblFotos] ([ID], [Naam], [Dag]) VALUES (104, N'za9.jpg', N'zaterdag 31 maart 2012')
INSERT [dbo].[tblFotos] ([ID], [Naam], [Dag]) VALUES (105, N'za10.jpg', N'zaterdag 31 maart 2012')
INSERT [dbo].[tblFotos] ([ID], [Naam], [Dag]) VALUES (106, N'za4.jpg', N'zaterdag 31 maart 2012')
INSERT [dbo].[tblFotos] ([ID], [Naam], [Dag]) VALUES (107, N'zo 01.jpg', N'zondag 1 april 2012')
INSERT [dbo].[tblFotos] ([ID], [Naam], [Dag]) VALUES (108, N'zo 02.jpg', N'zondag 1 april 2012')
INSERT [dbo].[tblFotos] ([ID], [Naam], [Dag]) VALUES (109, N'zo 03.jpg', N'zondag 1 april 2012')
INSERT [dbo].[tblFotos] ([ID], [Naam], [Dag]) VALUES (110, N'zo 04.jpg', N'zondag 1 april 2012')
INSERT [dbo].[tblFotos] ([ID], [Naam], [Dag]) VALUES (111, N'zo 05.jpg', N'zondag 1 april 2012')
INSERT [dbo].[tblFotos] ([ID], [Naam], [Dag]) VALUES (112, N'zo 06.jpg', N'zondag 1 april 2012')
INSERT [dbo].[tblFotos] ([ID], [Naam], [Dag]) VALUES (113, N'zo 08.jpg', N'zondag 1 april 2012')
INSERT [dbo].[tblFotos] ([ID], [Naam], [Dag]) VALUES (114, N'zo 09.jpg', N'zondag 1 april 2012')
INSERT [dbo].[tblFotos] ([ID], [Naam], [Dag]) VALUES (115, N'zo 10.jpg', N'zondag 1 april 2012')
INSERT [dbo].[tblFotos] ([ID], [Naam], [Dag]) VALUES (116, N'zo 07.jpg', N'zondag 1 april 2012')
INSERT [dbo].[tblFotos] ([ID], [Naam], [Dag]) VALUES (117, N'204_1.jpg', N'maandag 2 april 2012')
INSERT [dbo].[tblFotos] ([ID], [Naam], [Dag]) VALUES (118, N'204_2.jpg', N'maandag 2 april 2012')
INSERT [dbo].[tblFotos] ([ID], [Naam], [Dag]) VALUES (119, N'204_3.jpg', N'maandag 2 april 2012')
INSERT [dbo].[tblFotos] ([ID], [Naam], [Dag]) VALUES (120, N'204_4.jpg', N'maandag 2 april 2012')
INSERT [dbo].[tblFotos] ([ID], [Naam], [Dag]) VALUES (121, N'204_5.jpg', N'maandag 2 april 2012')
INSERT [dbo].[tblFotos] ([ID], [Naam], [Dag]) VALUES (122, N'204_6.jpg', N'maandag 2 april 2012')
INSERT [dbo].[tblFotos] ([ID], [Naam], [Dag]) VALUES (123, N'204_7.jpg', N'maandag 2 april 2012')
INSERT [dbo].[tblFotos] ([ID], [Naam], [Dag]) VALUES (124, N'204_8.jpg', N'maandag 2 april 2012')
INSERT [dbo].[tblFotos] ([ID], [Naam], [Dag]) VALUES (125, N'204_9.jpg', N'maandag 2 april 2012')
INSERT [dbo].[tblFotos] ([ID], [Naam], [Dag]) VALUES (126, N'204_10.jpg', N'maandag 2 april 2012')
INSERT [dbo].[tblFotos] ([ID], [Naam], [Dag]) VALUES (127, N'chris.jpg', N'maandag 2 april 2012')
INSERT [dbo].[tblFotos] ([ID], [Naam], [Dag]) VALUES (128, N'di1.jpg', N'dinsdag 3 april 2012')
INSERT [dbo].[tblFotos] ([ID], [Naam], [Dag]) VALUES (129, N'di2.jpg', N'dinsdag 3 april 2012')
INSERT [dbo].[tblFotos] ([ID], [Naam], [Dag]) VALUES (130, N'di3.jpg', N'dinsdag 3 april 2012')
INSERT [dbo].[tblFotos] ([ID], [Naam], [Dag]) VALUES (131, N'di4.jpg', N'dinsdag 3 april 2012')
INSERT [dbo].[tblFotos] ([ID], [Naam], [Dag]) VALUES (132, N'di5.jpg', N'dinsdag 3 april 2012')
INSERT [dbo].[tblFotos] ([ID], [Naam], [Dag]) VALUES (133, N'di6.jpg', N'dinsdag 3 april 2012')
INSERT [dbo].[tblFotos] ([ID], [Naam], [Dag]) VALUES (134, N'di7.jpg', N'dinsdag 3 april 2012')
INSERT [dbo].[tblFotos] ([ID], [Naam], [Dag]) VALUES (135, N'di8.jpg', N'dinsdag 3 april 2012')
INSERT [dbo].[tblFotos] ([ID], [Naam], [Dag]) VALUES (136, N'di9.jpg', N'dinsdag 3 april 2012')
INSERT [dbo].[tblFotos] ([ID], [Naam], [Dag]) VALUES (137, N'di10.jpg', N'dinsdag 3 april 2012')
INSERT [dbo].[tblFotos] ([ID], [Naam], [Dag]) VALUES (139, N'wo01.jpg', N'woensdag 4 april 2012')
INSERT [dbo].[tblFotos] ([ID], [Naam], [Dag]) VALUES (140, N'wo1.jpg', N'woensdag 4 april 2012')
INSERT [dbo].[tblFotos] ([ID], [Naam], [Dag]) VALUES (141, N'wo2.jpg', N'woensdag 4 april 2012')
INSERT [dbo].[tblFotos] ([ID], [Naam], [Dag]) VALUES (142, N'wo3.jpg', N'woensdag 4 april 2012')
INSERT [dbo].[tblFotos] ([ID], [Naam], [Dag]) VALUES (143, N'wo4.jpg', N'woensdag 4 april 2012')
SET IDENTITY_INSERT [dbo].[tblFotos] OFF
/****** Object:  Table [dbo].[tblAccounts]    Script Date: 03/06/2013 09:48:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblAccounts](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Gebruikersnaam] [varchar](20) NULL,
	[Wachtwoord] [varchar](20) NULL,
 CONSTRAINT [PK_tblAccounts] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tblAccounts] ON
INSERT [dbo].[tblAccounts] ([ID], [Gebruikersnaam], [Wachtwoord]) VALUES (1, N'Admin', N'Assisi29maart')
SET IDENTITY_INSERT [dbo].[tblAccounts] OFF
