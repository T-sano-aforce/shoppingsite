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
.map{
	text-align:center;
}
.info{
	box-shadow:0 0 10px 0 #ccc;
}
body{
	background-image:url(../img/144750519.jpg);
	background-repeat:no-repeat;
	background-position:right bottom;
	background-size:20% auto;
}

</style>
</head>
<body>
<h1>SHOP</h1>
<ul>
	<li><a href = "home.jsp">HOME</a></li>
	<li><a href = "itemList.jsp">ONLINE SHOPPING</a></li>
	<li><a href = "shop.jsp">SHOP</a></li>
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
                    <a href="../views/logout.jsp">logout</a>
                </li>
                <li>
                    <a href="../views/search.jsp">search</a>
                </li>
            </ul>
        </div>
</div>
<div class = "map">
	<iframe  src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3242.4346356580763!2d139.66927049999998!3d35.641661799999994!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6018f498c6d4b2bb%3A0x159f7b125d57d0df!2z44CSMTU0LTAwMjQg5p2x5Lqs6YO95LiW55Sw6LC35Yy65LiJ6LuS6Iy25bGL77yS5LiB55uu77yR77yR!5e0!3m2!1sja!2sjp!4v1623725285641!5m2!1sja!2sjp" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
</div>
	<div class = "info">
		<p>店名：POTIRON</p>
		<p>住所：東京都世田谷区三軒茶屋２丁目１１</p>
		<p>アクセス：三軒茶屋駅より徒歩５分</p>
		<p>お問い合わせはこちらまで<br>090-3866-4738</p>
	</div>
</body>
</html>