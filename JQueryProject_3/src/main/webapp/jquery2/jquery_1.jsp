<%--
JQeury : 자바스크립트 라이브러리
	1.라이브러리 다운로드/원격
		원격
			<script type="text/javascript" src="http://code.jquery.com/jquery.js">
		**jquery : 충돌이 되면 안된다(반드시 main.jsp에만 삽입)
	2. JQuery의 시작
		자바스크립트의 시작 : 
			window.onload=function(){}
			$(function(){소스코딩})
			$(document).ready(function(){소스코딩})
		jquery으리 시작
 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- 라이브러리 추가 -->
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">
$(function(){
	//window.onload=function(){}
	//setter : val("값")
	$('#name').val("홍길동")			//값 추가. 자동 로그린
	$('button').on('click', function(){
		let addr=$('#addr').val()		//입력값 읽기. 로그인
		alert(addr)
	})
})
</script>
</head>
<body>
	<input type="text" id="name" size=15><br>
	<input type="text" id="addr" size=15><br>
	<button>클릭</button>
	
</body>
</html>