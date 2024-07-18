<%--
	JSTL(Jsp Standard Tab Library)
		태그로 제어문, String, 날짜, 숫자, 화면이동 등등... (jtsl-1.2.jar필요)
		자바문법을 태그로 제작
		EL/JSTL : JSP 화면출력에 주로 사용
	 //
	 1. core : 제어문, 변수선언, 화면이동
	 	제어문
	 		반복문
	 			<c:forEach>
	 				속성 : begin(시작), end(끝), step(증가)
	 					for(int i=i; i<=10; i++)
	 				==	<c:forEach var="i" begin="1" end="10" step="1">
	 					for(FoodVo vo:list)
	 				==	<c:forEach var="vo" item="list:>
	 					StringTokenizer st=new StringTokenizer
	 				==	<c:forTokens var="s" value="" delimt="">	-value : 데이터, delimt : 구분자  
	 		조건문
	 			<c:if>
	 		선택문
	 			<c:choose>
		 			<c:when></c:when>
		 			<c:otherwise></c:otherwise>	-	default
	 			</c:choose>
	 	변수선언
	 	화면이동
	 2. fmt : 날짜변환, 숫자변환
	 3. fn : String 메소드를 처리
	 //노출이 됨(순수 자바로)
	 4. xml
	 5. sql
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="ftm" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>일반자바 for문</h3>
	<%
		for(int i=1; i<=10; i++){
	%>
		<%=i %>&nbsp;
	<%} %>
	
	<h3>JTSL foreach</h3>
	<c:forEach var="i" begin="1" end="10" step="1">
		${i s}&nbsp;
	</c:forEach>
</body>
</html>