Imports System
Imports System.Data
Imports System.Data.SqlClient
Partial Class modify
    Inherits System.Web.UI.Page
    Dim conn As Data.SqlClient.SqlConnection = New Data.SqlClient.SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings("ConnectionString").ConnectionString())
    Private Sub modify_Load(sender As Object, e As EventArgs) Handles Me.Load
        If (Session("ifLogin") = 1) Then
            Dim id = Request.Form("id")
            Dim title = Request.Form("textbox")
            'Dim oldtitle = Request.Form("oldtitle")
            Dim radio1 = Request.Form("radio1")
            Dim information = Request.Form("information")
            'Dim strConn As String = "Data Source=(LocalDB)\MSSQLLocalDB;Initial Catalog=hospital;Integrated Security=True;Pooling=False"
            'Dim conn As SqlConnection = New SqlConnection(strConn)
            conn.Open()

            Dim cmd As SqlCommand = New SqlCommand("update News set Title='" + title + "',Popular='" + radio1 + "',News_Content = '" + information + "' where ID='" + id + "'", conn)
            cmd.ExecuteNonQuery()
            conn.Close()
            Response.Write("變更成功")

        Else
            Response.Redirect("login.aspx")
        End If
    End Sub
End Class
