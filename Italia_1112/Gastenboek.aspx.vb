
Partial Class _Default
    Inherits System.Web.UI.Page


    Sub Leegmaken()
        txtNaam.Text = String.Empty
        txtBericht.Text = String.Empty

    End Sub


    Protected Sub btnAnnuleren_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnAnnuleren.Click
        Me.Leegmaken()

    End Sub

    Protected Sub btnToevoegen_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnToevoegen.Click
        Dim strSQL As String


        strSQL = "Insert into tblGastenboek(Naam, Bericht, Datum)"
        strSQL &= "Values ('" & txtNaam.Text & "','" & txtBericht.Text & "','" & txtDatum.Text & "')"

        SqlNieuws.InsertCommand = strSQL
        SqlNieuws.Insert()




        Leegmaken()

    End Sub

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        Dim dteDate As Date

        dteDate = Date.Now
        txtDatum.Text = dteDate.ToString

        If gastenboekgrid.Rows.Count = 0 Then
            gastenboekgrid.Visible = False
        Else
            gastenboekgrid.Visible = True
            gastenboekgrid.Columns(0).ItemStyle.Width = 90
            gastenboekgrid.Columns(1).ItemStyle.Width = 215
            gastenboekgrid.Columns(2).ItemStyle.Width = 60

        End If

        If Session("id") = String.Empty Then
            btnBeheer.Visible = False
        End If



    End Sub
    Protected Sub btnLogin_Click(sender As Object, e As System.EventArgs) Handles btnLogin.Click
        Response.Redirect("inloggen.aspx")

    End Sub

    Protected Sub btnBeheer_Click(sender As Object, e As System.EventArgs) Handles btnBeheer.Click
        Response.Redirect("default.aspx")
    End Sub
End Class

