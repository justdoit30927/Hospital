<%@ Page Language="VB" AutoEventWireup="true" CodeFile="login.aspx.vb" Inherits="login" %>

    <!DOCTYPE html>

    <html xmlns="http://www.w3.org/1999/xhtml">

    <head runat="server">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <link rel="Shortcut Icon" type="image/x-icon" href="imgs/icon.ico" />
        <title>管理員登入 - 新光糖尿病悠遊網</title>
        <link rel="stylesheet" href="login.css" />
        <link href="Content/bootstrap.css" rel="stylesheet" />
        <link href="Content/bootstrap.min.css" rel="stylesheet" />
    </head>

    <body>
        <form id="form1" runat="server">
            <div id="box" class="panel panel-default">
                <div class="panel panel-heading">
                    <asp:Label ID="Label1" runat="server" Text="管理員登入" CssClass="h3"></asp:Label>
                </div>
                <div class="panel panel-body">
                    <div>
                    <asp:Label ID="Label2" runat="server" Text="帳號"></asp:Label>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="未輸入帳號" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
                    </div>
                    <br/>
                    <div>
                    <asp:Label ID="Label3" runat="server" Text="密碼"></asp:Label>
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="未輸入密碼" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
                    </div>
                    <hr />
                    <div>
                        <asp:Button ID="Button1" CssClass="btn btn-default" runat="server" Text="登入" CommandArgument="test" />
                        <asp:Button ID="Button2" CssClass="btn btn-default" runat="server" Text="回網頁" PostBackUrl="~/home.aspx" CausesValidation="False" />
                    </div>
                </div>
            </div>
        </form>
    </body>

    </html>
