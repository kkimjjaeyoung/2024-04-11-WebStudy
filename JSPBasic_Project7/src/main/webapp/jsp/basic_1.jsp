<%--
JSP
 1. 지시자
 	page 지시자
 		속성
 		 contentType : 브라우저에 파일의 형식 고지
 		 import : 라이브러리 추가
 		 errorPage : 에러발생시 출력 파일 지정
 		 buffer : 화면크기가 클 경우 크기 지정(default : 8kb)
 	include 지시자
 		속성
 		 file : 첨부할 파일명 지정(정적 파일 지정)
 		 	<jsp:include=""> 대체액션테그
 2. html/java구분
 	<% %> : html안에 자바 코딩. 일반 메소드(지역변수, 메소드 호출, 연산자, 제어문 등).
 	<%= %> : 화면 출력(out.print()). ${}로 대체.
 
 3. 내장 객체
 	request : 사용자 요청
 		getPagameter(), getParaeterValues() : 사용자가 보내중 요청값을 받는다
 		getRequestURI() : 사용자 요청 URI
 		setCharacterEncoding() : 인코딩 변환
 		setAttribute(), getAttribute() : 추가
 		getRemoteAddress() : 사용자 IP
 	 **스프링은 가급적 request를 사용하지 않음(예외 : Cookie)
 	 response : 응답정보
 	 	sendRedirect() : 화면 이동
 	 	setHeader() : JSON전송, 다운로드
 	 	addCookie() : 쿠키 전송
 	session : 서버에 일부 데이터 저장
 		setAttrubute() : 데이터 저장 
 		getAttribute() : 데이터 읽어오기
 		invalidate() : 저장내용을 지운다
 		removeAttribute() : 한개만 지운다
 	application : 서버 관리
 		log() : 로그파일 생성
 		getRealPath() : 실제 저장 경로
 	out : 출력 버퍼 관리
 		print(), writer() : 화면출력
 	pageContext
 		include() : <jsp:include>
 		forward() : <jsp:forward>
 	 
 	 page(this), congif, exception(try~each) 	
 4. 액션 태그
 	<jsp:include>
 	<jsp:useBean>
 	<jsp:setProperty>
 5. 라이브러리
 6. EL/JSTL (taglib지시자)
 7. MVC
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