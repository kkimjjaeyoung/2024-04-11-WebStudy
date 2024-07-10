<%--
1. JSP 동작구조
	사용자(클라이언트) : 브라우저에서 서버로 요청 후 URL주소에 파일첨부해 리턴
	서버 : 톰캣(요청을 받아 처리후 html을 브라우저로 전송
	브라우저 : URL전송(DNS)
			1) 클래스만들기
			2) 컴파일(.class)
			3) .class읽어서 메모리에 저장
			4) 메모리에 출력된 내용을 브라우저에 읽어 출력
2. 실행순서
	1) JSP 제작
	2) 사용자 요청(JSP파일 요청)
	3) 톰캣(클래스로 변경)
	4) 클래스(컴파일)
	5) .class 읽기(_jspInit()-환경설정/맴버변수초기화, _jspService()-요청처리, _jspDestory()-새로고침, 서버-쓰레드 생성 )
3. html과 자바 구분
	<% %> : 일반 자바 소스(지역변수 선언, 연산자, 제어문, 메소드 호출). 문법사항이 자바와 동일. 주석(//, /**/)
	<%= %> : 변수 출력시 사용. 
	<%! %> : 메소드 제작, 맴버변수 선언
4. 지시자
	 page
	 include
	 taglib
5.  태그
6. 내장 객체
6-1. DB연결
7. Cookie
8. 에러처리
-
9. EL/JSTL
10. MVC
	Java : DAO, Model, VO, Manager, Service
	JSP : HTML/CSS/JavaScript
-
11. Spring
12. Spring-Boot

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