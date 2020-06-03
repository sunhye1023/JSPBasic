<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/*
	application은 session과 사용방법은 거의 동일하며,
	생명주기가 톰캣을 stop할 때 까지 1개만 유지 됩니다.
	*/
	
	int total = 0;

	if(application.getAttribute("total") != null) {
		total = (int)application.getAttribute("total");
	} 
	//application에 저장(브라우저를 껐다 켜도 누적값이 유지된다)
	//다른 사람의 ip주소로 동시 접속한 사람이 있으면 그 누적값이 모두 쌓이게 된다
	
	if(session.getAttribute("total") != null) {
		total = (int)session.getAttribute("total");
	} 
	//session에 저장(브라우저를 껐다 키면 누적은 초기화가 된다)
	//다른 사람의 ip주소로 접속했을 때 나의 브라우저 누적값은 유지되지만 다른사람의 브라우저의 누적값은 고정이다
	//session은 브라우저마다 누적값이 다르다
	
	// +1증가
	total++;
	
	application.setAttribute("total", total);
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	누적 : <%=total %><br>

</body>
</html>