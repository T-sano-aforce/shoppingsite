<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login form</title>
<style>
table{
	margin-left:auto;
	margin-right:auto;
	margin-top:200px;

}

.button{
	color:#ffffff;
	background:black;
	margin-left:auto;
	margin-right:auto;
	width:150px;
}
form{
	box-shadow:0 0 30px 0 #ccc;
}
h2{
	text-align:center;
}
p{
	font-family:serif;
	color:red;
}

</style>
</head>
<body>
<h2 align = "center">LOGIN FORM</h2>
	<p>${login.msg}</p>
	<p align = "center">＊ログインが必要です<p>


	<form action = "../jp.co.aforce.servlet/loginServlet" method = "post">
		<table align = "center">
			<tr>
				<td><input type = "text" name = "id" value = "${login.id}" placeholder = "id" style = "width:300px; height:30px"></td>
			</tr>
			<tr>
				<td><input type = "password" name = "password" value = "${login.password}" placeholder = "password" style = "width:300px; height:30px"></td>
			</tr>
		</table>
		<p align="center"><input type = "submit" value = "login" class = "button" style = "width:300px; height:30px"></p>
	</form>


</body>
</html>