<!-- 



< %! %> : 선언식. 메소드를 jsp로 만드는 경우

public void _jspInit(){}
public void _jspDestory(){}
public void _jsp(){}
-->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	String name;
	public void display(){}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		int age=10;	// _jspService()
	%>
	<%= age %> 	<!-- out.print(age) -->
</body>
</html>