<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.sist.dao.*" %>

<%
	request.setCharacterEncoding("UTF-8");
//한글 디코딩 처리
//사용자가 보내준 값 받기
	String name=request.getParameter("name");
	String subject=request.getParameter("subject");
	String content=request.getParameter("content");
	String pwd=request.getParameter("pwd");
 
BoardVO vo=new BoardVO();
vo.setName(name);
vo.setSubject(subject);
vo.setContent(content);
vo.setPwd(pwd);


%>