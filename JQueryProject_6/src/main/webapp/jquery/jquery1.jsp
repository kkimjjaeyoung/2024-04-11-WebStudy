<%--
자바스크립트 : 태그 제어, 이벤트 처리, 사용자 입력 제어, 동적 페이지 제작 등(브라우저에서 제어)
	자바스크립트 사용방법 
	 1. 내부 스크립트 : 한개의 파일ㄴ에서만 제어
	 	<head>
	 		<script type="text/javascript">
	 		함수
	 		window.onload=function(){
	 		
	 		}
	 		</script>
	 	</head>
	 2. 외부 스크립트 : 전체 파일에 적용
	 	<head>
	 		<script type="text/javascript>
	 	</head>
	 3. 인라인 스크립트 : 태그만 제어
	 	<a herf="javascript:함수호출">
	 	
	 자바스크립트의 변수선언
	  let, var, const : 값 적용에 따라 데이터형을 자동으로 설정
	  	let : scope를 명확하게 만들어준다(ES6).
	  	var : scope가 명확하지 않다(ES5). 메모리에 남는다.
	  	const : 상수형 변수. 자바에서 데이터 전송.
	 자바스크립트의 데이터형
	 	number : 숫자형(int, double...)
	 	string : 문자형(char, string...)
	 	boolean : true/false(숫자도 가능. 0/0.0을 제외한 모든 숫자는 true)
	 	array : 배열([]. object단위.)
	 	object : 배열({}. {키:값, 키:값....})
	 	undefined : 변수에 값이 없는 경우
	 	function : 함수(매개변수로 사용 가능. 시스템에 의해 자동 호출=callback함수)
	 	
	 연산자
	 	산술연산자 : +, -, *, /, % (+는 문자열 결합이 가능. 정수/정수=실수.)
	 	비교연산자 : ===, !==, <, >, <=, >=
	 	논리연산자 : &&, ||, !
	 	대입연산자 : =, +=, -=
	 	형변환 연산자 : HTML에서 읽어오는 모든 데이터 누자열
	 		숫자 변환 : Number("10"), parseInt("10")
	 		문자 변환 : String(10)
	 		논리 변환 : Boolean("true/false")		-	0이 아닌 숫자는 전부 true.
	 제어문
	 	저선문 : if, if~else
	 	반복문 : for, for of
	 	반복제어 : break
	 배열 : []
	 객체 : {}
	 RestFul : 다른 프로그램과 연동에 사용(자바<->자바스크립트 등)
	 
	 함수
	 function 함수명(매개변수..){}
	 let 함수명=function(){}
	 let 함수명=()=>{}
	 
	 useEffect(){
	 	이벤트를 설정
	 	let 함수명=()=>{}
	 }
	 
	 자바스크립트 기본 객체
	  String : 문자열
	  	substring(시작인덱스, 끝인덱스) : 문자열을 자르는 경우(인덱스번호는 0번부터 시작)
	  	indexOf() : 찾기
	  	length()
	  	split()
	  	trim()
	  	
	  Number : 숫자
	  	형변환
	  	NaN : 연산처리가 안된 경우
	  Array : 배열
	  	map() : for문
	  	push() : 배열 추가
	  	pop() : 마지막 제거
	  	slice(start, end) : 새로운 배열을 만든다
	  	... : 그대로 복사
	  Math : 수학
	  	ceil()
	  	round()
	  	random()
	  Date : 날짜
	  	getFullYear()
	  	getMonth()
	  	getDate()
	  	getDay() : 요일 읽기
	  
	브라우저 객체
		window : 브라우저 제어(open,close,scrollbar)
			location : 화면 이동(href)
			document : 화면 제어(write, querySelector)
			history : 기록 정보(back, go)
			event : 이벤트 처리(function aaa(event))
	
	라이브러리
		jquery : 단순하게 만든 라이브러리. 대부분 브라우저에서만 사용 가능. 호환성이 좋음.
			html(DOM) : 트리형태를 쉽게 조작 가능. 간단하게 CSS적용 가능
				let a=document.quertSelector("a")
				a.style.vackground='red'
				
				$('a').css('background','red')
	문법 형식
		자바스크립트
			main : window.onload=function(){}
		Jquery
			main : $(function(){}), $(document).ready(function(){})
		Vue3
			main : new Vue({ mounted:function(){} })
		React 
			classMain extends Component{ componentDidMount(){} }
			function main() { use Effect( ()=>{ }) }
		React-Query : 서버연결
		
	Jquery : 태그를 제어하는 프로그램(값, 속성, CSS, 이벤트 제어)
		$('태그명').처리
		$('아이디명').처리
			1. 값 읽기(태그)
				var() / var(값) : input, select, textarea
				text() / text(값) : 모든 태그(<태그>값설정</태그>)
				html() / html() : HTML 적용(단일 적용)
				appent() / appent() : HTML 적용(동시 적용)
			2. 제어(이벤트)
				click
				change
				hover
				keyup
				keydown
			3. Ajax
				브라우저 : HttpXMLRequest가 존재(서버 연결과 응답 수령)
					if(heepRequest.readystate==4){
						if(httpRequest.status==200{}
					}
					== success:function() {}
				= $.ajax({
						type:		-get/post
						url:		-실행할 JSP 지정
						data:		-{키:값}
						success:fnction(){
							//정상수행시 실행
						}
						error:function(e){
							//서버에서 오류 발생 시
						}
					})
		
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