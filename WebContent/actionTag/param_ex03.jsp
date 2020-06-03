<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String name = request.getParameter("name");
	String nick = request.getParameter("nick");
	String age = request.getParameter("age");
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	form값 : <%=name %><br>
	forward로 넘어온 값 : <%=nick %><br>
	forward로 넘어온 값 : <%=age %><br>
	
</body>
</html>