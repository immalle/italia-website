
Partial Class _Default
    Inherits System.Web.UI.Page

    
    Protected Sub btnOphalen_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnOphalen.Click
        Dim strBestandsnaam, strDoelpad, strDatum As String



        Try
            strBestandsnaam = System.IO.Path.GetFileName(fulPadNieuweFoto.PostedFile.FileName)
            strDoelpad = Server.MapPath("Images" & "\" & strBestandsnaam)

            fulPadNieuweFoto.PostedFile.SaveAs(strDoelpad)

            strDatum = Kalender1.SelectedDate.ToLongDateString


            SqlNieuws.InsertCommand = "INSERT INTO tblFotos (Naam,Dag) VALUES('" & strBestandsnaam & "','" & strDatum & "')"
            SqlNieuws.Insert()
        Catch excUitzondering As System.Data.SqlClient.SqlException
            lblFout.Text = excUitzondering.Message
            lblFout.Visible = True
        Catch excUitzondering As System.IO.DirectoryNotFoundException
            lblFout.Text = "Selecteer een fotobestand of het gekozen bestand heeft geen inhoud."
            lblFout.Visible = True
        Catch excUitzondering As Exception
            lblFout.Text = "Onverwachte fout."
            lblFout.Visible = True
        End Try



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
