﻿
Partial Class _Default
    Inherits System.Web.UI.Page
    Protected Sub btnMultipleRowDelete_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnMultipleRowDelete.Click

        gastenboekgrid.DeleteRow(gastenboekgrid.SelectedIndex)
    End Sub

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        If Session("id") = String.Empty Then
            Response.Redirect("inloggen.aspx")
        End If
    End Sub
End Class

