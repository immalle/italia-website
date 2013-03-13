Public Class NieuwsBeheren
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load

    End Sub

    Private Sub btnToevoegen_Click(sender As Object, e As System.EventArgs) Handles btnToevoegen.Click
        Response.Redirect("NieuwsToevoegen.aspx")
    End Sub
End Class