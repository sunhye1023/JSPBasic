<%@page import="com.bean.Bean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/*
	1. 폼태그를 처리할 수 있는 빈을 선언합니다.
	2. 폼값을 받아서 평균과 총점을 구합니다.
	3. quiz01_result페이지로 이동해서 
	학생정보, 평균, 총점을 모두 출력하세요.

	조건 : session을 사용하지 않습니다.
	*/
	
	request.setCharacterEncoding("utf-8");

	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	String address = request.getParameter("address");
	String kor = request.getParameter("kor");
	String math = request.getParameter("math");
	
	//숫자로 형변환
	int iKor = Integer.parseInt(kor);
	int iMath = Integer.parseInt(math);
	
	int sum = iKor + iMath;
	double avg = sum/2.0;
	
	//객체(빈) 생성
	Bean bean = new Bean(id, pw, name, address, kor, math, sum, avg);
	
	//request에 강제저장
	request.setAttribute("bean", bean);
	
	//포워드 이동
	request.getRequestDispatcher("quiz01_result.jsp").forward(request, response);
	
%>


