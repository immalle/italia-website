italia-website 2013-2014
========================

TODO:

- Tijdelijke aftel-website maken
- Functionaliteit analyseren (Wat kon er met de vorige versie / Wat willen we nu kunnen?)
	- Wat moet een gewone user allemaal kunnen?
		- use case diagramma maken voor gewone user
	- Welke gebruikers moeten er nog zijn?
		- use case diagramma voor andere gebruikers, wss Admin
- Hoe werd het vorige keer gedaan? Lees/analyseer de code.
	- ASP.Net WebForms
	- SQL Databank exploreren



#problemen met syncen van github#

Als het bouwen niet werkt, kan het zijn dat de packages niet goed mee ingecheckt zijn in GitHub.

Dit kan dat oplossen:

- Install-Package EntityFramework
- Install-Package Microsoft.AspNet.Web.Optimization




#Requirements#

##Anonieme gebruikers (iedereen)##

1. Algemene informatie kunnen lezen (vgl. HOME-pagina)
2. Programma raadplegen
3. Dagverslagen kunnen lezen
4. Foto's kunnen bekijken
	- hoe organiseerd? Per dag?
5. Een gastenboek-entry maken

##Administrator##

1. Inloggen
2. Dagverslagen toevoegen
3. Dagverslagen bewerken
4. Foto's uploaden
5. Foto's verwijderen / verbergen
6. Gastenboek-entries verwijderen


 