<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  %>
<%
	//String path="C:\\WebDev\\WebStudy\\JSPBasic_Project8\\src\\main\\webapp\\upload";
	String path=application.getRealPath("/application");??
	String enctype="UTF-8";		//한글파일명 디코딩
	int max=1024*1024*100;		//100mb 까지 업로드 허용
	
	//con.jar : 파일 업로드 라이브러리
	MultipartRequest mr=new MultipartRequest(request, path, max, enctype, new DefaultFileRenamePolicy());	//DefaultFileRenamePolicy ; 파일명이 같은 경우 1씩 증가
	
	String fn=mr.getOriginalFileName("upload");		//파일을 가져올 때의 파일명(input file name값)
	response.sendRedirect("output.jsp?fn="+fn);
	
	
%>
    