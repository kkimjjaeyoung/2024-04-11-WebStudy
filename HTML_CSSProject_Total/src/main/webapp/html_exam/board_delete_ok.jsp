<%@page import="com.sist.vo.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
//한글 디코딩 처리
//사용자가 보내준 값 받기
	String no=request.getParameter("no");
	String pwd=request.getParameter("pwd");
 
	//db연동
	BoardDAO dao=BoardDAO.newInstance();
	boolean bCheck=dao.boardDelete(Integer.parseInt(no), pwd);
	
	//이동
	if(bCheck==false){
		out.println("<script>");
		out.println("<alter(\"비밀번호가 틀립니다\")>");
		out.println("<>");
		out.println("</script>");
	}
	else{
		response.sendRedirect("board_list.jsp");
	}
%>	