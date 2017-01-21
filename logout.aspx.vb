
Partial Class logout
    Inherits System.Web.UI.Page

    Private Sub logout_Load(sender As Object, e As EventArgs) Handles Me.Load
        Session("ifLogin") = 0
        Response.Redirect("login.aspx")
    End Sub
End Class
