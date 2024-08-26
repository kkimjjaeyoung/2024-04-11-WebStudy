<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.sist.vo.*" %>
<%
p

	request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="O" class="w com.sist.vo.Diary">
	<jsp:setProperty name="vo" property="*"/>
</jsp:useBean>

<%
DiaryService dao=DiaryService.newInstance();
	//update요청
	com.sist.dao.diary
	//화면이동
	response.sendRedirect("diary.jsp");
%>