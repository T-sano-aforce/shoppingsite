<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="jp.co.aforce.beans.ItemBean"%>
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
    if (confirm('削除しますか？')) {
        alert('OK');
    }
    // 「キャンセル」ボタン押下時
    else {
        alert('キャンセル');
    }
}
</script>
<title>商品削除</title>
</head>
<body>
<div class="form" align="center">

		<span class="emsg">${itemBean.emsg}</span> <span class="commsg">${itemBean.commsg}</span>

		<div class="signin cf" align="center">
			<div class="formtitle">商品削除</div>

			<form action="../jp.co.aforce.item/deleteServlet" method="post">
				<p>
					商品ID
					<input type="text" name="id"
						value="${itemBean.id}">
					<input type="submit" name="buttonName" class = "button" value="表示" />
				</p>

				<table border="1">
					<tbody>
						<tr>
							<td>商品名</td>
							<td><input type="text" name="itemName" value="${itemBean.itemName}" disabled></td>
						</tr>
						<tr>
							<td>価格</td>
							<td><input type="text" name="price" value="${itemBean.price}" disabled></td>
						</tr>
						<tr>
							<td>商品画像</td>
							<td><input type = "text" name = "img" value = "${itemBean.img}" disabled></td>
						</tr>
					</tbody>
				</table>
				<p align="center"><input type = "submit" class = "button" name = "buttonName" value = "戻る" />
				<input type = "submit" name = "buttonName" class = "button" value = "削除" id = "delete" onclick="return confirm('削除しますか?');"/></p>

			</form>
		</div>
	</div>
</body>
</html>