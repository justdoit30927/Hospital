Imports System
Imports System.Data
Imports System.Data.SqlClient
Partial Class test
    Inherits System.Web.UI.Page
    Dim conn As Data.SqlClient.SqlConnection = New Data.SqlClient.SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings("ConnectionString").ConnectionString())
    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        'Dim strConn As String = "Data Source=(LocalDB)\MSSQLLocalDB;Initial Catalog=hospital;Integrated Security=True;Pooling=False"
        'Dim conn As SqlConnection = New SqlConnection(strConn)
        conn.Open()
        Dim cmd As SqlCommand = New SqlCommand("select * from News ", conn)
        Dim dr As SqlDataReader = cmd.ExecuteReader()
        Dim check = 0
        Dim now_title = Request("title")

        'While dr.Read()
        'If textbox.Text = dr("Title") And textbox.Text <> now_title Then
        'Response.Write("<Script language='JavaScript'>alert('標題不能重複！');</Script>")
        'check = 1
        'End If

        'End While
        If (check = 0) Then
            Server.Transfer("modify.aspx")
        End If

    End Sub

    Private Sub modifyInterface_Load(sender As Object, e As EventArgs) Handles Me.Load

        If (Session("ifLogin") = 1) Then
            Dim id = Request("ID")
            Dim title = Request("Title")
            'Dim strConn As String = "Data Source=(LocalDB)\MSSQLLocalDB;Initial Catalog=hospital;Integrated Security=True;Pooling=False"
            'Dim conn As SqlConnection = New SqlConnection(strConn)
            conn.Open()
            Dim cmd As SqlCommand = New SqlCommand("select * from News where ID='" + id + "'", conn)
            Dim dr As SqlDataReader = cmd.ExecuteReader()
            Dim mystring As StringBuilder = New StringBuilder
            While dr.Read()
                textbox.Text = dr("Title")

                If dr("Popular") = "false" Then

                    Label1.Text = "<input type='radio'  name='radio1' value='true'/>設為熱門文章
		                       <input type='radio'  name='radio1' value='False' checked='True'/>取消"
                Else

                    Label1.Text = "<input type='radio'  name='radio1' value='true' checked='True'/>設為熱門文章
		                       <input type='radio'  name='radio1' value='False' />取消"
                End If
                Label2.Text = "<textarea class='textarea' name='information'  placeholder='輸入內容'>" + dr("News_Content") + "</textarea>"
                Label3.Text = "<input type='hidden' name='oldtitle' value='" + dr("Title") + "'>"
                Label3.Text += "<input type='hidden' name='id' value='" + dr("ID").ToString + "'>"
            End While
            dr.Close()
            conn.Close()
        Else
            Response.Redirect("login.aspx")


        End If



    End Sub



End Class
