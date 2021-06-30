<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<form action = "../jp.co.aforce.item/searchServlet" method = "post">
	<input type = "text" name = "keyword"> <input type = "submit" name = "search-button" value = "search" class = "button">
</form>

<table style = "border-collapse:separate;border-spacing:10px;">
	<tr>
		<td>${list[0].id}</td>
		<td><img src = "../img/${list[0].img}" height = "100" width = "150"></td>
		<td>${list[0].itemName}</td>
		<td>${list[0].price}円</td>
		<td><a href= "../views/search.jsp">戻る</a></td>
	</tr>



</table>
</body>
</html>