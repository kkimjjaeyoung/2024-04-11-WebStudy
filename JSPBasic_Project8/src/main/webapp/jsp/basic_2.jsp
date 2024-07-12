<%--
	application : 서버관리
		1. 서버 관련 정보
			1) 서버 이름 : getServerInfo()
			2) 버전 확인 : getMajorVersion() , getMinorVersion() : servlet버전을 읽어온다
		2. 로그 정보
			log() : 로그파일 생성
		3. 자원관리
			getRealPath() : 실제 경로명
 --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>서버명 : <%=application.getServerInfo() %></h3>
	<h3>서블릿 버전 : <%= application.getMajorVersion()%></h3>
	<h3>서블릿 버전 : <%= application.getMinorVersion()%></h3>
	<h3>서블릿 버전 : <%=application.getMajorVersion()+"."+ application.getMinorVersion()%></h3>
	<h3>로그 읽기</h3>
	<%
		String driver=application.getInitParameter("driver");
		String url=application.getInitParameter("url");
		String username=application.getInitParameter("username");	
		String password=application.getInitParameter("password");
		
		application.log("driver:"driver);
		application.log("url:"url);
		application.log("username:"username);
		application.log("password:"password);
	%>
	<h3>실제 프로젝트 저장위치 : <%=application.getRealPath("/") %></h3>
</body>
</html>