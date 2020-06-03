<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//장바구니 결과
	
	ArrayList<HashMap<String, String>> list = null;
	int money = 0; //장바구니 합계
	if(session.getAttribute("brand") != null) { //세션에 brand가 있다면 갖고 나와서 list에 덮어줍니다
		list = (ArrayList<HashMap<String, String>>)session.getAttribute("brand");
		for(HashMap<String, String> map : list) {
			money += Integer.parseInt(map.get("count")) * Integer.parseInt(map.get("price"));
			//count와price는 문자값이기 때문에 숫자값으로 형변환을 해줍니다
		}
	}

	String no = request.getParameter("no");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

	<style type="text/css">
		.center {
			border:1px double #777;
			width:187px;
		}
		
		table {
			border:1px double #777;
		}
		tr,td {
			border:2px solid #4444;
		}
		
	</style>

</head>
<body>
	
	<div class="center">
		<table border="1">
			<tr>
				<td>번호</td>
				<td>이름</td>
				<td>가격</td>
				<td>수량</td>
			</tr>
			<% if(session.getAttribute("brand") != null) { %>	
			<% for(int i=0; i<list.size();i++) { %>
			<tr>
				<td><%=list.get(i).get("no") %></td>
				<td><%=list.get(i).get("brand") %></td>
				<td><%=list.get(i).get("price") %></td>
				<td><%=list.get(i).get("count") %></td>
			</tr>
			<% } %>
			<tr>
				<td colspan="4">총 금액 : <%=money %></td>
			</tr>
			<% } else { %>
			<tr>
				<td colspan="4">장바구니가 비었습니다</td>
			</tr>			
			<% } %>
		</table>
		<a href="quiz02.jsp">계속 쇼핑하기</a>
	</div>
	
</body>
</html>