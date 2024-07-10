<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String type=request.getParameter("type");
	int i=Integer.parseInt(type);
	if(i==1){
		response.sendRedirect("redirect.jsp");
	}
	else{
%>
	<jsp:forward page="forward.jsp">	
<%	
	}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
</body>
</html>