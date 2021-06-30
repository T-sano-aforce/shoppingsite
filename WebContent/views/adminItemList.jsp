<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
img{
	width:300px;
}

</style>
</head>
<body>
<table>
  <tr>
    <th>id</th>
    <th>img</th>
    <th>itemName</th>
    <th>price</th>
  </tr>
<c:forEach var="product" items="${list}">
  <tr>
    <td>${product.id}</td>
    <td><img src = "../img/${product.img}"></td>
    <td>${product.itemName}</td>
    <td>${product.price}</td>
  </tr>
</c:forEach>

</table>
<br/>
<form action = "" method = "post">
	<input type = "submit" value = "戻る" name = "button" formaction = "../views/menu.jsp">
</form>

</body>
</html>