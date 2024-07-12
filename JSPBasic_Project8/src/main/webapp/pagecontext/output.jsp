<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String img=request.getParameter("fn");
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	ID : <%=request.getParameter("id") %><br>
	PASSWORD : <%=request.getParameter("password") %><br>
</body>
</html>