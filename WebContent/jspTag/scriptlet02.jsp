<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<% for(int i=1;i<=10;i++) { %>
			<%= i %>							
	<%	} %>

	<h2>구구단 3단을 out.println으로 출력</h2>
	<% for(int i=1;i<10;i++){
			out.println(3  + " x " + i + " = " + 3*i + "<br>");	
	} %>

	<h2>구구단 3단을 표현식을 통해서 출력</h2>
	<% for(int i=1;i<10;i++){ %>
			3 x <%=i %> = <%=3*i %><br>
	<%	} %>

	<h2>반복문으로 체크박스에 1~20까지 이름을 붙여서 가로 출력</h2>
	<% for(int i=1;i<=20;i++) { %>
			<input type="checkbox"> <%=i %>
	<% } %>
	
	<h2>중첩반복문을 사용해서 1~9단을 세로 출력</h2>
	<% for(int i=1;i<=9;i++){ %>
				<%=i %> 단<br>
			<% for(int j=1;j<=9;j++){ %>
				<%=i %>	x <%=j %> = <%=i*j %><br>	
	<%		}
		}
	%>
	
	
</body>
</html>