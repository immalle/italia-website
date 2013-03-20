Public Class Fotos
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then
            Dim sqlConnection As New SqlClient.SqlConnection()
            sqlConnection.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings("ItaliaConnection").ToString()

            Dim sqlCommand As New SqlClient.SqlCommand()
            sqlCommand.Connection = sqlConnection
            sqlCommand.CommandText = "SELECT DISTINCT Dag FROM tblFotos"

            sqlConnection.Open()
            Dim dr As SqlClient.SqlDataReader = sqlCommand.ExecuteReader()

            While dr.Read()
                Dim s As Date = Date.Parse(dr("Dag"))

                ListBox1.Items.Add(s)
            End While
        End If


    End Sub

    Private Sub btnLogin_Click(sender As Object, e As System.EventArgs) Handles btnLogin.Click
        Response.Redirect("Login.aspx")
    End Sub

    Private Sub ListBox1_SelectedIndexChanged(sender As Object, e As System.EventArgs) Handles ListBox1.SelectedIndexChanged
        Dim selectedDate As Date = Date.Parse(ListBox1.SelectedValue)
        Dim sqlConnection As New SqlClient.SqlConnection()
        sqlConnection.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings("ItaliaConnection").ToString()

        Dim sqlCommand As New SqlClient.SqlCommand()
        sqlCommand.Connection = sqlConnection
        sqlCommand.CommandText = "SELECT Naam,Dag FROM tblFotos"

        sqlConnection.Open()
        Dim dr As SqlClient.SqlDataReader = sqlCommand.ExecuteReader()

        While dr.Read()
            Dim s As Date = Date.Parse(dr("Dag"))
            If s = selectedDate Then
                Dim img As New Image()
                img.ImageUrl = "~\uploads\" & dr("Naam")
                img.CssClass = "img"
                fotoview.Controls.Add(img)
            Else

            End If
        End While
    End Sub
End Class