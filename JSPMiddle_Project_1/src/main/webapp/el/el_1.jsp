<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%--
 	EL : 표현식(데이터를 화면에 출력시 사용. <%= %> 대체.)
 		형식 : ${값}
 		
  --%>
 <!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String name="홍길동";
		//EL사용시
		request.setAttribute("name", "홍길동");
		session.setAttribute("sex", "남자");
		session.setAttribute("name", "심청이");
	%>
	<h1><%=name %></h1>
	<h1>EL:${name }</h1>
	<h1>EL:${sex }</h1>
	<h1>EL:${requestScope.name }</h1>
	<h1>EL:${sessionScope.name }</h1>
</body>
</html>