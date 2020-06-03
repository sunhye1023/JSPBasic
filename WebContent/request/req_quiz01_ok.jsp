<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	String height = request.getParameter("height");
	String weight = request.getParameter("weight");
	
	double dheight = Double.parseDouble(height);
	double dweight = Double.parseDouble(weight);
	double bmi = dweight / ( dheight/100 * dheight/100 );
	
	String BMI = String.format("%.2f", bmi);
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	이름 : <%=name %><br>
	키 : <%=height %><br>
	몸무게 : <%=weight %><br>
	BMI : <%=BMI %><br>
	
	<% if(bmi>18&&bmi<25) { %>
			당신의 BMI는 정상입니다
	<% } else if (bmi>=25) { %>
			당신의 BMI는 과체중입니다
	<% } else { %>
			당신의 BMI는 저체중입니다
	<% } %>
	
</body>
</html>