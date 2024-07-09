<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 
	< % 
		주석 : //, /**/
	%>
	
	< %! 
		주석 : //, /* */
	%>
	< %= 
		주석 : 
	%>
-->
<%!
	//선언문
	public int add(int a, int b){
	return a+b;
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	int res=add(10,20);
	out.print(res);	//서블릿
	%>
	<%=res %><!-- jsp -->
	
</body>
</html>