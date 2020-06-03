<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String no = request.getParameter("no");	
	String brand = request.getParameter("brand");	
	String price = request.getParameter("price");
	
	//1개의 세션 List
	ArrayList<HashMap<String, String>> list = new ArrayList<>();
	//list안에 들어간 형태[Map,Map,Map] //Map은 상품별로 관리
	//				  1   2   3
	//Map안에는 상품에 대한 정보 (상품번호,상품명,가격,수량) - class로 관리하는 것이 편하다
	if(session.getAttribute("brand") != null) { //세션에 brand가 있다면 갖고 나와서 list에 덮어줍니다
		list = (ArrayList<HashMap<String, String>>)session.getAttribute("brand");
	}
	
	boolean bool = true; //상품이 있었는지 없었는지 확인할 변수
	if(!list.isEmpty()) { //list값이 비어있지 않다면 회전을 해서 값을 찾습니다
		
		for(HashMap<String, String> map : list) { //key-상품,value-수량
			
			if(map.get("no").equals(no)) {  //상품번호 기반으로 찾습니다 (list에 있는 Map안에 번호를 비교하여 상품을 꺼냅니다)
				map.put("count", String.valueOf(Integer.parseInt(map.get("count")) + 1 )); //count는 추가할 예정
				//key값을 가져와서 숫자로 형변환을 해준 뒤 1을 더해주고 String으로 한번 더 형변환을 해줍니다
				bool = false;
				break;
			}
		}
	}
	
	if(bool) {	
		HashMap<String, String> newMap = new HashMap<>(); //새상품
		
		newMap.put("no", no);
		newMap.put("brand", brand);
		newMap.put("price", price);
		newMap.put("count", "1");
		
		list.add(newMap); //상품이 Map의 형태로 들어간다
		
	}
	
	session.setAttribute("brand", list); //세션 리스트를 추가
	
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<div align="center">
		<p><strong><%=brand %></strong>상품이 추가되었습니다</p>
		<a href="quiz02.jsp">계속 쇼핑하기</a>
		<a href="quiz04.jsp">장바구니 확인하기</a>
	</div>


</body>
</html>