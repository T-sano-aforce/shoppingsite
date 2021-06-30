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
<title>SCONE</title>
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
</style>
</head>
<body>
<div class = "container">
	<div class="main-img js-main-img">
		<img src = "../img/IMG_9816_2048x2048.jpg" width = "500">
	</div>
	<ul class="sub-img js-sub-img">
		<li><img src = "../img/IMG_9816_2048x2048.jpg" width = "150" align = "left"></li>
    	<li><img src = "../img/IMG_9782_2048x2048.jpg" width = "150" align = "left"></li>
    	<li><img src = "../img/IMG_9827_2048x2048.jpg" width = "150" align = "left"></li>
	</ul>
</div>
<br>
<p><br>商品ID ： A210623153247<br>
商品名 ： かぼちゃのスコーン(4個入り)<br>
価格 ： 1500円<br>
商品説明 ： かぼちゃをサクサクのスコーン生地にたっぷりと練り込み、層になるように仕上げています<br>
オーブンやトースターで2〜3分温めると、香ばしさとかぼちゃの香りが上がり、焼きたての風味を味わって頂けます。<br>
原材料 ： 小麦粉、牛乳、かぼちゃ、バター、きび糖、生クリーム、かぼちゃの種、グラニュー糖、ベーキングパウダー<br>

アレルギー表示 ： 乳成分、小麦<br>

内容量 ： 4個入り</p>
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
<input type = "submit" value = "カートに入れる" class = "button"><input type = "hidden" name="id" value="A210623153247">
</form>
</body>
</html>