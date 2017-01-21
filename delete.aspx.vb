Imports System
Imports System.Data
Imports System.Data.SqlClient
Partial Class delect
    Inherits System.Web.UI.Page
    Dim conn As Data.SqlClient.SqlConnection = New Data.SqlClient.SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings("ConnectionString").ConnectionString())
    Private Sub delect_Load(sender As Object, e As EventArgs) Handles Me.Load
        If (Session("ifLogin") = 1) Then
            Dim id = Request("id")
            Dim title2 = Request("title")
            'Response.Write(title2)
            'Dim strConn As String = "Data Source=(LocalDB)\MSSQLLocalDB;Initial Catalog=hospital;Integrated Security=True;Pooling=False"
            'Dim conn As SqlConnection = New SqlConnection(strConn)
            conn.Open()
            Dim cmd As SqlCommand = New SqlCommand("delete from News where ID='" + id + "'", conn)
            cmd.ExecuteNonQuery()
            conn.Close()
            Response.Redirect("HiddenHome.aspx")

        Else
            Response.Redirect("login.aspx")
        End If
    End Sub
End Class
