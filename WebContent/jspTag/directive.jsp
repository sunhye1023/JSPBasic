<%@page import="java.util.Iterator"%>
<%@page import="java.util.Map.Entry"%>
<%@page import="java.util.HashSet"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Date date = new Date();
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
	String now = sdf.format(date);
	
	//list
	List<String> list = new ArrayList<>();
	list.add("우디");
	list.add("버즈");
	list.add("포키");
	
	//map
	Map<Integer,String> map = new HashMap<>();
	map.put(1, "우디");
	map.put(2, "버즈");
	map.put(3, "포키");
	
	//set
	Set<Integer> set1 = new HashSet<>();
	set1.add(1);
	set1.add(2);
	set1.add(3);
	
	Set<String> set2 = new HashSet<>();
	set2.add("우디");
	set2.add("버즈");
	set2.add("포키");
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	현재시각 : <%=now %><br>
	List : <%=list.toString() %><br>
	Map : <%=map.toString() %><br>
	Set : <%=set1.toString() %>
	
	<h2>list,map,set요소 출력</h2>
	<%for(String s : list) { %>
		<%=s %>
	<% } %>
	
	<hr>
	<% Set<Entry<Integer,String>> iter01 = map.entrySet(); %>
	<% for(Entry<Integer,String> i : iter01) { %>
			<%=i.getKey() %>
			<%=i.getValue() %>
	<% } %>
	
	<hr>
	<% Iterator<Integer> iter02 = set1.iterator(); %>
	<% while(iter02.hasNext()) { %>
			<%=iter02.next() %>
	<% } %>
	
	<hr>
	<% Iterator<String> iter03 = set2.iterator(); %>
	<% while(iter03.hasNext()) { %>
			<%=iter03.next() %>
	<% } %>
	
</body>
</html>