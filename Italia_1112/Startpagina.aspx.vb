
Partial Class _Default
    Inherits System.Web.UI.Page


    Protected Sub btnLogin_Click(sender As Object, e As System.EventArgs) Handles btnLogin.Click
        Response.Redirect("inloggen.aspx")

    End Sub

    Protected Sub btnBeheer_Click(sender As Object, e As System.EventArgs) Handles btnBeheer.Click
        Response.Redirect("default.aspx")
    End Sub

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        If Session("id") = String.Empty Then
            btnBeheer.Visible = False
        End If
    End Sub
End Class
