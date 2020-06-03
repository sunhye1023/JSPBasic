<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<!-- a태그를 이용해서 req_video페이지로 상대경로, 절대경로로 이동 -->
	<a href="../../request/req_video.jsp">req_video로(상대경로)</a>
	<a href="/JSPBasic/request/req_video.jsp">req_video로(절대경로)</a>
	
	<!-- a태그를 이용해서 TestServlet으로 상대경로, 절대경로로 이동 -->
	<a href="../../servlet/testServlet.jsp">testServlet로(상대경로)</a>
	<a href="/JSPBasic/servlet/testServlet.jsp">tesrServlet로(절대경로)</a>
	<hr>
	<!-- img태그를 이용해서 java.png참조 -->
	<img src="../../request/img/java.png" width="200px" height="100">
	<img src="/JSPBasic/request/img/javascript.png" width="200px" height="100">
	<img src="<%=request.getContextPath() %>/request/img/oracle.png" width="200px" height="100">
</body>
</html>