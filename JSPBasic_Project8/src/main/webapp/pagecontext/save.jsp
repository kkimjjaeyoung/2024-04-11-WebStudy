<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  %>
<%
	pageContext.forward("output.jsp");	//request를 output.jsp 파일에 전송.
	/*
	다른 파일로 전송시
		forward는 다른 파일에 request를 유지하며 파일 이동 --> URL이 동일(MVC에서 자주 사용)
		sendRedirect는 request를 초기화 후 파일 이동 --> URL이 변경
	*/
	
%>
    