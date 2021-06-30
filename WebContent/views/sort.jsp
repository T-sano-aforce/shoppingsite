<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.sorttbl{
    border-collapse: collapse;
    border-spacing: 0;
    width: 100%;
    display: table;
}
.sorttbl tr {
    display: table-row;
    vertical-align: inherit;
    border-color: inherit;
    border-bottom: 1px solid #ddd;
    cursor: pointer;
}

.sorttbl th:first-child,
.sorttbl td:first-child{
    padding-left: 16px;
}
.sorttbl td,
.sorttbl th{
    padding: 8px 8px;
    display: table-cell;
    text-align: left;
    vertical-align: top;
}
.sorttbl th{
    color: #fff!important;
    background-color: #616161!important;
}

/*--- list css ---*/

.sort-btn{
    border: none;
    display: inline-block;
    padding: 8px 16px;
    vertical-align: middle;
    overflow: hidden;
    text-decoration: none;
    color: #FFFFFF;
    background-color: #4CAF50;
    text-align: center;
    cursor: pointer;
    white-space: nowrap;
}

ul.sortlist{
    list-style-type: none;
}
ul.sortlist li{
    padding: 7px;
    border-bottom: dotted 1px #454545;
}
</style>
</head>
<body>
<table class="sorttbl" id="myTable">
  <tr>
  	<th>product<i class="fa fa-sort"></i></th>
    <th onclick="w3.sortHTML('#myTable','.item', 'td:nth-child(2)')">商品名▼<i class="fa fa-sort"></i></th>
    <th onclick="w3.sortHTML('#myTable','.item', 'td:nth-child(3)')">価格▼<i class="fa fa-sort"></i></th>
  </tr>
  <tr class="item">
    <td><img src = "../img/IMG_0552_2048x2048.jpg" alt = "product1" class = "product" width = "300"></td>
    <td>かぼちゃのポタージュ<br>
    </td>
    <td>1400</td>
  </tr>
  <tr class="item">
    <td><img src = "../img/OIP.jpg" alt = "product2" class = "product" width = "300"></td>
    <td>かぼちゃのクッキー缶<br>
    </td>
    <td>1300</td>
    </tr>
  <tr class="item">
    <td><img src = "../img/P5318294-1024x683.jpg" alt = "product3" class = "product" width = "300"></td>
    <td>かぼちゃのスコーン<br>
    </td>
    <td>1500</td>
  </tr>
  <tr class="item">
    <td><img src="../img/wpid-20180201070918.jpg" alt = "product4" class = "product" width = "300"></td>
    <td>かぼちゃのブラウニー<br>
    </td>
    <td>1000</td>
  </tr>
  <tr class="item">
    <td><img src="../img/zucca2.jpg" alt = "product5" class = "product" width = "300"></td>
    <td>かぼちゃのケーキ<br>
    </td>
    <td>1100</td>
  </tr>
  <tr class="item">
    <td><img src="../img/24277e51448fbe068bd0.jpg" alt = "product6" class = "product" width = "300"></td>
    <td>かぼちゃのグラタン<br>
    </td>
    <td>1200</td>
  </tr>
</table>
<td><a href= "../views/search.jsp">戻る</a></td>
<script src="https://www.w3schools.com/lib/w3.js"></script>
</body>
</html>