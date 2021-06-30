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
<title>GRATIN</title>
<style>
.button{
	color:white;
	background:black;
}
img {
  max-width: 100%;
  height: auto;
}
.container{
	text-align:center;
	margin:auto;
}
p{
	text-align:center;
}
</style>
</head>
<body>
<div class = "container">
	<div class="main-img js-main-img">
		<img src = "../img/7583895520_IMG_7980_2048x2048.jpg" width = "500">
	</div>
	<ul class="sub-img js-sub-img">
		<li><img src = "../img/7583895520_IMG_7980_2048x2048.jpg" width = "150" align = "left"></li>
    	<li><img src = "../img/19_2048x2048.jpg" width = "150" align = "left"></li>
    	<li><img src = "../img/24277e51448fbe068bd0.jpg" width = "150" align = "left"></li>
	</ul>
</div>

<br>

<br><p>商品ID ： A210623153540 <br>
商品名 ： かぼちゃのグラタン<br>
価格 ： 1200円<br>
商品説明 ： 栗マロンかぼちゃをたっぷり使ったベシャメルソースとマカロニを合わせ、更に栗マロンかぼちゃをたっぷり乗せました。<br>
商品はお一つで1.5人前になります。<br>
食べ方 ： 冷凍のままオーブンで25～30分、焼き目がつくくらいまで焼いてお召し上がりください。焦げそうな場合は表面をアルミホイルで覆ってください<br>
原材料 ： 牛乳、かぼちゃ(栗マロンかぼちゃ)、鶏肉、マカロニ、小麦粉、バター、玉ねぎ、チーズ、昆布エキス、塩、胡椒、香辛料<br>

アレルギー表示 ： 乳成分、小麦、鶏肉<br>

内容量 ： 1個<br></p>
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
<input type = "submit" value = "カートに入れる" class = "button"><input type = "hidden" name="id" value="A210623153540">
</form>
</body>
</html>