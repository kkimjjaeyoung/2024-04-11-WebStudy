<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  %>
<%
//선언되는 변수 =지역변수 : 초기화해서 사용해야한다
	int a=10;
	int b=20;
	//import없이 사용
	java.util.Date date=new java.util.Date();
	java.text.SimpelDateFormat sdf=new java.text.SimpleDateFormat("yyyy-mm-dd")
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		out.print(a+b);
	%>
	<%= a+b %>
	<br>
	<%= sdf.format(date) %>
	<br>
	<%= a%>&ndsp;<%= a*b%>
	<br>
	<%= "Hello JSP" %>
	<br>
	<%=10 %>
	
</body>
</html>