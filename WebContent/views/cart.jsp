<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.button{
	background-color:black;
	color:white;

}
</style>

</head>
<body>
<c:choose>
	<c:when test = "${ cart.size()>0 }">
		<p>${cart.size()}種類の商品があります。</p>
		<hr>
	</c:when>
	<c:otherwise>
		<p>カートに商品がありません</p>
	</c:otherwise>
</c:choose>

<div class = "btn">
<table style = "border-collapse;separate;border-spacing:10px;">
<c:forEach var = "item" items = "${ cart }">
	<tr>
	<td>商品ID${ item.product.id }</td>
	<td><img src = "img/${ item.product.img }" height = "96"></td>
	<td>${ item.product.itemName }</td>
	<td><div class = "price">${ item.product.price }円</div></td>
	<td><div class = "count">${ item.count }個</div></td>
	<td>小計<p class = "subTotal" >${item.product.price * item.count}円</p></td>



	<td><a href= "CartRemove.action?id=${ item.product.id }">カートから削除</a></td>
	</tr>
</c:forEach>

</table>

</div>
<p align = "center">合計</p>
	<p align = "center" id = "total"></p><p align = "center">円</p>

<a href = "views/itemList.jsp">買い物を続ける</a>
<a href= "Preview.action">注文する</a>

<script>
let subTotal = document.getElementsByClassName("subTotal");
let total =  0;

for (let i = 0; i < subTotal.length; i++){
	console.log(subTotal[i].textContent);
	total = total + parseInt(subTotal[i].textContent);
}
total = total * 1.08;

document.getElementById("total").textContent=total;
</script>
</body>
</html>