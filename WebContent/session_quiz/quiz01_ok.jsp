<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	if (id.equals("asd") && pw.equals("123")) {
		response.sendRedirect("quiz02.jsp");
	} else {
%>		
	<script>
	
		name();
		
		function name() {
			alert("다시 로그인 해주세요")
			location.href = "quiz01.jsp";
		}	
	</script>
<%		
	}
	
%>