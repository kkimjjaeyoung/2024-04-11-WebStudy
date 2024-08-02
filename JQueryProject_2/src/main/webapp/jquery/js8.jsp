<!-- 
브라우저 내장객체(계층형 구조)
	window : 브라우저
	-계층
		-document : 화면 출력 담당
			-form
				-input
				-select
				-textarea
			-img
			-input
			-a
			-.....
		-history : 화면 이동 기록
		-location : 화면 이동
		-frame : 화면 구성
	
	window : close(), open(), scrollbar, setTimer() - 실행 후 종료(1번만), setInterval() - 계속해서 수행(실시간 데이터)
	document : <body>안의 태그 제어
		- createElement(), write, querySelector, appendChild()....
	history : 브라우저 기록 정보
		- back(), go(-1)...forward()
	location : 주소정보
		-href : 이돌할 위치 지정 -sendRedirect()	
	
 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
widnow.onload=()=>{
	let btn=document.querySelector("button")
	btn.addEventListener('click',()=>{
		window.open('js_7.jsp', 'winname', 'width=500', 'height=700', 'scrollbars=yes')
	})
}
</script>
</head>
<body>
	<button>클릭</button>
</body>
</html>