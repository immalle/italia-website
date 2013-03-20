Imports System.Data.SqlClient
Public Class Login
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
    End Sub
    Protected Sub lgnAanmelden_Authenticate(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.AuthenticateEventArgs) Handles lgnAanmelden.Authenticate
        Dim sqlConn As New SqlConnection
        Dim sqlCmd As New SqlCommand
        Dim loginString As String

        sqlConn.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings("ItaliaConnection").ToString

        sqlCmd.Connection = sqlConn
        'sqlCmd.CommandText = "select ID from tblAccounts where (Gebruikersnaam='" & lgnAanmelden.UserName & "' and Wachtwoord='" & lgnAanmelden.Password & "')"

        sqlCmd.CommandText = "select ID from tblAccounts where Gebruikersnaam=@gebruikersnaam and Wachtwoord=@wachtwoord"
        sqlCmd.Parameters.Add("gebruikersnaam", SqlDbType.VarChar)
        sqlCmd.Parameters.Add("wachtwoord", SqlDbType.VarChar)
        sqlCmd.Parameters.Item("gebruikersnaam").Value = lgnAanmelden.UserName
        sqlCmd.Parameters.Item("wachtwoord").Value = lgnAanmelden.Password

        sqlConn.Open()

        If sqlCmd.ExecuteScalar Is Nothing Then
            loginString = String.Empty 'Niet ingelogd
        Else
            loginString = sqlCmd.ExecuteScalar.ToString
        End If

        Session("id") = loginString

        sqlConn.Close()

        If Session("id") Then
            Response.Redirect("Default.aspx")
        Else
            lgnAanmelden.FailureText = "Foutieve aanmelding. Probeer nogmaals!"
        End If
    End Sub
End Class