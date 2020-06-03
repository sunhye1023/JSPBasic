<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//request는 브라우저에 대한 정보, 사용자가 전달하는 값에 대한 많은 정보들이 담겨있습니다.
	StringBuffer url = request.getRequestURL(); //URL주소확인
	
	String uri = request.getRequestURI(); //URI값 확인
	
	String path = request.getContextPath(); //*컨택스트경로 : 톰캣이 프로젝트를 구분하는 경로
	
	String query = request.getQueryString(); //주소에 넘어오는 문자열 값

	String addr = request.getRemoteAddr(); //접속 주소
	
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	URL주소 : <%=url %><br><!-- (전체 주소) -->
	URI주소 : <%=uri %><br><!-- (프로젝트 주소~나머지 주소) -->
	컨패스 : <%=path %><br><!-- (프로젝트 이름(없앨 수 있다)) -->
	query : <%=query %><br><!-- http://localhost:8181/JSPBasic/request/req_basic.jsp?hello (주소뒤에 ?를 찍은 뒤 값을 넣는다) -->
	접속주소 : <%=addr %>

</body>
</html>