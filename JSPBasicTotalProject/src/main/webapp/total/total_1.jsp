<%--
	1.jsp의 실행 과정
		a.jsp	->	실행요첨(톰캣)	->	a_jsp.java	->	컴파일		->	a_jsp.class		 
		
		jsp의 소스코딩
		<% %>
			out.write(HTML)
		<%= %>		
			out.print()
		
		브라우저 -> 톰캣 : jsp파일 요청(URL). request
		톰캣 -> 브라우저 : 요청처리후 응답(HTML). response
	
		jsp사용
			지시자 : page(jsp의 정보 저장)
				1). 변환(브라우저에 알림)
					contentType="text/html, text/xml, text/plain"
				2. 외부 라이브러리(import="")
					java.lang, javax.http.servlet외 모든 패키지(사용자정의도 포함)
				3. errorPage : 에러발생시 이동할 파일 지정
			tablib : <%%>를 제거하기 위한 태그
					for/if 등 제어문을 태그로 제작
					자바는 사용하지 않고 태그형 문법 사용
		자바표현법
		내장객체
		JSP액션태그
		데이터베이스 연동
			
 --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>