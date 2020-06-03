<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//쿠키 확인하기
	//브라우저의 쿠키는 request객체에 자동으로 넘어와서 저장됩니다
	Cookie[] cookies = request.getCookies();

	//쿠키가 null이 아닐 때 반복문으로 쿠키를 하나 씩 꺼냅니다 (쿠키가 없을 수도 있기 때문)
	if(cookies != null) {
		
		for(Cookie c : cookies) {
			out.println(c.getName() + "<br>"); //쿠키의 이름을 꺼냅니다
			out.println(c.getValue() + "<br>"); //쿠키의 값을 꺼냅니다
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

	<a href="cookie_get01.jsp">특정 쿠키 사용하기</a>

</body>
</html>