<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>POTIRON</title>
<style>
img{
	width:400px;
	height:300px;
	margin:auto;
}
.pic_frame {
      display: inline-block;
      text-align: center;
    }

table {
      text-align: center;
    }
li{
	list-style:none;
	width:33%;
	float:left;
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
</style>
</head>
<body>
<h1>ITEM</h1>

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
<div class="pic_frame">
	<img src = "../img/IMG_0552_2048x2048.jpg">
	<p>商品ID：A210623153341<br>かぼちゃのポタージュ<br>1400円</p><a href = "../views/potage.jsp">商品詳細へ</a>
</div>
<div class="pic_frame">
	<img src = "../img/OIP.jpg">
	<p>商品ID：A210623153423<br>かぼちゃのクッキー缶<br>1300円</p><a href = "../views/cooky.jsp">商品詳細へ</a>
</div>
<div class="pic_frame">
	<img src = "../img/P5318294-1024x683.jpg">
	<p>商品ID：A210623153247<br>かぼちゃのスコーン<br>1500円</p><a href = "../views/scone.jsp">商品詳細へ</a>
</div>
<div class="pic_frame">
    <img src="../img/wpid-20180201070918.jpg">
    <p>商品ID：A210623153501<br>かぼちゃのブラウニー<br>1000円</p><a href = "../views/brownie.jsp">商品詳細へ</a>
  </div>
  <div class="pic_frame">
    <img src="../img/zucca2.jpg">
    <p>商品ID：A210623222741<br>かぼちゃのケーキ<br>1100円</p> <a href = "../views/cake.jsp">商品詳細へ</a>
  </div>
  <div class="pic_frame">
    <img src="../img/24277e51448fbe068bd0.jpg">
    <p>商品ID：A210623153540<br>かぼちゃのグラタン<br>1200円</p> <a href = "../views/gratin.jsp">商品詳細へ</a>
  </div>




</body>
</html>