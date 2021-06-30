<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script>
$(function () {
	  $(".js-sub-img img").on("click", function () {
	    img = $(this).attr("src");
	    $(".js-main-img img").fadeOut(100, function () {
	      $(".js-main-img img")
	        .attr("src", img)
	        .on("load", function () {
	          $(this).fadeIn(100);
	        });
	    });
	  });
	});
</script>
<meta charset="UTF-8">
<title>CAKE</title>
<style>
.button{
	color:white;
	background:black;
}
.container{
	text-align:center;
	margin:auto;
}
p{
	text-align:center;
}
ul,li{
	text-align:center;
}
</style>
</head>
<body>
<div class = "container">
	<div class="main-img js-main-img">
		<img src = "../img/zucca2.jpg" width = "500">
	</div>
	<ul class="sub-img js-sub-img">
		<li><img src =  "../img/zucca2.jpg" width = "150" align = "left"></li>
    	<li><img src = "../img/IMG_0471_small.jpg" width = "150" align = "left"></li>
    	<li><img src = "../img/IMG_0473_small.jpg" width = "150" align = "left"></li>
	</ul>
</div>
<br>
<p><br>商品ID ： A210623222741<br>
商品名 ： かぼちゃのケーキ<br>
価格 ： 1100円<br>
商品説明 ： 一年に一度選び抜いた栗マロンかぼちゃをペーストにしたものをたっぷり使いました。<br>
栗マロンかぼちゃならではのくせになる甘さと濃厚なコクをお伝えしたいので極力本来の甘みを大事にし、お砂糖は控えめに作っています。<br>
食べ方 ： 冷蔵庫にて約3時間解凍後お召し上がり下さい。約1時間半の半解凍でもアイスケーキのように美味しく召し上がって頂けます<br>
原材料 ： クリームチーズ、かぼちゃ(栗マロン)、生クリーム、サワークリーム、きび砂糖、小麦粉、ヨーグルト、バター、グラニュー糖、卵、塩<br>
アレルギー表示 ： 卵、乳成分、小麦<br>
内容量 ： 1本 約50g、ホールサイズ 約250g<br></p>
<form action = "../CartAdd.action" method = "post">
<p>個数
<select name = "count">
<option value ="1">1</option>
<option value ="2">2</option>
<option value ="3">3</option>
<option value ="1">4</option>
<option value ="5">5</option>
<option value ="6">6</option>
<option value ="7">7</option>
<option value ="8">8</option>
<option value ="9">9</option>
<option value ="10">10</option>
</select>
<p align = center><input type = "button" value = "戻る" class = "button" onclick="location.href='../views/itemList.jsp'">
<input type = "submit" value = "カートに入れる" class = "button" ><input type = "hidden" name="id" value="A210623222741">
</form>
</body>
</html>