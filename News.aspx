<%@ Page Language="C#" AutoEventWireup="true" CodeFile="News.aspx.cs" Inherits="News" %>


<!DOCTYPE html>

<html>
<head runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1" />
    <link rel="Shortcut Icon" type="image/x-icon" href="imgs/icon.ico" />
    <title>最新消息 - 新光糖尿病悠遊網</title>
    <meta name="keyword" content="糖尿病衛教">
    <link rel="stylesheet" type="text/css" href="News.css" />
    <script type='text/javascript' src='News.js'></script>
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
        <!-- Load top bar -->
        <div id="topbar">
            <!-- Logo image -->
            <a href="home.aspx">
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
        <div id="content">
            <!-- left bar -->
            <div id="leftBar">
                <div id="list2">
                    <div id="listtitle"><span class="glyphicon glyphicon-zoom-in" aria-hidden="true"></span>最新消息 </div>
                    <a href="news.aspx">
                        <div class="listitem" id="listitem1"><span class="glyphicon glyphicon-search" aria-hidden="true"></span>最新消息</div>
                    </a>
                </div>
            </div>
            <!-- News table -->
            <div id="newsblock" class="well well-lg">
                <!-- table head -->
                <div id="newstitle">
                    <h1><span class="glyphicon glyphicon-search" aria-hidden="true"></span>最新消息</h1>
                </div>
                <table id="table1" class="table table-striped table-hover">
                    <!--colgroup>
                        <col class="col-s-1" />
                        <col class="col-s-7" />
                    </colgroup-->
                    <!-- titles -->
                    <thead>
                        <tr>
                            
                            <!--th>#</th-->
                            <th>標題</th>
                            <th>日期</th>
                            <th></th>
                        </tr>
                    </thead>
                    <!-- rows display -->
                    <tbody>
                        <!-- 此form排除第一欄會出現的bug() -->
                        <form></form>
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                    </tbody>
                </table>
                <!-- pagination buttons -->
                <!--div id="pagination">
                    <nav aria-label="Page navigation">
                        <ul class="pagination">
                            <li><a href="#">1</a></li>
                            <li><a href="#">2</a></li>
                        </ul>
                    </nav>
                </div-->
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
