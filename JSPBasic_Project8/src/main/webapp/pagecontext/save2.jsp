<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	RequestDispatcher rd=request.getRequestDispatcher("output.jsp");
	rd.forward(request, response);	//request, response전송
	
	/*
		HTML 화면이동
			<a>, <form> : 데이터 전송, 화면 변경
		JAVA 화면이동
			pageContext.forward()
			RequestDispatcher.forward()		-->		forward는 request유지
			response.resdRedirect()			-->		request 초기화
		JAVAScript 화면이동
			location.herf="파일명"
	*/	
%>