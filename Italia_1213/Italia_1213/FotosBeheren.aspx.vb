﻿Public Class FotosBeheren
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("id") = String.Empty Then
            Response.Redirect("~/Default.aspx")
        End If
    End Sub

    Private Sub btnMultipleRowDelete_Click(sender As Object, e As System.EventArgs) Handles btnMultipleRowDelete.Click
        fotogrid.DeleteRow(fotogrid.SelectedIndex)
    End Sub
End Class