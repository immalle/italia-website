
Partial Class _Default
    Inherits System.Web.UI.Page


    Sub Leegmaken()
        txtNaam.Text = String.Empty
        txtNieuws.Text = String.Empty

    End Sub


    Protected Sub btnAnnuleren_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnAnnuleren.Click
        Me.Leegmaken()

    End Sub

    Protected Sub btnToevoegen_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnToevoegen.Click
        Dim strSQL As String

        strSQL = "Insert into tblNieuws(Naam, Nieuws, Datum)"
        strSQL &= "Values ('" & txtNaam.Text & "','" & txtNieuws.Text & "','" & txtDatum.Text & "')"

        SqlNieuws.InsertCommand = strSQL
        SqlNieuws.Insert()

        Leegmaken()

    End Sub

   
    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load


        If Session("id") = String.Empty Then
            Response.Redirect("inloggen.aspx")
        End If

        
    End Sub


    Protected Sub btnLogin_Click(sender As Object, e As System.EventArgs) Handles btnLogin.Click
        Response.Redirect("inloggen.aspx")

    End Sub

    Protected Sub btnBeheer_Click(sender As Object, e As System.EventArgs) Handles btnBeheer.Click
        Response.Redirect("default.aspx")
    End Sub

    Protected Sub Kalender1_SelectionChanged(sender As Object, e As System.EventArgs) Handles Kalender1.SelectionChanged
        Dim strDatum As String



        strDatum = Kalender1.SelectedDate.ToLongDateString
        txtDatum.Text = strDatum
    End Sub
End Class

