Public Class FotosUploaden
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("id") = String.Empty Then
            Response.Redirect("~/Default.aspx")
        End If
    End Sub

    Private Sub btnUpload_Click(sender As Object, e As System.EventArgs) Handles btnUpload.Click
        Dim datum As Date
        Dim strBestandsnaam As String = Date.Now.Year.ToString & "-" & Date.Now.Month.ToString & "-" & Date.Now.Day.ToString & "-" & Date.Now.Hour.ToString & "-" & Date.Now.Minute.ToString & "-" & Date.Now.Second.ToString & IO.Path.GetExtension(fupUpload.PostedFile.FileName)
        Dim strPad As String = Server.MapPath("uploads\" & strBestandsnaam)
        fupUpload.PostedFile.SaveAs(strPad)

        Date.TryParseExact(textCalender.Text, "yyyy-MM-dd", Nothing, Globalization.DateTimeStyles.None, datum)
        sqlDatasource.InsertCommand = "INSERT INTO tblFotos (Naam,Dag) VALUES (@bestandsnaam,@datum)"
        sqlDatasource.InsertParameters.Add("bestandsnaam", DbType.String, strBestandsnaam)
        sqlDatasource.InsertParameters.Add("datum", DbType.Date, datum.ToString)

        sqlDatasource.Insert()
    End Sub
End Class