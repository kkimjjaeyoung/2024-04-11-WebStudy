
<%--
	1. <c:set> : 변수설정
		
	2. <c:out> : 회면 출력
 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%
	List<String> names=new ArrayList<String>();
	for(char a='A'; a<='Z'; a++){
		names.add(String.valueOf(a));
	}
%>
<c:set var="names" value="<%=names %>"/>
<%--request.setAttribute("names", names) --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>jstl. 변수설정=&lt;c:set&gt;</h1>
	<c:forEach var="alpha" items="${names }">
		${alpha }&nbsp;
	</c:forEach>
	<h1>출력형식</h1>
	<c:forEach var="alpha" items="${names }">
		<c:out value="${alpha }"></c:out>&nbsp;
	</c:forEach>
</body>
</html>