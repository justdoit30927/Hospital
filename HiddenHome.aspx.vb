Imports System
Imports System.Data
Imports System.Data.SqlClient



Partial Class HiddenHome
    Inherits System.Web.UI.Page
    Dim conn As Data.SqlClient.SqlConnection = New Data.SqlClient.SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings("ConnectionString").ConnectionString())
    Private Sub HiddenHome_Load(sender As Object, e As EventArgs) Handles Me.Load
        If (Session("ifLogin") = 1) Then
            'Dim strConn As String = "Data Source=(LocalDB)\MSSQLLocalDB;Initial Catalog=hospital;Integrated Security=True;Pooling=False"
            'Dim conn As SqlConnection = New SqlConnection(strConn)
            conn.Open()
            Dim cmd As SqlCommand = New SqlCommand("select * from News order by CRDT desc", conn)
            Dim dr As SqlDataReader = cmd.ExecuteReader()
            Dim mystring As StringBuilder = New StringBuilder
            mystring.Append("<div id='DIV'>")
            mystring.Append("<table border=1 class='table table-striped table-hover table-bordered'><tr> 				
				            <td>日期</td>
				            <td>標題</td>
				            <td></td>
				            <td></td>
		            	</tr>")

            While dr.Read()
                mystring.Append("<tr>")
                mystring.Append("<td>" + dr("CRDT") + "</td>")
                mystring.Append("<td>" & dr("Title") & "</td>")
                mystring.Append("<td>
                                <form action='modifyInterface.aspx' method='get'>
                                    <input type='hidden' name='id' value=" & dr("ID") & ">
                                    <input type='hidden' name='title' value=" & dr("Title") & ">
                                    <input type='hidden' name='radio1' value=" & dr("Popular") & ">                                    
		                            <input type='submit' value='修改'/>                                    
	                            </form>
                            </td>")
                mystring.Append("<td>
                                <form action='delete.aspx' method='get' onSubmit='return CheckForm();'>
                                    <input type='hidden' name='id' value=" & dr("ID") & ">
		                            <input type='submit' value='移除'/>
                                    
	                            </form>
                            </td>")
                mystring.Append("</tr>")

            End While
            mystring.Append("</table></div>")
            Label1.Text = mystring.ToString
            conn.Close()
        Else
            Response.Redirect("login.aspx")

        End If
    End Sub







End Class
