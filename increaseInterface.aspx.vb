Imports System
Imports System.Data
Imports System.Data.SqlClient
Imports System.Text
Partial Class increaseInterface
    Inherits System.Web.UI.Page
    Dim conn As Data.SqlClient.SqlConnection = New Data.SqlClient.SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings("ConnectionString").ConnectionString())
    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        'textarea 內容轉html格式
        'textarea1.Value.Replace(vbCrLf, "<br>")
        'Dim strConn As String = "Data Source=(LocalDB)\MSSQLLocalDB;Initial Catalog=hospital;Integrated Security=True;Pooling=False"
        'Dim conn As SqlConnection = New SqlConnection(strConn)
        conn.Open()
        Dim cmd As SqlCommand = New SqlCommand("select * from News order by CRDT desc", conn)
        Dim dr As SqlDataReader = cmd.ExecuteReader()

        Dim check = 0
        'While dr.Read()
        'If textbox.Text = dr("Title") Then
        'Response.Write("<Script language='JavaScript'>alert('標題不能重複！');</Script>")
        'check = 1
        ' End If
        'End While
        If (check = 0) Then
            Server.Transfer("increaseSuccess.aspx")
        End If

    End Sub

    Private Sub increaseInterface_Load(sender As Object, e As EventArgs) Handles Me.Load
        If (Session("ifLogin") = 1) Then

        Else
            Response.Redirect("login.aspx")
        End If
    End Sub



    'Dim strConn As String = "server=DESKTOP-9I43N6M\SQLExpress;database=hospital;uid=sa;pwd=icefire30927"
    'Dim conn As SqlConnection = New SqlConnection(strConn)
    ' Dim cmd As SqlCommand = New SqlCommand("insert into article (year,month,day,title,radio1,content)
    'values ('$year','$month','$day','$title','$radio1','$content')", conn)



End Class
