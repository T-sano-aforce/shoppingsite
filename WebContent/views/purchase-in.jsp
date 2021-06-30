<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript">
function submitbtn() {
    // 「OK」ボタン押下時
    if (confirm('購入しますか？')) {
        alert('OK');
    }
    // 「キャンセル」ボタン押下時
    else {
        alert('キャンセル');
    }
}
</script>
<title>Insert title here</title>
<style>
.button{
	background-color:black;
	color:white;
}
</style>
</head>
<body>
<p>${cart.size()}種類の商品があります。</p>
<hr>

<table style = "border-collapse:separate;border-spacing:10px;">
<c:forEach var = "item" items = "${cart}">
	<tr>
	<td>商品${item.product.id}</td>
	<td><img src = "img/${item.product.img}" height = "96"></td>
	<td>${item.product.itemName}</td>
	<td>${item.product.price}円</td>
	<td>${item.count}個</td>

	</tr>
</c:forEach>
</table>
<hr>

<form action = "Purchase.action" method = "post">
<p>お名前<input type = "text" name = "username" value = "${login.username}"></p>
<p>ご住所<input type = "text" name = "address" value = "${login.address}"></p>
<p><input type = "submit" value = "戻る" class = "button" > <input type = "submit" value = "購入する" class = "button" onclick="return confirm('購入しますか?');"></p>
</form>

</body>
</html>