<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.sist.dao.*" %>

<%
	request.setCharacterEncoding("UTF-8");
//한글 디코딩 처리
//사용자가 보내준 값 받기
	String no=request.getParameter("no");
	String name=request.getParameter("name");
	String subject=request.getParameter("subject");
	String content=request.getParameter("content");
	String pwd=request.getParameter("pwd");
 
	BoardVO vo=new BoardVO();
	vo.setNo(Integer.parseInt(no));
	vo.setName(name);
	vo.setSubject(subject);
	vo.setContent(content);
	vo.setPwd(pwd);
	
	//db연동
	BoardDAO dao=BoardDAO.newInstance();
	boolean bCheck=false;
	
	//화면이동
	if(bCheck==false){
		//수정페이지로 이동
%>	
	
<%	
	}
	else{
		//상세보기로 이동
		response.sendRedirect("board_detail.jsp?no="+no);
	}
	
	return dao;
%>