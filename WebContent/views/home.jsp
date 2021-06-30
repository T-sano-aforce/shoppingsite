<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>POTIRON</title>
<style>
li{
	list-style:none;
	width:33%;
	float:left;
}

img{
	width:500px;
	display:block;
	margin:auto;
}
p{
	text-align: center;
}
.menu-btn {
    position: fixed;
    top: 10px;
    right: 10px;
    display: flex;
    height: 50px;
    width: 50px;
    justify-content: center;
    align-items: center;
    z-index: 90;
    background-color:#778899;
}
.menu-btn span,
.menu-btn span:before,
.menu-btn span:after {
    content: '';
    display: block;
    height: 3px;
    width: 15px;
    border-radius: 5px;
    background-color: #ffffff;
    position: absolute;
}
.menu-btn span:before {
    bottom: 8px;
}
.menu-btn span:after {
    top: 8px;
}
#menu-btn-check:checked ~ .menu-btn span {
    background-color: rgba(255, 255, 255, 0);/*メニューオープン時は真ん中の線を透明にする*/
}
#menu-btn-check:checked ~ .menu-btn span::before {
    bottom: 0;
    transform: rotate(45deg);
}
#menu-btn-check:checked ~ .menu-btn span::after {
    top: 0;
    transform: rotate(-45deg);
}
#menu-btn-check {
    display: none;
}
.menu-content {
    width: 100%;
    height: 100%;
    position: fixed;
    top: 0;
    left: 0;
    z-index: 80;
    background-color: #778899;
}
.menu-content ul {
    padding: 70px 10px 0;
}
.menu-content ul li {
    border-bottom: solid 1px #ffffff;
    list-style: none;
}
.menu-content ul li a {
    display: block;
    width: 100%;
    font-size: 15px;
    box-sizing: border-box;
    color:#ffffff;
    text-decoration: none;
    padding: 9px 15px 10px 0;
    position: relative;
}
.menu-content ul li a::before {
    content: "";
    width: 7px;
    height: 7px;
    border-top: solid 2px #ffffff;
    border-right: solid 2px #ffffff;
    transform: rotate(45deg);
    position: absolute;
    right: 11px;
    top: 16px;
}
.menu-content {
    width: 100%;
    height: 50%;
    position: fixed;
    top: 0;
    left: 100%;/*leftの値を変更してメニューを画面外へ*/
    z-index: 80;
    background-color: #778899;
    transition: all 0.5s;/*アニメーション設定*/
}
#menu-btn-check:checked ~ .menu-content {
    left: 0;/*メニューを画面内へ*/
}
.message{
	box-shadow:0 0 10px 0 #ccc;
}
ul,li,p{
	font-family:serif;
}

div{
	text-align:center;
	margin-top:50px;
	animation-name:fade;
	animation-duration:5s;
	animation-iteration-count:2;
}
@keyframes fade{
	0%{
	opacity:0;
	}
	100%{
	opacity:1;
	}
}

</style>
</head>
<body>
<h1>POTIRON</h1>
<ul>
	<li><a href = "home.jsp">HOME</a></li>
	<li><a href = "login.jsp">ONLINE SHOPPING</a></li>
	<li><a href = "login.jsp">SHOP</a></li>
</ul>
<div class="hamburger-menu">
        <input type="checkbox" id="menu-btn-check">
        <label for="menu-btn-check" class="menu-btn"><span></span></label>
        <div class="menu-content">
            <ul>
                <li>
                    <a href="../views/login.jsp">login</a>
                </li>
                <li>
                    <a href="../jp.co.aforce.servlet/logoutServlet">logout</a>
                </li>
                <li>
                    <a href="../views/login.jsp">search</a>
                </li>
            </ul>
        </div>
</div>

<div class = "pumpkin"><img src = "../img/636a4e9f92ba92e65a67f7e7adc8b95f_1462550118.jpg" alt = ""></div>
<div class = "message">
<p>こちらはかぼちゃギフト専門店のお取り寄せサイトです。<br>大切な人への贈り物にいかがですか？</p>
</div>
</body>
</html>