<%--
자바스크립트 : 브라우저 자체에서 처리(브라우저에서 동적으로 처리. 동적페이지.)		-	HTML/CSS : 정적페이지
 1). HTML/CSS : 화면 UT
 2). 자바스크립트 : 화면에 대한 동적처리
  1)). 사용법
  	내부스크립트(한개의 파일에서만 작업) : <script type="">
  	외부스크립트(여러개 파일에 적용. 파일로 제작) : <script type="" src="파일명"> - impory
  	인라인 스크립트(태그 1개를 제어) : <input type=button onclick="javascript:history.back()">
  2)). 버전
  	ES5
  		var : 변수(자동지정변수. 데이터형을 사용하지 않음. 사용범위가 명확하지 않음. 메모리 누수 발생.)
  	ES6
  		let : 변수(자동지정변수. 데이터형을 사용하지 않음. 사용범위가 명확함. {}안에서만 사용 가능.)
  		const :상수형 변수(값변경 불가.)
  		람다식 : 화살표 함수
 3). 자바 : 데이터를 관리
 4). 오라클 : 데이터 저장 공간
	1. 변수설정 : 데이터형을 사용하지 않는다(자동지정변수 사용). 전역변수, 지역변수 사용 가능(<script ~ > : 전역변수 	function ~{변수선언} " 지역변수)
		1). 변수설정은 초기값에 따라 자동으로 데이터형 지정
			1)). number : 실수, 정수
			2)). string : 문자, 문자열
			3)). object : 배열 / 객체
			4)). boolean : true/false -	숫자도 가능(0, 0.0이 아닌 모든 수==true)
			5)). function : 함수도 데이터형으로 취급
			6)). undefined : 변수에 값이 없는 상태
			7)). NaN : 연산이 안되는 경우
			8)). null : 배열, 객체에 값이 없는 경우
			ex)))
				let i=10								-	number - int
				let i=10.5								-	number - double
				let i='A'								-	string
				let i="A"								-	string
				let i=["a", "b"...]						-	object - 배열[]. 모든 데이텨형을 배열로 통합 가능.
				let i={"name":"이름", "age"=20...}		-	object - 객체. name&age==맴버변수. i.name,i.age==JSON.
				let i=true								-	boolean
				let i=function(){}						-	function - 매개변수로 사용 가능(JQuery. Callbakc함수.)
		-> 브라우저에 출력
			document.write()	--	sysout. <br>사용.
			innerHTML : 태그안에 데이터 첨부.
			alert() : 모델창을 띄우는 경우
		-> 도스창에 출력
			console.log() 
		-> 메인함수(자바의 main)
			window.onload=function(){	}
			-> JQuery : $(function(){})
			-> VueJS : mounted()
			-> React : useEffect()	
		->  
	2. 연산자
	3. 제어문
	4. 함수
	5. 라이브러리(내장함수)
	6. 객체지향
	
자바스크립트 라이브러리
	1. JQuery(ajax)
	2. VueJS
	3. ReactJS
	4. NextJS / NodeJS
	
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">	//내부스크립트(파일안에서만 처리)
	window.onload=function(){
		//1. 변수설정
		let a=10
		let b=10.5
		let c='ABC'
		let d="DEF"
		let e=true
		let f=[1,2,3,4,5]
		let g={"name"="홍길동" "age"=25}
		//typeof(데이터형 확인)
		document.write(a+":"+typeof a+"<br>")
		document.write(b+":"+typeof b+"<br>")
		document.write(c+":"+typeof c+"<br>")
		document.write(d+":"+typeof d+"<br>")
		document.write(e+":"+typeof e+"<br>")
		document.write(f+":"+typeof f+"<br>")
		document.write(g+":"+typeof g+"<br>")
		
		//데이터형 변경
		a="abcfedf"
		document.write(a+":"+typeof a+"<br>")
	}
}
</script>
</head>
<body>

</body>
</html>