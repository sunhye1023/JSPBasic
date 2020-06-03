<%@page import="java.util.Random"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%!
	public int randomNum(){
		Random ran = new Random();
		int num = ran.nextInt(4);
		return num;
}
	//Random ran = new Random();
	String[] name = {"어피치","프로도","제이지","콘","튜브"};
	ArrayList<String> list = new ArrayList<>();
	
	
%>
<%	
	int r = randomNum();
	//int r = ran.nextInt(5); //0-5랜덤수
	String choose = name[r]; //선택된 캐릭터
	list.add(choose); //추가
	
	int count = 0; //중복 인원 확인
	for(String e : list) {
		if(e.equals(choose)) {
			count++;
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
	
	[<%=choose %>]님이 입장합니다.<br>
	현재 같은 카카오 프렌즈는 <%=count%>명 입니다.
	
	<h2>현재 구성정보</h2>
	<%=list.toString()%> (<%=list.size()%>명 참가중)

	<%
	//리스트의 크기가 10개가 되면 리스트 내부의 객체를 전체 삭제
		if(list.size()==10){
			list.clear();
		}
	%>
	
	
</body>
</html>