<%--
JQury : 자바스크립트 기반		
MVC, JSP, Spring : 자바 기반
MyBatis, JPA, DBCP : 오라클
	
	1. 자바스크립트의 핵심
		변수선언/연산자/제어문은 동일
		함수/객체모델 : 태그를 읽어서 이벤트 처리
			window.onload(function(){처리}	
			- JQuery : $(function(){처리})
			- VueJS : mounted(){}
			- React : componentDidmounted(){}
		데이터 관리 프로그램 : 자바에서 출력데이터 수령
			단일 데이터 : 문자열
			여러개 데이터 : [], {}
			Restful : 자바와 자바스크립트의 통신과정(JSON으로 처리)
		자바는 오라클에 있는 데이터를 읽어와서 자바스크립트로 전송
		자바스크립트는 데이터를 받아서 동적으로 화면 처리 : 데이터변경(태그생성, 속성, CSS제어, 이벤트 처리)
		HTML/CSS 는 기본 화면 출력
	*자바스크립트의 핵심 
		객체 모델 : 태그르 가져온다
			- document.querySelector("CSS선택자")		- $("선택자")
			- document.getElementById("아이디명")
			VueJS		-	<a href="" ref="" v-model=""> : 양반향
			React		-	e.target.value
		함수 생성 방법
			1). 익명의 함수 : 함수명이 없는 상태
				function(){}
				window.onload=function(){}
				.then(function){})
				$().click(function(){})
				public String aaa(){}	-	자바
				fun aaa() 				-	코틀린
				def aaa()				-	파이썬
			2). 선언적 함수 : 함수명이 있는 상태
				function 함수명(){}			-	요청처리
				let func=function(){}		-	이벤트 처리
				let func=()=>{}				-	이벤트 처리
			3). 유형
				리턴형이 있음. 매개변수 있음.
					function func_name(id,pwd){		//매개변수명만 설정
						return 값;					//리턴형을 사용하지 않는다(기제하지 않음)
					}
				리턴형이 있음. 매개변수 없음.
					function fun_name(){
						return 값;
					}
				리턴형이 없음. 매개변수 있음.
					function fun_name(id, pwd){
						
					}
				리턴형이 없음. 매개변수 없음.\
					function fun_name(){
					}
			*ES 6 권장사항
				변수는 var보단 let/const사용
				함수는 let func_name=()=>	권장(화살표함수 권장)
					 
				
				class A{
					constructer(){
					let a=10;
					생성자
					axios.get().then(function){		//오류. function을 지워 제약을 풀어 this함수의 영역을 바꿔야 함
						console.log(this.a)		
					})
				}
			4). 호출방법 : 자동호출은 없어 호출해서 사용
				function func_name(){}		-func_name()
				let func_name=()=>{}		-func_name()
				let func_name=function(){}	-func_name()
				
				function func_name(name){}		-func_name("A")				//매개변수.
				let func_name=(name)=>{}		-func_name("B")				//데이터형은 매개변수에 따라 변경
				let func_name=function(name){}	-func_name("C")				
		**내장객체
		**태그 선택방법
		
			태그 생성
			createelement("태그명")
			createNextNode()
			속성값 읽기
				getAttribute(속성명)
				$().attr(속성명)
			속성값 추가	
				setAttribute(속성명, 값)
				$().attr(속성명, 값)
			태그 사이의 값
			textContent		-text()
			innerHTML		-html()
	2. 

 --%>
 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>태그 생성</title>
<script type="text/javascript">
window.onload=function()

</script>
</head>
<body>

</body>
</html>