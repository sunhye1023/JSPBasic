<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Cookie[] cookie = request.getCookies();

	String ck = "";
	if(cookie != null) {
		
		for(Cookie c : cookie) {
			if(c.getName().equals("show")) {
				ck = c.getValue();				
			}
		}
		
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	쿠키생성날짜 : <%=ck %>

</body>
</html>