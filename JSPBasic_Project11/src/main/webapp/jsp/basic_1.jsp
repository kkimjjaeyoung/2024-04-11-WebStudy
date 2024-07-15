<%--
	1. HTML/JAVA 분리
		<% %> : 자바코딩			- <c~>
		<%= %> : 브라우저 출력		- ${}
	2. 지시자
		page
			import, contentType, errorPage -> web.xml 등록
		taglib : prefix, uri -> jsp에서 자바 대체
	3. 내장객체 : mvc/Sqring 
		request
			getParameter()
			getParamerValues()
			setCharacterEncoding()
			getSession() / getCookie()
			setAttribute() / getAttribute()
			getContextPath() / getRequestURI()
		response
			setHeader()
			seenRedirect()
			addCookie()
		session
			setAttribute()
			getAttribute()
			invalidate()
			removeAttribute()
		application
			getRealPath()
	 예외(내장객체x) : cookie	-	문자열만 저장 가능
	 				setPath()
	 				setMaxAge() : 저장기간. 0이면 삭제
	 				getName() : 키를 읽어올때 사용
	 				getValue() : 값을 읽는 경우
	 		생성 : new Cookie(키, 값)	
	 
	액션태그
		<jsp:include> : 계속 사용(tils가 사라짐)
	데이터베이스 : DBCP, JDBC 	- 자바와 오라클 연결
	
	
 --%>

<%--Session / Cookie --%>
<%--
	Cookie : 브라우저에 저장(최근방문, 자동로그인 등 사용)
		보안에 취약.
	 저장 : 생성자 이용
		Cookie cookie=new Cookie(String key, String value)
	 저장기간 설정
	 	setMaxAge(1800) : 초단위 60*60*24=1800
	 저장위치 설정
	 	setPath("/")
	 브라우저로 전송
	 	response.addCookie()
	 키 얻기
	 	getName()
	 값 얻기
	 	getValue()
	 쿠기 전체읽기
	 	request.getCookie()
	
	Session : 서버에 저장(사용자의 일부정보 저장. 장바구니 등)
	 저장
	 	setAttribute()
	 저장값 읽기
	 	getAttribute()
	 저장된 데이터를 1개씩 삭제 
	 	removeAttribute()
	 저장된 데이터 전체 삭제
	 	invalidate()
	 저장기간 설정
	 	setMaxInactiveInterval(1800)	: 초단위. default=30분
	 -	getID() : 사용자마다 세션은 서버에 한개만 생성(구분자)
	 	isNew() : 새로 생성된 세션 여부 확인
	-데이터를 지속적으로 관리하는 클래스
	
	
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