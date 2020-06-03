<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 스크립트릿, 선언자, 표현식을 적절히 사용 --%>
<%!
	public int total = 0;
	
	public int randomNum(){
		Random ran = new Random();
		int num = ran.nextInt(9)+1;
		return num;
	}
%>
<%	
	int random = randomNum();
	int each = 0;
	total++;
	each++;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h3><%=total %>번째 방문자 입니다</h3>
	<%if(total%10==0){ %>
			<h2>"당첨되셨습니다"</h2>
	<% } %>

	<hr>
	<h3>랜덤구구단  <%=random%>단</h3>
	<p>이번에 나온 구구단은 <%=random%>단 입니다</p>
	<% for(int i=1;i<=9;i++) { %>
			<%=random%> x <%=i %> = <%=random*i%><br>
	<% } %>		
			
</body>
</html>