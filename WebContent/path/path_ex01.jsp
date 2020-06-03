<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h2>path_ex01</h2>

	<!-- 
	절대경로:프로젝트의 전체경로(IP주소, port번호를 제외한 /컨택스트경로 부터 시작)
	상대경로:현재위치에서 다른 파일의 경로를 참조
	 -->

	<a href="path_ex02.jsp">ex02으로 기기(상대경로)</a>
	<a href="/JSPBasic/path/path_ex02.jsp">ex02으로 기기(절대경로)</a>
	
	<a href="<%=request.getContextPath() %>/path/path_ex02.jsp">ex02로 기기(절대경로)</a>
	
</body>
</html>