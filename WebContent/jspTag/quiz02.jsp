<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.HashSet"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	
	public int rottoNum() {
		Random ran = new Random();
		int num = ran.nextInt(45)+1;
		return num;
	}

%>
<%
	/*
	1. 정수를 저장하는 List를 선언합니다
	2. 1~45까지 로또 번호를 생성하고 리스트에 추가합니다.
	3. 중복되지 않은 숫자 6개의 로또 번호를 저장합니다.
	4. 화면에 출력합니다.
	5. 같은 방법으로 Set을 이용해서도 처리합니다
	*/
	int random = rottoNum();
	
	Random ran = new Random();
	
	//ArrayList<Integer> list = new ArrayList<>();
	//while(list.size()<6){
	//	int num = ran.nextInt(45)+1;
	//	
	//	if(! list.contains(num)) {
	//		list.add(num);
	//	}
	//}
	//
	//Set<Integer> set = new HashSet<>();
	//while(set.size()<6){
	//	set.add(ran.nextInt(45)+1);
	//}
	
	//메서드 활용
	ArrayList<Integer> list = new ArrayList<>();
	while(list.size()<6){
		int num = rottoNum();
		
		if(! list.contains(num)) {
			list.add(num);
		}
	}

	Set<Integer> set = new HashSet<>();
	while(set.size()<6){
		set.add(rottoNum());
	}
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	로또 번호 : <%=list.toString() %><br>
	로또 번호 : <%=set.toString() %>

</body>
</html>