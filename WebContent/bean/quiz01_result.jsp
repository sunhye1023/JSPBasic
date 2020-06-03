<%@page import="com.bean.Bean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Bean b = (Bean)request.getAttribute("bean");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


	<% 
		Bean bean = (Bean)request.getAttribute("bean");
	%>
	
	<h2>학생 정보</h2>
	아이디 : <%=bean.getId() %><br>
	비밀번호 : <%=bean.getPw() %><br>
	이름 : <%=bean.getName() %><br>
	주소 : <%=bean.getAddress() %><br>
	국어 : <%=bean.getKor() %><br>
	수학 : <%=bean.getMath() %><br>
	총점 : <%=bean.getSum() %><br>
	평균 : <%=bean.getAvg() %><br>
	
</body>
</html>