<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Search</title>
<style>
.search-button{
	background-color:black;
	color:white;
}
</style>
</head>
<body>
<form action = "../jp.co.aforce.item/searchServlet" method = "post">
	<p align = center>キーワード検索</p>
	<p align = center><input type = "text" name = "keyword"> <p align = center><input type = "submit" name = "search-button" value = "search" class = "search-button">



</form>
<br><p align = center><a href = "sort.jsp">絞り込み</a>
<td><a href= "../views/home.jsp">戻る</a></td>

</body>
</html>