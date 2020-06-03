<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/*
	1. 아이디, 비밀번호, nick을 받습니다.
	2. 아이디와 비밀번호가 동일하면 (user_id, id),
		(user_nick, 닉네임)의 세션을 생성합니다.
		
	session_welcome로 이동해서 화면에 "id님 환영합니다"를 출력합니다.
	틀린경우는 로그인 페이지로 리다이렉트합니다.
	*/
	
	request.setCharacterEncoding("utf-8");
	
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String nick = request.getParameter("nick");
	
	if(id.equals(pw)) {
		session.setAttribute("user_id", id);
		session.setAttribute("user_nick", nick);
		
		response.sendRedirect("session_welcome.jsp");
		
	} else {
		//response.sendRedirect("session_login.jsp");
%>

	<script>
		
		/*
		HTML에서 스크립트의 사용은 script태그를 씁니다
		변수 : var a = 1;
		함수 : function 이름() {
			
		}
		자바스크립트 내장함수
		alert(); -> 경고창
		confirm(); -> 확인창
		history.go(-1); -> 뒤로가기
		location.href = "경로";
		*/
		
		name();
		
		function name() {
			alert("야 똑바로 입력해!");
			location.href = "session_login.jsp";
		}


	</script>

<%
	}
%>
	
	















