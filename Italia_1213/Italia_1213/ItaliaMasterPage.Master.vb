﻿Public Class ItaliaMasterPage
    Inherits System.Web.UI.MasterPage

    Dim homeItem = New MenuItem("Home", "", "", "~/Default.aspx")
    Dim dagverslagenItem = New MenuItem("Dagverslagen", "", "", "~/NieuwsBekijken.aspx")
    Dim programmaItem = New MenuItem("Programma", "", "", "~/Programma.aspx")
    Dim fotoItem = New MenuItem("Foto's", "", "", "~/Fotos.aspx")
    Dim gastenboekItem = New MenuItem("Gastenboek", "", "", "~/Gastenboek.aspx")
    Dim loginItem = New MenuItem("Inloggen", "", "", "~/Login.aspx")
    Dim dagverslagenbeheerItem = New MenuItem("Dagverslagen beheer", "", "", "~/NieuwsBeheer.aspx")
    Dim fotobeheerItem = New MenuItem("Foto's beheer", "", "", "~/FotosBeheren.aspx")
    Dim fotouploadItem = New MenuItem("Upload Foto", "", "", "~/FotosUploaden.aspx")
    Dim gastenboekbeheerItem = New MenuItem("Gastenboek beheer", "", "", "~/GastenboekBeheren.aspx")
    Dim logoutItem = New MenuItem("Logout", "", "", "~/Logout.aspx")

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        NavigationMenu.Items.Clear()

        NavigationMenu.Items.Add(homeItem)
        NavigationMenu.Items.Add(dagverslagenItem)
        NavigationMenu.Items.Add(programmaItem)
        NavigationMenu.Items.Add(fotoItem)
        NavigationMenu.Items.Add(gastenboekItem)

        If Session("id") = String.Empty Then
            NavigationMenu.Items.Add(loginItem)
        Else
            NavigationMenu.Items.Add(logoutItem)
            NavigationMenu.Items.Add(dagverslagenbeheerItem)
            NavigationMenu.Items.Add(fotobeheerItem)
            NavigationMenu.Items.Add(fotouploadItem)
            NavigationMenu.Items.Add(gastenboekbeheerItem)
        End If
    End Sub
End Class