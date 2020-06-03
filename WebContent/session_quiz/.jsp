<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String brand = request.getParameter("brand");
	
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<% if (brand == null) { %>
		다시 한 번 선택해주세요.
	<% } else if (brand.equals("nike")) {%>
	<div>
		<p>나이키<p>상품이 추가 되었습니다<br>
		<a href="quiz02.jsp">계속 쇼핑하기</a>
		<a href="quiz02_basket.jsp">장바구니 확인하기</a>
	</div>

	<% } else if (brand.equals("adidas")) {%>
	<div>
		<p>아디다스<p>상품이 추가 되었습니다<br>
		<a href="quiz02.jsp">계속 쇼핑하기</a>
		<a href="quiz02_basket.jsp">장바구니 확인하기</a>
	</div>

	<% } else if (brand.equals("lacoste")) {%>
	<div>
		<p>라코스테<p>상품이 추가 되었습니다<br>
		<a href="quiz02.jsp">계속 쇼핑하기</a>
		<a href="quiz02_basket.jsp">장바구니 확인하기</a>
	</div>

	<% } %>

</body>
</html>