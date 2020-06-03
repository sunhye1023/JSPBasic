<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	String name = "홍길동";
	int age = 21;
%>
<%
	String email = "qwe123@naver.com";
	String address = "서울";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
		out.println("이름 : " + name + "<br>");
		out.println("나이 : " + age + "<br>");
	%>

	이름 : <%=name%><br>
	나이 : <%=age %><br>
	이메일 : <%=email%><br>
	주소 : <%=address %><br>
	
</body>
</html>