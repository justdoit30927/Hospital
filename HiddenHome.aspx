<%@ Page Language="VB" AutoEventWireup="false" CodeFile="HiddenHome.aspx.vb" Inherits="HiddenHome" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1" />
    <link rel="Shortcut Icon" type="image/x-icon" href="imgs/icon.ico" />
    <title>文章列表 - 新光糖尿病悠遊網</title>
    <link rel="stylesheet" type="text/css" href="HiddenHome.css" />
    <!--boostrap-->
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <!--jQuery-->
    <script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
</head>
<body>
    <!--提交確認-->
    <script>
        function CheckForm(){
            if (confirm("確認要移除嗎？移除後將無法復原") == true) {
                return true;
            } else {
                return false;
            }
        }
    </script>
    <form id="form1" runat="server">
        <div id="function">
            <asp:Button ID="Button1" CssClass="btn btn-default mybtn" runat="server" Text="登出" PostBackUrl="~/logout.aspx" />
            <asp:Button ID="Button4" CssClass="btn btn-default mybtn" runat="server" Text="回網頁" PostBackUrl="~/home.aspx" />
            <asp:Button ID="Button2" CssClass="btn btn-default mybtn" runat="server" Text="新增文章" PostBackUrl="~/increaseInterface.aspx" />
            <asp:Button ID="Button3" CssClass="btn btn-default mybtn" runat="server" Text="上傳影片" PostBackUrl="~/video_upload.aspx" />
            <asp:Button ID="Button5" CssClass="btn btn-default mybtn" runat="server" Text="影片列表" PostBackUrl="~/edit_videos.aspx" />
            <asp:Button ID="Button6" CssClass="btn btn-default mybtn" runat="server" Text="上傳漫畫" PostBackUrl="~/comic_upload.aspx" />
            <asp:Button ID="Button7" CssClass="btn btn-default mybtn" runat="server" Text="漫畫列表" PostBackUrl="~/edit_comics.aspx" />
        </div>
        <form></form>
        <div>
            <div class="title"><h4>文章列表</h4></div>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </div>
    </form>
</body>
</html>
