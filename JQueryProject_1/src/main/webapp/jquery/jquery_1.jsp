<%--
	JQuery : 자바스크립트 라이브러리(태그,속성을 제어하는 프로그램)
	 태그 호출법
		-document.querySelector("")
		-${""}
	JQuery : Selector : 태그를 찾아 제어하는 방식
		- id -> $("#id명")
		- class -> $('class명')
		- tag -> $('태그명')
		- tag -> $('div span')
		- tag -> $('div>span')
		- tag -> $('input[type="button"])
		
	 라이브러리 추가
	 	<script src="URL>
 --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="http:code.jquery.com/jquery.js"></script>
<!-- 라이브러리 로드 -->
<script type="text/javascript">
$(function(){
	//1. 문법은 자바스크립트(변수,연산자, 제어문, 함수...)
	$('h1').css("color", "red")
	$('.a').css("color", "blue")
	$('#b').css("color", 'green')
	//selector : 태그 ->CSS
	//브라우저 안에서 태그를 제어하느 프로그램
	//크롤링 : 태그의 값을 가져와서 저장
})
</script>
</head>
<body>
	<h1>Hello</h1>
	<h1 class="a">Hello2</h1>
	<h1>Hello3</h1>
	<h1>Hello4</h1>
	<h1 id="b">Hello5</h1>
</body>
</html>