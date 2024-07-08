<!--  
JSP : java server page. 서버에서 실행하는 자바 파일
	
	JSP
	 1. HTML, JAVA 구분
	 	자바 : < % java.code % > : 스크리트릿		< %= %> : 표현식		< %! %> : 선언문
	 2. 동작방식 
	 	정적 페이지 : 한 파일에 한개만 사용. (HTML)
	 	동적 페이지 : 한 파일안에 여러개 파일 사용(JSP, PHP, ASP, CGI)
	 3. 지시자
	 	page : JSP파일에 대한 정보
	 		변환 : 브라우저에서 실행시 정의
	 			HTML : text/html
	 			XML : text/xml
	 			JSON : text/plain
	 		라이브러리 추가 : 라이브러리, 패키지 추가
	 			import=" , "
	 		한글 변환 : 언어호환성
	 			pageEncoding=" UTF-8"
	 		에러페이지 : errorPage="파일명"
	 			1) 404 : 파일이 없는 경우
	 			2) 500 : 컴파일 에러
	 			3) 403 : 접근 거부
	 			4) 412 : 한글변환 코드문제
	 			5) 400 : 전송값과 받는 데이터형이 틀린 경우 
	 	include : JSP안에 다른 JSP를 포함해 사용
	 		< %@ include file="" %>
	 	taglib : jsp의 단점 보완. 자바를 태그형으로 변경(JSTL)
	 		< % if(){ %>< % html.... >%
	 	 == <c:if test=""> html... </c:if>
	 4. 자바 코딩
	 	< % %> : 스크립트릿(일반자바. 자바문법을 그대로 사용. 지역변수 선언, 제어문, 메소드 호출 등.)(주석 : //, /**/)
	 	< %= %> : 표현식(데이터를 화면에 출력. out.write(), out.println() )
	 	< !% %> : 선언식(메소드, 멤버변수 등)
	 5. 지원하는 라이브러리(내장객체)
	 	request / response / out /session / application / config / exception / page / pageContext
	 6. Cookie VS Session
	 	Cookie : 브라우저에 데이터 저장
	 	Session : 서버에 데이터 저장
	 7. JSP 액션 태그 / 빈즈
	 	<jsp:inclued>
	 	<jsp:useBean>
	 8. JSTL / EL : 제어문/메소드 호출을 태그로 제작
	 9. MVC 
	 10. Spring
-->
<!-- 
	1. 웹 동작 
		클라이언트 요청(request), 서버에서 요청에 대한 응답(response)
		 요청시 URL주소를 이용해 처리
		**생략하는 경우 Welcome파일 등록
		**파일의 확장자는 개발자가 설정 가능
 -->

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