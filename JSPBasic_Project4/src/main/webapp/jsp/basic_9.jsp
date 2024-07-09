<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--
	for : 출력횟수 지정된 반복문
	while : 반복문. 
	
	
 --%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		int i=5;
		String s="";
		while(i<=5){
			if(i>5){
				break;
			}
			s+="*";
			i++;
		}
	%>
	<font color=red><%=s %></font>
</body>
</html>