<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%
	//배열
	String[] colors={"green","blue", "yellow", "pink", "orange"};
	request.setAttribute("colors", colors);	//${request.getAttribute}
	//session(일반 자바변수는 출력 불가능) - request, session에 값 저장
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>자바.향상된 for(for-each)</h3>
	<ul>
	<%
		int i=1;
		for(String color:colors){ 
	%>
		<li><%=i%>.<%=color %></li>
	<%	
		i++;	
		} %>
	</ul>	
	<h3>jstl. foreach</h3>
	<ul>
		<%--varStatus : 배열/컬랙션의 인덱스번호를 얻어온다(0부터 시작) --%>
		<c:forEach var="color" items="${colors }" varStatus="s">
			<li>${s.index }.${color }</li>
		</c:forEach>
	</ul>
</body>
</html>