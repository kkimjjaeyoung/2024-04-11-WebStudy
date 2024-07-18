<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>자바. 다중조건문</h1>
	<%int star=3; %>
	<%if(star==0){%> 
	<span style="color:orange;">12345</span>
	<%
		}
	else if(star==1){%>
	<span style="color:orange;">!2345</span>	
	<%
	}
	else if(star==2){%>
		<span style="color:orange;">!@345</span>
	<%	
		}
	else if(star==3){%>
	<span style="color:orange;">!@#45</span>
	<%	
	}
	else if(star==4){%>
	<span style="color:orange;">!@#$5</span>
	<%	}
	else if(star==5){%>
	<span style="color:orange;">!@#$%</span>
	<%	}%>
	
	<h3>jstl 다중조건문</h3>
	<%request.setAttribute("star", 3); %>
	<c:choose>
		<c:when test="${star==0 }">12345</c:when>
		<c:when test="${star==1 }">!2345</c:when>
		<c:when test="${star==2 }">!@345</c:when>
		<c:when test="${star==3 }">!@#45</c:when>
		<c:when test="${star==4 }">!@#$5</c:when>
		<c:when test="${star==5 }">!@#$%</c:when>		
	</c:choose>
	
	<h3>자바 선택조건문</h3>
	
	
	<h3>jstl. 선택조건문</h3>
</body>
</html>