<%@ Page Language="VB" AutoEventWireup="false" CodeFile="page.aspx.vb" Inherits="page" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1" />
    <link rel="Shortcut Icon" type="image/x-icon" href="imgs/icon.ico" />
    <title>最新消息 - 新光糖尿病悠遊網</title>
    <link rel='stylesheet' type='text/css' href='page.css' />
    <script type='text/javascript' src='page.js'></script>
    <!--boostrap-->
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <!--jQuery-->
    <script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div id="topbar">
            <!-- Logo image -->
            <a href="home.aspx" alt="#">
                <img src="imgs/logo5.png" id="logo" /></a>
            <!-- Nav bar items icon + title -->
            <div id="list">
                <ul>
                    <li id="item1">
                        <!-- icon -->
                        <span class="glyphicon glyphicon-book" aria-hidden="true"></span>
                        <!-- title ( 1 space before name)-->
                        <a href="#">衛教中心</a>
                    </li>
                    <li id="item2">
                        <span class="glyphicon glyphicon-bookmark" aria-hidden="true"></span>
                        <a href="http://www.skh.org.tw/DEPthymecd/index.html">本科介紹</a>
                    </li>
                    <li id="item3">
                        <span class="glyphicon glyphicon-user" aria-hidden="true"></span>
                        <a href="http://www.skh.org.tw/doctor/dept.aspx?dept=07">醫師一覽</a>
                    </li>
                    <li id="item4">
                        <span class="glyphicon glyphicon-film" aria-hidden="true"></span>
                        <a href="videos.aspx">影片</a>
                    </li>
                    <li id="item5">
                        <span class="glyphicon glyphicon-th-large" aria-hidden="true"></span>
                        <a href="comics.aspx">漫畫</a>
                    </li>
                    <li id="item6">
                        <span class="glyphicon glyphicon-zoom-in" aria-hidden="true"></span>
                        <a href="news.aspx">最新消息</a>
                    </li>
                    <li id="item7">
                        <span class="glyphicon glyphicon-home" aria-hidden="true"></span>
                        <a href="home.aspx">回首頁</a>
                    </li>
                </ul>
                <!-- guide to SKH & login -->
                <div id="guide">
                    <span>
                        <a href="http://www.skh.org.tw/map.htm">到院指南</a>
                    </span>
                    <span id="line">|</span>
                    <span>
                        <a href="login.aspx">登入</a>
                    </span>
                </div>
            </div>
        </div>

        <div id='content'>
            <div id='contentBackground'>
                <div id='session1'>
                    <ul id="hehe">                        
                        <li>近期文章
						<ul>
                            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                        </ul>
                        </li>
                        <li>熱門文章
						<ul>
                            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                        </ul>
                        </li>
                    </ul>
                </div>
                <div id='session2'>
                    <div id='frame'>
                        <div id='date'>
                            <div id='year'>
                                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                            </div>
                            <div id='month'>
                                <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                            </div>
                            <div id='day'>
                                <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                            </div>
                        </div>
                        <div id='title'>
                            <strong>
                                <p>
                                    <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                                </p>
                            </strong>
                        </div>
                    </div>
                    <div id='newscontent'>
                        <pre id="textp" runat="server">
                        </pre>
                    </div>
                    <div id='bottom'>
                        <a href="News.aspx">
                            <div id='back'>上一頁</div>
                        </a>
                    </div>
                    <hr  style="border: 2px #cee4ae dotted;" />
                </div>
                <div id='session3'>
                    <div></div>
                </div>
            </div>
        </div>
        <div id="footer">
            <br />
            <p>新光吳火獅紀念醫院版權所有 Copyright © 2016 All Right Reserved</p>
            <p>地址：台北市士林區111文昌路95號   電話：(02) 28332211</p>
            <a href="http://www.skh.org.tw/">
                <img src="imgs/skhlogo.png" style="width: 25%; height: auto;" /></a>
        </div>
    </form>
</body>
</html>
