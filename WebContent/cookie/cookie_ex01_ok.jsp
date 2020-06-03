<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	request.setCharacterEncoding("utf-8");
	
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String idCheck = request.getParameter("idCheck"); //아이디기억
	
	/*
	1. id=asd이고, pw=123이라면 로그인 성공이라고 간주하고(user_id, id)로 쿠키를 생성합니다
	2. 아이디나 비밀번호가 틀렸으면 다시 로그인 페이지로 리다이렉트합니다
	3. 로그인 성공시 cookie_ex01_welcome으로 리다이렉트해서 화면에 "id님이 로그인 중입니다"를 출력합니다
	*/

	if(id.equals("asd") && pw.equals("123")) {
		Cookie cookie = new Cookie("user_id", id);
		cookie.setMaxAge(3600);
		response.addCookie(cookie);
		
		//아이디 기억하는 쿠키 생성
		if(idCheck != null) { //기억하는 곳에 체크가 되었다면
			Cookie check = new Cookie("idCheck", id);
			check.setMaxAge(60);
			response.addCookie(check);
		}
		
		response.sendRedirect("cookie_ex01_welcome.jsp");
			
	} else {
		response.sendRedirect("cookie_ex01.jsp");
	}
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>