<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--
내부객체(내장객체/기본객체)
	request 
		1. 서버정보
			getServerName(): 고정 ip
			getProtocol() : http
			getPort() : 포트
				getRequestURL() / getRequestURI() / getContextpath() / 클라이언트IP : getRemoteAddress()
		2. 사용자 요청 정보(사용자가 보내준 데이터를 받는 메소드)
			String getParameter() : 단일값을 받을때 사용
			String[] getParameterValues() :
			setCharacterEncoding : 디코딩(utf-8) 
		3. 데이터 추가 정보
			setAttribute() : 추가
			getAttribute() : 추가된 데이터 읽기
			removeAttribute() : 삭제
 --%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Request 객체</title>
<style>
	.container{margin-top: 50px;}
	.row{margin: 0px auto; width: 600px;}
</style>
</head>
<body>
<%--사용자가 전송하는 모든 데이터는 서버를 거쳐 톰캣에 의해 request에 전송되 묶어서 넘긴다 --%>
	<div class="container">
	<h3 class="text-center">전송</h3>
		<div class="row">
			<table class="table">
			
			</table>
		</div>
	</div>
</body>
</html>