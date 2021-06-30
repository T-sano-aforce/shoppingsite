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
<title>BROWNIE</title>
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
		<img src = "../img/wpid-20180201070918.jpg" width = "500">
	</div>
	<ul class="sub-img js-sub-img">
		<li><img src = "../img/wpid-20180201070918.jpg" width = "150" align = "left"></li>
		<li><img src = "../img/12_2048x2048.jpg" width = "150" align = "left"></li>
    	<li><img src = "../img/25_2048x2048.jpg" width = "150" align = "left"></li>
	</ul>
</div>
<br>
<p><br>商品ID : A210623153501<br>
商品名 ： かぼちゃのブラウニー(8本セット)<br>
価格 ： 1000円<br>
商品説明 ： フランス産クーベルチュールに栗マロンかぼちゃのチーズケーキを合わせて、マーブルに仕上げました。<br>
食べ方 ： 冷蔵庫にて約3時間解凍後お召し上がり下さい。<br>
約1時間半の半解凍でもアイスケーキのように美味しく召し上がって頂けます。<br>
材料 ： 生クリーム、チョコレート(大豆含む)、卵、かぼちゃ、無塩バター、上白糖、小麦粉、クリームチーズ、ココアパウダー、きび砂糖、蜂蜜、ベーキングパウダー<br>

アレルギー表示 ： 乳成分、卵、小麦、大豆 ＊蜂蜜を使用しております<br>

内容量 ： 1個 約50g 、ホールサイズ 1本約280g<br></p>
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
<input type = "submit" value = "カートに入れる" class = "button" ><input type = "hidden" name="id" value="A210623153501">
</form>
</body>
</html>