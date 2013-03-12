
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub btnMultipleRowDelete_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnMultipleRowDelete.Click
        fotogrid.DeleteRow(fotogrid.SelectedIndex)
    End Sub

    Protected Sub btnLogin_Click(sender As Object, e As System.EventArgs) Handles btnLogin.Click
        Response.Redirect("inloggen.aspx")

    End Sub

    Protected Sub btnBeheer_Click(sender As Object, e As System.EventArgs) Handles btnBeheer.Click
        Response.Redirect("default.aspx")
    End Sub

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        If Session("id") = String.Empty Then
            Response.Redirect("inloggen.aspx")
        End If
    End Sub
End Class
