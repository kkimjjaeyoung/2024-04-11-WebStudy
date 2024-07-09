<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" butter="16kb" import="java.util.*" %>
 <%@ page import="java.io.*" %>
 <%@ page import="java.text.*, java.sql.*" %>
<%--
	JPS
	 1. HTML/JAVA 구분 
	 	: <%%> <%=%> <%! %>
	 2. 지시자
	 	page
	 		: jsp의 기본정보를 저장
	 			<%@ 지시자명 속성="값" 속성="값"...%>
	 			<%@ include file="파일명"%>
	 			<%@ taglib prefix="core"...$>
	 		속성(사용안할시 default적용)
	 			info : 작성자, 작성일, 프로그램 설명
	 			language : java(defualt)
	 			contentType : response.setContentType()
	 				contentType="text/html; charset=UTF-8"		-> html
	 				contentType="text/xml; charset=UTF-8"		->xml
	 				contentType="text/plain; charset=UTF-8"		->json 
	 			extends : 확장(상속)
	 			import : 라이브러리 불러오기
	 				생략 : java.lang, havax.servelt.http
	 				특성 : 유일하게 여러번 사용 가능. 공백 필수 사용. 값은 반드시 ""사용
	 			session : 서버에 일부 정보를 저장하는 경우 (default=true). 브라우저 종료/로그아웃시 세션 해제
	 				cookie -> 브라우저에 정보 저장. 보안에 취약	 				
	 			buffer : html코드를 저장하는 메모리 공간(default=8kb. 2의 배수로 증가.)
	 			autoFlush : 화면에 출력, 이동. 접속자 한사람마다 한개만 사용 가능
	 			isThreadSafe : 쓰레드 사용여부(true)
	 			errorPage : 에러발생시 출력 페이지 구성
	 			isErrorPage : 에러페이지 여부 확인
	 			pageEncoding : 파일 한글설정(인코딩 설정)
	 	taglib
	 	include
	 3. 내장객체
	 	request
	 	response
	 	session
	 	out
	 	application
	 	config
	 	exception
	 	page
	 	pageContext
	 4. cookie
	 5. JSP 액션 태그
	 6. 데이터베이스 연동/자바빈즈
	 7. EL/JSTL
	 8. MVC
 --%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>