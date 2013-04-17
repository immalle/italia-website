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

                Dim linkbtn As New LinkButton
                linkbtn.Text = s & " "
                linkbtn.ID = "DatumFoto"
                DatumsFotos.Controls.Add(linkbtn)
                AddHandler linkbtn.click, AddressOf linkbtn_click
            End While
        End If
    End Sub

    'Private Sub DropDownList1_SelectedIndexChanged(sender As Object, e As System.EventArgs) Handles DropDownList1.SelectedIndexChanged
    '    Dim selectedDate As Date = Date.Parse(DropDownList1.SelectedValue)
    '    Dim sqlConnection As New SqlClient.SqlConnection()
    '    sqlConnection.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings("ItaliaConnection").ToString()

    '    Dim sqlCommand As New SqlClient.SqlCommand()
    '    sqlCommand.Connection = sqlConnection
    '    sqlCommand.CommandText = "SELECT Naam,Dag FROM tblFotos"

    '    sqlConnection.Open()
    '    Dim dr As SqlClient.SqlDataReader = sqlCommand.ExecuteReader()

    '    While dr.Read()
    '        Dim s As Date = Date.Parse(dr("Dag"))
    '        If s = selectedDate Then
    '            Dim img As New Image()
    '            img.ImageUrl = "~\uploads\" & dr("Naam")
    '            img.CssClass = "img"
    '            fotoview.Controls.Add(img)
    '        Else
    '        End If
    '    End While
    'End Sub

    Private Sub linkbtn_click(sender As LinkButton, e As System.EventArgs)
        Dim sqlConnection As New SqlClient.SqlConnection()
        sqlConnection.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings("ItaliaConnection").ToString()

        Dim sqlCommand As New SqlClient.SqlCommand()
        sqlCommand.Connection = sqlConnection
        sqlCommand.CommandText = "SELECT Naam,Dag FROM tblFotos"

        sqlConnection.Open()
        Dim dr As SqlClient.SqlDataReader = sqlCommand.ExecuteReader()

        While dr.Read()
            'If s = selectedDate Then
            Dim img As New Image()
            img.ImageUrl = "~\uploads\" & dr("naam")
            img.CssClass = "img"
            fotoview.Controls.Add(img)
            'End If
        End While
    End Sub
End Class