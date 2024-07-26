<%--
JSP/Servlet
 JSP
 	1. 지시자
 		page : 
 			contentType - 브라우저에 알려주는 방식(메모리에 저장된 데이터의 형식에 대해)
 		taglib : 태그형으로 자바의 제어문을 지원
 			prefix="#" 
 			uri="#"
 			제어문 
 				<c:if test="조건문>
 				<c:forEach var="받는변수" items="배열/컬랙션" varStatus"인덱스본호">
 				<c:choose var="변수명" begin="" end="">
 				<c:when test=""></c:when> ~ ~ ~ <c:otherwise></c:otherwise>
 				<c:redirect url="이동 주소">
 				EL : 데이터 출력
 					${requesScope.키}		==		request.setAttribute()
 					${sessionScope.키}		==		session.setAttribute()
 Servlet : 자바로만 소스코딩
 	실행순서
 		1) init() : 메모리 초기화(자동호출)
 		2) service()
 			deGet()
 			dePost()
 		3) destroy() : 메모리 해제(자동호출)
 		
 --%> 
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>