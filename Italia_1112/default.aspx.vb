
Partial Class _Default
    Inherits System.Web.UI.Page


    Protected Sub btnLogin_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        Response.Redirect("Inloggen.aspx")

    End Sub

    Protected Sub btnBeheer_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        Response.Redirect("default.aspx")

    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("id") = String.Empty Then
            Response.Redirect("startpagina.aspx")
        End If

    End Sub

    Protected Sub btnAfmelden_Click(sender As Object, e As System.EventArgs) Handles btnAfmelden.Click
        Session("id") = String.Empty
        Response.Redirect("inloggen.aspx")
    End Sub

    Protected Sub btnFotosbeheren_Click(sender As Object, e As System.EventArgs) Handles btnFotosbeheren.Click
        Response.Redirect("FotosBeheren.aspx")
    End Sub

    Protected Sub btnFotosUploaden_Click(sender As Object, e As System.EventArgs) Handles btnFotosUploaden.Click
        Response.Redirect("FotoUploaden.aspx")
    End Sub

    Protected Sub btnNieuwsbeheren_Click(sender As Object, e As System.EventArgs) Handles btnNieuwsbeheren.Click
        Response.Redirect("NieuwsBeheren.aspx")
    End Sub

    Protected Sub btnNieuwstoevoegen_Click(sender As Object, e As System.EventArgs) Handles btnNieuwstoevoegen.Click
        Response.Redirect("Nieuwstoevoegen.aspx")
    End Sub

    Protected Sub btnGastenboekBeheren_Click(sender As Object, e As System.EventArgs) Handles btnGastenboekBeheren.Click
        Response.Redirect("GastenboekBeheren.aspx")
    End Sub

End Class



