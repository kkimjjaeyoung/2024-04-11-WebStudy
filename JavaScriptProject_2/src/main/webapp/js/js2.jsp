<%--
함수/배열함수/객체지향/JQuery
	함수(메소드)
	 - 공통점 : 기능처리/반복제거/재사용/구조적인 프로그램
	 - 차이점 : 메소드는 클래스 종속(클래스 내에서만 사용), 함수는 독립적으로 사용
	 	익명의 함수 : Callback, 함수를 변수형처럼 처리할 때
	 		function(){처리}
	 			window.onload=function(){}
	 			map(function(){})
	 			forEach(function(){})		
	 	선언적 함수 : 
	 		function 함수명(매개변수...){처리기능}
	 	함수의 구성요소
	 		선언부 : 함수명/매개변수 //리턴형은 작성하지 않는다(리턴은 가능)
	 		구현부 : { 변수(지역변수)	연산처리	제어문	 } 	
 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
function plus1(a,b){
	return a+b
}
let plus2=function(a,b){
	return a+b
}
let plus3=(a,b)=>{return a+b} 
let plus4=(a,b)=>a+b

window.onload=function(){
	let a=10;
	let b=20;
	
	let c=plus1(a,b)
	let d=plus2(a,b)
	let e=plus3(a,b)
	let f=plus4(a,b)
	
	document.write("c="+c+","+typeof plus1+"<br>")
	document.write("d="+d+","+typeof plus2+"<br>")
	document.write("e="+e+","+typeof plus3+"<br>")
	document.write("f="+f+","+typeof plus4+"<br>")
}
</script>
</head>
<body>

</body>
</html>