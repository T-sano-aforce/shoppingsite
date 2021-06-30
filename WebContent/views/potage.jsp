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
<title>POTAGE</title>
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
		<img src = "../img/IMG_0552_2048x2048.jpg" width = "500">
	</div>
	<ul class="sub-img js-sub-img">
		<li><img src = "../img/IMG_0552_2048x2048.jpg" width = "150" align = "left"></li>
    	<li><img src = "../img/Img0056_2048x2048.jpg" width = "150" align = "left"></li>
    	<li><img src = "../img/IMG_1713_2048x2048.jpg" width = "150" align = "left"></li>
    	<li><img src = "../img/IMG_5568_2048x2048.jpg" width = "150" align = "left"></li>
	</ul>
</div>
<br>
<br>
<p>商品ID : A210623153341 商品名 ： かぼちゃのポタージュ(3袋入り)<br>
値段 ： 1400円<br>
商品説明 ： 手作り、無添加。純粋に栗マロンかぼちゃの美味しさを味わってもらう為のスープ<br>
原材料 ： かぼちゃ、牛乳、昆布出汁、バター、塩<br>
アレルギー表示 ： 乳成分<br>
内容量 ： 1袋 約170g<br>
食べ方 ： 沸騰したお湯に内袋を入れ約4分しっかりと温め、お皿に移し替えてお召し上がり下さい。内袋を電子レンジで加熱してのお召し上がりも可能です。<br></p>
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
<input type = "submit" value = "カートに入れる" class = "button" ><input type = "hidden" name="id" value="A210623153341">
</form>
</body>
</html>