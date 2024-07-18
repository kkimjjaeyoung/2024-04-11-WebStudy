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
			<% %> : JTSL로 대체
				일반자바코딩. 제어문, 연산자, 메소드호출, 지역변수 선언
			<%= %> : EL로 대체
				데이터 출력 (out.print)
		내장객체
		HttpServletRequest : request
			브라우저 정보 : http://localhost:8080/JSPBasicTotalProject/total/total_1.jsp
					URL : protocoll.IP Adress.URI(ContextPath.filename)
				getRequestURI()
				getContextPath()
				getRequestURI()
				getRemoteAddr() : 사용자의 IP주소
			사용자 요청정보
				getParameter() : 사용자 보내준 단일 데이터값
				getParameterValues() : 한번에 여러 값을 받을 경우(String[])
				setCharacterEncoding() : 디코딩
			데이터 추가 정보
				setAttribute() : request에 데이터 추가
				getAttribute() : 추가된 데이터를 읽어올떄 사용
			기타
				getSession() : 생성된 세션을 얻어오는 경우
				getCookies() : 생성된 쿠키의 데이터를 읽어올때 사용
			HeetServletResponse
				setHeader() : 헤더정보(실제 데이터 전송전에 보내는 값)
				sendRedirect() : 이동정보(get방식만 사용가능)
				addCookie() : 쿠키저장
			HttpSession
				setAttribute() : 저장
				getAttribute() : 읽기
				removeAttribute() : 일부삭제
				invalidate() : 전체삭제
				getId() : 세션 구분
				setMaxInactiveInterval() : 기간 설정(default 1800초)
				
		ServletContext : application
			GETrEALpATH() : 바로 확인
		PageContext : pageContext
			<jsp:include> 
			<jsp:forward>
		기타
			cookie : 
				Cookie cookie=new Cookie(키, 값) : 생성
				cookie.setMaxAge() : 기간
				cookie.setPath("/") : 저장위치
				response.addCookie(cookie) : 브라우저 전송
				Cookie[] cookies=response.getCookies() : 쿠키읽기
				cookie.getName() : 키 읽기
				cookie.getValue() : 데이터 읽기
		JSP액션태그
			<jsp:include>, <jsp:useBean> : 객체 생성
		데이터베이스 연동
			JDBC - DBCP - ORM
				
			 : 드라이버 등록
			 : 오라클 연결
			 : SQL문장 생성
			 : 오라클로 SQL문장 생성
			 : SQL문장 실행 요청
			 : 오라클 연결 해제
			
		DBCP : 데이터베이스 연결에 소모되는 시간 단축. Connection의 객체생성 갯수 조절(미리 연결된 Connection주소를 POOL안에 저장 후 사용)
			
			
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