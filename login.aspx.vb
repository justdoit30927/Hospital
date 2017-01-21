Imports System
Imports System.Data
Imports System.Data.SqlClient
Partial Class login
    Inherits System.Web.UI.Page
    Dim conn As Data.SqlClient.SqlConnection = New Data.SqlClient.SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings("ConnectionString").ConnectionString())
    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        'Dim strConn As String = "Data Source=(LocalDB)\MSSQLLocalDB;Initial Catalog=hospital;Integrated Security=True;Pooling=False"
        'Dim conn As SqlConnection = New SqlConnection(strConn)
        conn.Open()
        Dim cmd As SqlCommand = New SqlCommand("select Name, Password from Account", conn)
        Dim dr As SqlDataReader = cmd.ExecuteReader()
        While dr.Read()
            If (TextBox1.Text = dr("Name") And TextBox2.Text = dr("Password")) Then
                Session("ifLogin") = 1
                'Response.Write(dr("Name") + dr("Password"))
                Response.Redirect("HiddenHome.aspx")



            End If
        End While
        conn.Close()
    End Sub











End Class
