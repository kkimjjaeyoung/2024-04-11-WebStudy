<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="dao" class="com.sist.dao.DiaryService"/>
<jsp:useBean id="vo" class="com.sist.dao.DiaryVO">
	<jsp:setpProperty name="vo" property='*'/>
</jsp:useBean>
<%
	String id=(String)session.getAttribute("id");
	vo.setId(id);
	
	dao.diaryInsert(vo);
	
%>