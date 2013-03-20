Imports System.Data.SqlClient
Public Class Login
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
    End Sub
    Protected Sub lgnAanmelden_Authenticate(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.AuthenticateEventArgs) Handles lgnAanmelden.Authenticate
        Dim scnnLogin As New SqlConnection
        Dim scmdGebruiker As New SqlCommand
        Dim strID As String

        scnnLogin.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings("ItaliaConnection").ToString

        scmdGebruiker.Connection = scnnLogin
        scmdGebruiker.CommandText = "select ID from tblAccounts where (Gebruikersnaam='" & lgnAanmelden.UserName & "' and Wachtwoord='" & lgnAanmelden.Password & "')"

        scnnLogin.Open()

        If scmdGebruiker.ExecuteScalar Is Nothing Then
            strID = String.Empty 'Niet ingelogd
        Else
            strID = scmdGebruiker.ExecuteScalar.ToString
        End If
        Session("id") = strID
        scnnLogin.Close()

        If Not strID = String.Empty Then
            FormsAuthentication.RedirectFromLoginPage(lgnAanmelden.UserName, False)
        Else
            lgnAanmelden.FailureText = "Foutieve aanmelding. Probeer nogmaals!"
        End If

    End Sub
End Class