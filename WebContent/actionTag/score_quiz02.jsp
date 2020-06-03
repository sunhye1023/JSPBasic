<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	
	/*
	앞에서 넘어온 form값을 받앙서 평균을 구합니다.
	평균이 60점 이상이면 score_quiz03으로 이동해서
		~~님 xx점으로 합격하셨습니다 를 출력
	평균이 60점 미만이라면 score_quiz04으로 이동해서
		~~님 xx점으로 불합격하셨습니다 를 출력
		
	조건 : 세션을 사용하지 않습니다
	*/
	
	request.setCharacterEncoding("utf-8");
	
	String name = request.getParameter("name");
	String kor = request.getParameter("kor");
	String eng = request.getParameter("eng");
	String math = request.getParameter("math");
	
	double dkor = Double.parseDouble(kor);
	double deng = Double.parseDouble(eng);
	double dmath = Double.parseDouble(math);
	
	double avg = (dkor+deng+dmath)/3.0;
	
	//request에 강제로 저장
	request.setAttribute("name", name);
	request.setAttribute("avg", avg);
	
	if(avg>=60)	{
		RequestDispatcher rd = request.getRequestDispatcher("score_quiz03.jsp");
		rd.forward(request, response);
		//request.getRequestDispatcher("score_quiz03.jsp").forward(request, response);
	} else {
		RequestDispatcher rd = request.getRequestDispatcher("score_quiz04.jsp");
		rd.forward(request, response);
		//request.getRequestDispatcher("score_quiz03.jsp").forward(request, response);
	}
	
	
%>