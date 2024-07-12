<%--
	jsp == 
	public void _jspService(request){
		사용자 요청에 대한 처리내용 코딩(메소드 영역에서 코딩)
		//jsp마다 request를 가진다
	}
		
		
	jsp 
	 a.jsp -- 실행요청 -- a_jsp.java -- 컴파일 -- a_jsp.class -- 인터프리터 -- out.write() : 브라우저 실행 -- 메모리에 저장
	 
	지시자 
	 page/ taglib
		page : JSP에 대한 정보 
			브라우저에 알려주는 정보 : contentType="text/html, text/xml, text/plain"
			라이브러리 읽기 : import=" , "
			에러시 출력 페이지 : errorPage="에러내용출력파일"
			HTML 출력 메모리 공간	 : buffer="kb"	(default=8kb)
	액션태그
		<jsp:include> : 파일 여러개를 묶어 하나의 파일로 제작
		<jsp:useBean> : 클래스 메모리 할당
		<jsp:setProperty> : 멤버변수의 값 채우기
		
	자바/HTML구분
		<% %> : 일반자바코딩, 지역변수만 사용가능, 연산자, 제어문, 메소드 호출 영역
		<%= %> : 변수출력(브라우저 출력)
	내장 객체
		request : 사용자 요청 정보, 추가 정보
		response : 서버에서 요청에 대한 응답정보(HTML/Cookie)
		session : 서버에 사용자의 일부 정보 저장
		application : 서버와 관련된 정보
		out : 출력 버퍼와 관련 정보
		pageContext : JSP 파일과 관련 정보/웹 흐름에 대한 정보
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