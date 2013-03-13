Partial Class Dagverslagen
    Inherits System.Web.UI.Page

    Sub Leegmaken()
        txtNaam.Text = String.Empty
        txtNieuws.Text = String.Empty

    End Sub

    Protected Sub btnAnnuleren_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnAnnuleren.Click
        Me.Leegmaken()
    End Sub

    Protected Sub btnToevoegen_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnToevoegen.Click

        'strSQL &= "Values ('" & txtNaam.Text & "','" & txtNieuws.Text & "','" & txtDatum.Text & "')"

        SqlNieuws.InsertCommand = "INSERT INTO tblNieuws(Naam, Nieuws, Datum) VALUES(@naam, @nieuws, @datum)"
        SqlNieuws.InsertParameters.Add("datum", DbType.Date, Kalender1.SelectedDate.ToString)
        SqlNieuws.InsertParameters.Add("naam", DbType.String, txtNaam.Text)
        SqlNieuws.InsertParameters.Add("nieuws", DbType.String, txtNieuws.Text)


        SqlNieuws.Insert()


        Leegmaken()
    End Sub

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Kalender1_SelectionChanged(sender As Object, e As System.EventArgs) Handles Kalender1.SelectionChanged
        Dim strDatum As String

        strDatum = Kalender1.SelectedDate.ToLongDateString
        txtDatum.Text = strDatum
    End Sub
End Class