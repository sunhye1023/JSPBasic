<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/*
	1. Date클래스를 이용해서 이 페이지에 접근한 시간을 xxxx년 xx월 xx일 형태로 생성합니다
	2. show라는 이름으로 쿠키를 생성합니다
	3. 다음페이지로 넘어가서 이 쿠키를 화면에 출력합니다
	*/

	Date date = new Date();
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy년MM월dd일");
	String now = sdf.format(date);
	
	Cookie ck = new Cookie("show", now);
	ck.setMaxAge(3600);
	response.addCookie(ck);
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<a href="cookie_quiz01_ok.jsp">쿠키확인</a>

</body>
</html>