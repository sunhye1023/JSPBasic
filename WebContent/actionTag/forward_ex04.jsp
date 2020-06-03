<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//서블릿에서 넘어온 name값
	String name = (String)request.getAttribute("name");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<h2>forward_ex04페이지 도착</h2>

	forward로 넘어온 값 : <%=name %>

</body>
</html>