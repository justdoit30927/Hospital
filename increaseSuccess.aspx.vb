Imports System
Imports System.Data
Imports System.Data.SqlClient
Partial Class test
    Inherits System.Web.UI.Page
    Dim conn As Data.SqlClient.SqlConnection = New Data.SqlClient.SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings("ConnectionString").ConnectionString())
    Private Sub increaseSuccess_Load(sender As Object, e As EventArgs) Handles Me.Load
        If (Session("ifLogin") = 1) Then


            Dim title = Request.Form("textbox")
            Dim radio1 = Request.Form("radio1")
            Dim information = Request.Form("textarea1")
            Response.Write("更新成功")

            'Dim strConn As String = "Data Source=(LocalDB)\MSSQLLocalDB;Initial Catalog=hospital;Integrated Security=True;Pooling=False"
            'Dim conn As SqlConnection = New SqlConnection(strConn)
            conn.Open()
            Dim cmd As SqlCommand = New SqlCommand("insert into News (Title,News_Content, Popular) 
                                                values ('" + title + "', '" + information + "','" + radio1 + "')", conn)


            cmd.ExecuteNonQuery()
            conn.Close()

        Else
            Response.Redirect("login.aspx")
        End If


    End Sub





End Class
