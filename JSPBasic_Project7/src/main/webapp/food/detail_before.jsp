<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="" %>

<%
	String fno=request.getParameter("fno");
	Cookie cookie=new Cookie("food_"+fno, fno);
	cookie.setPath("/");
	cookie.setMaxAge(60*60^24);		//60초*60*24=24시간동안 저장. 0으로 하면 쿠키 삭제
	//브라우저 전송 
	response.addCookie(cookie);
	
	//화면이동
	response.sendRedirect("../main/main.jsp?mode=1&fno="+fno);
%>