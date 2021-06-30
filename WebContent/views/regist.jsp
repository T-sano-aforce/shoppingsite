<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
.button{
	background:black;
	color:#fff
}
</style>
<script type="text/javascript">
function submitbtn() {
    // 「OK」ボタン押下時
    if (confirm('登録しますか？')) {
        alert('OK');
    }
    // 「キャンセル」ボタン押下時
    else {
        alert('キャンセル');
    }
}
</script>
<title>商品登録</title>
</head>
<body>
<div class="form" align="center">

		<span class="emsg">${itemBean.emsg}</span> <span class="commsg">${itemBean.commsg}</span>

		<div class="signin cf" align="center">
			<div class="formtitle">商品登録</div>

			<form action="../jp.co.aforce.item/registServlet" method="post">

				<table border="1">
					<tbody>
						<tr>
							<td>商品名</td>
							<td><input type="text" name="itemName"></td>
						</tr>
						<tr>
							<td>価格</td>
							<td><input type="text" name="price"></td>
						</tr>
						<tr>
							<td>商品画像</td>
							<td><input type = "text" name = "img"></td>
						</tr>
					</tbody>
				</table>
				<p align="center"><input type = "submit" class = "button" name = "buttonName" value = "戻る" />
				<input type = "submit" name = "buttonName" class = "button" value = "登録" id = "regist" onclick="return confirm('登録しますか?');"/></p>

			</form>
		</div>
	</div>
</body>
</html>