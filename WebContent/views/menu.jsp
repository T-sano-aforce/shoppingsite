<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
.button{
	color:#fff;
	background:black;
	width:150px;
}
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
.button1{
	background-color:#778899;
	color:white;
}

</style>
<title>MENU</title>
</head>
<body>

<div class="hamburger-menu">
        <input type="checkbox" id="menu-btn-check">
        <label for="menu-btn-check" class="menu-btn"><span></span></label>
        <div class="menu-content">
            <ul>
                <li>
                    <a href="../views/logout.jsp">logout</a>
                </li>
                <li>
                	<form action = "../jp.co.aforce.item/all" method = "post">
                	<input type = "submit" value = "itemList" class = "button1">
                </form>
                </li>
            </ul>
        </div>
</div>
<form action = "../jp.co.aforce.item/menuServlet" method = "post">
	<div class="signin cf" align="center">
			<div class="formtitle">管理者 MENU</div>

			<p>
				<input type="submit" name="buttonName" value="商品登録" id="regist" class = "button" />
			</p>
			<p>
				<input type="submit" name="buttonName" value="商品削除" id="delete" class = "button" />
			</p>
			<p>
				<input type="submit" name="buttonName" value="商品変更" id="update" class = "button" />
			</p>

		</div>



</form>
</body>
</html>