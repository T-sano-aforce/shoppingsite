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
<title>COOKY</title>
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
.sub-img js-sub-img{
	text-align:center;
	margin:auto;
}
</style>
</head>
<body>
<div class = "container">
	<div class="main-img js-main-img">
		<img src = "../img/image_89121d3e-c1cf-4465-8bd4-7d16f4062e58_2048x2048.jpg" width = "500">
	</div>
	<ul class="sub-img js-sub-img">
		<li><img src = "../img/image_89121d3e-c1cf-4465-8bd4-7d16f4062e58_2048x2048.jpg" width = "150" align = "left"></li>
    	<li><img src = "../img/image_95a53541-3f3c-4280-ae3d-792324523491_2048x2048.jpg" width = "150" align = "left"></li>
    	<li><img src = "../img/1_2048x2048.jpg" width = "150" align = "left"></li>
    	<li><img src = "../img/2_03aaebf7-c600-4a5d-8204-c11594019218_2048x2048.jpg" width = "150" align = "left"></li>
	</ul>
</div>
<br>
<br><p>商品ID ： A210623153423<br>
商品名 ： かぼちゃのクッキー缶<br>
値段 ： 1300円<br>
商品説明 ： 1、定番のかぼちゃバタークッキー<br>

2、ブールドネージュ<br>

3、全粒粉<br>

4、カカオクッキー<br>

5、抹茶クッキー<br>

6、チャイクッキー<br>

原料 ： 【かぼちゃ】小麦粉、バター、粉糖、かぼちゃ、 卵、食塩【全粒粉】小麦粉、バター、砂糖、全粒粉、食塩 【ココア】小麦粉、バター、砂糖、アーモンドスライス、 ココア、卵白、食塩【ブールドネージュ】小麦粉、バター、 アーモンドプードル、砂糖、くるみ、塩【抹茶】小麦粉、 バター、砂糖、卵白、抹茶、塩【チャイ】小麦粉、バター、 砂糖、卵白、塩、紅茶、シナモン、カルダモン<br>

アレルギー表示 ： 乳成分、卵、小麦、アーモンド、くるみ<br>

内容量 : 1本約250g
</p>
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
<input type = "submit" value = "カートに入れる" class = "button"  ><input type = "hidden" name="id" value="A210623153423">
</form>
</body>
</html>