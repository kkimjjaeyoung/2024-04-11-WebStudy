<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.sist.dao.*" %>
<%
	request.setCharacterEncoding("UTF-8");
	
%>
<jsp:useBean id="vo" class="com.sist.dao.DiaryVO">
	<jsp:setProperty name="vo" property="*"/>
</jsp:useBean>

<%
	DiaryService dao=DiaryService.newInstance();
	//update요청
	dao.diary
	//화면이동
	response.sendRedirect("diary.jsp");
%>