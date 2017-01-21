<%@ Page Language="C#" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="home" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1" />
    <link rel="Shortcut Icon" type="image/x-icon" href="imgs/icon.ico" />
    <title>新光糖尿病悠遊網</title>
    <link rel="stylesheet" type="text/css" href="home.css">
    <!--boostrap-->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <!--jQuery-->
    <script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
    <script type="text/javascript" src=""></script>
</head>
<body>
    <form id="form1" runat="server">
        <!-- Load top bar -->
        <!--iframe src="top.aspx" width="100%" height="90px" frameborder="0" scrolling="no"></iframe-->
        <div id="topbar">
            <!-- Logo image -->
            <a href="home.aspx">
                <img src="imgs/logo5.png" id="logo"></a>
            <!--div id="pagename">
			<a href="home.aspx" alt="">新 光 糖 尿 病 悠 遊 網 </a>
		</div-->
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
            <!--讓幻燈片在最下層顯示-->
            <div id="homepage">
                <div>
                    <br>
                    <div id="myCarousel" class="carousel slide thumbnail" data-ride="carousel">
                        <!-- Indicators 指標 -->
                        <!--ol class="carousel-indicators">
                        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                        <li data-target="#myCarousel" data-slide-to="1"></li>
                        <li data-target="#myCarousel" data-slide-to="2"></li>
                        <li data-target="#myCarousel" data-slide-to="3"></li>
                    </ol-->
                        <!-- Wrapper for slides 幻燈片包裝 -->
                        <div class="carousel-inner" role="listbox">
                            <div class="item active">
                                <img src="https://ebonwallacetalifarro.files.wordpress.com/2014/06/cropped-ebon-wallace-talifarro-banner-1.jpg" alt="" width="" height="">
                            </div>
                            <div class="item">
                                <img src="https://urgentcarementor.com/wp-content/uploads/2014/05/ANNUAL-MEDICAL-EXAMINATION-PCP-OR-MEDICAL-EXAMINER.jpg" alt="" width="" height="">
                            </div>
                            <div class="item">
                                <img src="http://www.cro-medical.de/wp-content/uploads/2015/11/iStock_000028486768_header.jpg" alt="" width="" height="">
                            </div>
                            <div class="item">
                                <img src="http://www.g8medical.co.uk/wp-content/uploads/2014/10/services.png" alt="" width="" height="">
                            </div>
                        </div>
                        <!-- Left and right controls 左右控制 -->
                        <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                            <span class="sr-only">Previous</span>
                        </a>
                        <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                            <span class="sr-only">Next</span>
                        </a>
                    </div>
                    <!--iframe src="carousel.html" name="a" style="width: 90%; height: 100%; overflow: visible;"></iframe>
                <img src="picture0.jpg" id="changeableImage"-->
                </div>
                <!--div id="theme">
                    <form action="#" method="get">
                        <button class="usefulSection" formtarget="_blank"><span class="glyphicon glyphicon-book" aria-hidden="true"></span>衛教中心</button>
                    </form>
                    <form action="videos.aspx" method="get">
                        <button class="usefulSection" formtarget="_blank"><span class="glyphicon glyphicon-film" aria-hidden="true"></span>影片</button>
                    </form>
                    <form action="comics.aspx" method="get">
                        <button class="usefulSection" formtarget="_blank"><span class="glyphicon glyphicon-th-large" aria-hidden="true"></span>漫畫</button>
                    </form>
                    <form action="https://regis.skh.org.tw/regisn/" method="get">
                        <button class="usefulSection" formtarget="_blank"><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>門診掛號</button>
                    </form>
                    <form action="news.aspx" method="get">
                        <button class="usefulSection" formtarget="_blank"><span class="glyphicon glyphicon-zoom-in" aria-hidden="true"></span>最新消息</button>
                    </form>
                </div-->
                <!-- News blocks -->
                
                <div class=" news_box">
                        <table id="table1" class="table table-striped table-hover">
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
                    </div>
            </div>
        </div>
        <div id="footer">
            <br>
            <p>新光吳火獅紀念醫院版權所有 Copyright © 2016 All Right Reserved</p>
            <p>地址：台北市士林區111文昌路95號   電話：(02) 28332211</p>
            <a href="http://www.skh.org.tw/">
                <img src="imgs/skhlogo.png" style="width: 25%; height: auto;"></a>
        </div>
    </form>
</body>
</html>
