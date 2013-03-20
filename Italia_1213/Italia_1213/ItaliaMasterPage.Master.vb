Public Class ItaliaMasterPage
    Inherits System.Web.UI.MasterPage

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        NavigationMenu.Items.Clear()

        Dim homeItem = New MenuItem("Home", "", "", "~/Startpagina.aspx")
        Dim dagverslagenItem = New MenuItem("Dagverslagen", "", "", "~/NieuwsBekijken.aspx")
        Dim programmaItem = New MenuItem("Programma", "", "", "~/Programma.aspx")
        Dim fotoItem = New MenuItem("Foto's", "", "", "~/Fotos.aspx")
        Dim gastenboekItem = New MenuItem("Gastenboek", "", "", "~/Gastenboek.aspx")
        Dim loginItem = New MenuItem("Inloggen", "", "", "~/Login.aspx")



        NavigationMenu.Items.Add(homeItem)
        NavigationMenu.Items.Add(dagverslagenItem)
        NavigationMenu.Items.Add(programmaItem)
        NavigationMenu.Items.Add(fotoItem)
        NavigationMenu.Items.Add(gastenboekItem)
        NavigationMenu.Items.Add(loginItem)

    End Sub
End Class