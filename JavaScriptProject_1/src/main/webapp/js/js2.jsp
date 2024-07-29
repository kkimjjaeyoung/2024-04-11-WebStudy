<%--
변수설정(식별자)
	1) 알파벳으로 시작(대소문자 구분)
	2) 숫자사용 가능
	3) 키워드 사용 불가
	4) 특수문자 사용 가능(_,$)
	5) 변수명에 공백 사용 불가
	
	let / const	: 자동변수지정ㄴ
	 문장종료시 ; 	-	;를 사용하지 않는걸 권장
	 [] 배열	-	List
	 {} 객체	-	VO
자바스크립트에서 사용하는 데이터형
	1. number : 정수, 실수
	2. string
	3. boolean
	4. object
	5. null : 값이 없는 경우
	6. undefined : 변수에 값이 없는 경우
	**데이터형 확인 : typeof 변수명
	**변수는 언제든 다른 데이터형으로 변경가능
	
	변수설정 : 메모리 저장 공간(한개만 저장 가능). let/var/const(상수)
	연산자 처리
	제어문 처리
	
2. 연산자 처리
	1) 증감연산자(++, --)
	2) 형변환연산자(
		"10"	-	Number("10") 정수형 변경.	parseInt("10")
		String(10)	-	"10"
		Boolean(1)	-	true. BOolean(0)	-	false
	 산술연산자(+,-,*,/,%)
	 비교연산자(===, !==, <, >, <=, >=)
	 논리연산자(&&, ||, !)
	 대입연산자/복합대입연산자(=/+=,-=...)
	 삼항연산자((조건)?값1:값2)	-true=값1, false=값2
 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
windows.onload=function(){
/* 	let a=10;
	console.log("a="+a)
	a++
	console.log("a="+a)
	let b=10;
	console.log("b="+b)
	b--
	console.log("b="+b) */
	let c=10
	let d=c++
	document.write("c="+c+", d="+d+"<br>")	//브라우저에 출력
	
	//형변환 연산자
	
	//numbere/boolean은 언제든 변경 가능
	
	let n="10"n
	
	
}
</script>
</head>
<body>

</body>
</html>