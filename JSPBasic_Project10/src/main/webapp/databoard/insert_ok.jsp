<%--
	사용자가 보내준 데이터를 받아 처리후 다시 목록으로 이동
	//jsp : 입력값을 받아 처리, 이동
	//jsp : 브라우저 화면에 출력
 --%>

<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.io.*,com.sist.vo.*" %>
<%
	request.setCharacterEncoding("UTF-8");
	String path="c:\\upload";
	try{
		File dir=new File(path);		//폴더가 없을시 생성
		if(!dir.exists()){
			dir.mkdir();
		}
	}catch(Exception ex){}	
	String euctype="UTF-8"; //한글 파일명
	int max=1024*1024*100;	//파일의 최대크기(100mb)
	MultipartRequest mr=new MultipartRequest(request, path, max, euctype, new DefaultFileRenamePolicy());		//업로드
	
	//중복파일명 자동변환
	String name=mr.getParameter("name");
	String subject=mr.getParameter("subject");
	String content=mr.getParameter("content");
	String pwd=mr.getParameter("pwd");
	String filename=mr.getFilesystemName("upload");
	DataBoardVO vo=new DataBoardVO();
	vo.setName(name);
	vo.setSubject(subject);
	vo.setContent(content);
	vo.setPwd(pwd);
	if(filename==null){	//업로드되지 않은 경우
		vo.setFilename("");
		vo.setFilesize(0);
	}
	else{	//업로드 된 경우
		File f=new File(path+"\\"+filename);
		vo.setFilename(filename);
		vo.setFilesize((int)f.length());
	}
	
	DataBoardDAO dao=DataBoardDAO.newInstance();
	dao.dataBoardInsert(vo);	//db에 추가
	
	//이동
	response.sendRedirect("list.jsp");
%>	

