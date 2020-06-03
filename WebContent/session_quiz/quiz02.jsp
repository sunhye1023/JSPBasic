<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

	<style type="text/css">
		.center {
			border:1px double #777;
			width:334px;
		}
		
		table {
			border:1px double #777;
		}
		tr,td {
			border:2px solid #4444;
		}
		
	</style>


</head>
<body>

<div class="center">

	<table>
		<tr>
			<td>번호</td>
			<td>이름</td>
			<td>가격</td>
			<td>장바구니</td>
		</tr>
		<tr>
			<td>1</td>
			<td>나이키s</td>
			<td>1000원</td>
			<td><a href="quiz03.jsp?no=1&brand=nike&price=1000">추가</a></td>
		</tr>
		<tr>
			<td>2</td>
			<td>아디다스p</td>
			<td>1000원</td>
			<td><a href="quiz03.jsp?no=2&brand=adidas&price=2000">추가</a></td>
		</tr>
		<tr>
			<td>3</td>
			<td>라코스테s</td>
			<td>1000원</td>
			<td><a href="quiz03.jsp?no=3&brand=lacoste&price=3000">추가</a></td>
		</tr>
		<tr>
			<td><a href="quiz04.jsp">장바구니</a></td>
			<td><a href="quiz05.jsp">장바구니 비우기</a></td>
		</tr>
	</table>

</div>




</body>
</html>