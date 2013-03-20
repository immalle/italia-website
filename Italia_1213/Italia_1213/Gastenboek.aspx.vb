Public Class Gastenboek
    Inherits System.Web.UI.Page

    Sub Leegmaken()
        txtNaam.Text = String.Empty
        txtBericht.Text = String.Empty
    End Sub

    Protected Sub btnAnnuleren_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnAnnuleren.Click
        Me.Leegmaken()
    End Sub

    Protected Sub btnToevoegen_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnToevoegen.Click
        SqlNieuws.InsertCommand = "INSERT INTO tblGastenboek(Naam, Bericht, Datum) Values (@Naam, @Bericht, @Datum)"
        SqlNieuws.InsertParameters.Add("Naam", DbType.String, txtNaam.Text)
        SqlNieuws.InsertParameters.Add("Bericht", DbType.String, txtBericht.Text)
        SqlNieuws.InsertParameters.Add("Datum", DbType.Date, DateTime.Now.ToString)
        SqlNieuws.Insert()
        Leegmaken()
    End Sub

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        
        gastenboekgrid.Visible = True
        gastenboekgrid.Columns(0).ItemStyle.Width = 90
        gastenboekgrid.Columns(1).ItemStyle.Width = 215
        gastenboekgrid.Columns(2).ItemStyle.Width = 60

        'If Session("id") = String.Empty Then
        '    btnBeheer.Visible = False
        'End If



    End Sub

End Class