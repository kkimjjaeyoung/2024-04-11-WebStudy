<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.sist.dao.*" %>
<%
	//
	String no=request.getParameter("no");
	DiaryService dao=DiaryService.newInstance();
	//delete요청
	dao.diaryDelete(Integer.parseInt(no));
	//화면이동
	response.sendRedirect("diary.jsp");
%>