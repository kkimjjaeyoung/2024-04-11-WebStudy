<%--
	자바스크립트 : HTML과 CSS로 구성된 웹페이지를 동적으로 만들어주는 언어
	 - 서버와 관련없이 브라우저에서 동적으로 변경
	 - 프론트 개발의 대표적 프로그램
	 - 라이브러리(JQuery, Ajax, VueJS, ReactJS, NextJS...)
	 - 프로그램 언어 형식
	 	데이터 저장/관리/제어/연산
	 		
	 		- 제어
	 			1). 조건문
	 			 - 단일조건문
	 			 	if(조건문:비교/논리/부정연산자){
	 			 		실행문장	//조건이 true일때 사용
	 			 	}
	 			 - 선택 조건문
	 			 	if(조건문){
	 			 		조건이 true일때
	 			 	}
	 			 	else{
	 			 		조건이 false일때 
	 			 	}
	 			 - 다중 조건문
	 			 	if(조건문){
	 			 		조건이 true면 수행후 종료. false면 아래 문장으로
	 			 	}
	 			 	else if(조건문){
	 			 		조건이 true면 수행후 종료. false면 아래 문장으로
	 			 	}
	 			 	.
	 			 	.
	 			 	else{		//생략가능
	 			 		위 모든 문장이 false일때(조건식을 만족하는 경우가 없을 경우)
	 			 	}
	 			2). 반복문(자바스크릡트 자체에서는 사용안함. 자바에서 전송된 데이터를 자바스크립트로 출력)
	 			 -	for(초기값;조건식;증가식){	
	 					반복수행문장
	 				}
	 			 -	for(변수 of 배열){
	 			 		//forEach
	 			 	}
	 			 -	라이브러리 : 배열명.forEach(function(변수){})		-배열에서 값을 1개씩 읽어 매개변수로 전송
	 			 			 배열명.map(function(변수){})			-가장 많이 사용되는 반복문
	 		
	 			3). 반복제어
	 		- 연산
	 			1).단항연산자 : 증감연산자(++,--), 부정연산자(!), 형변환연산자(숫자변환 : Number()/ParseInt(), 문자변환 : String(), 논리변환 : Boolean()
	 			2). 이항연산자 : 산술연산자(+,-,*,/,%. +는 문자열결합에도 사용. /는 0으로는 나누기불가. 정수/정수=실수. %는 왼쪽부호가 남는다. 연산처리 안되는 상태는 NaN), 비교연산자(===, !==, <, >, <=, >=), 논리연산자(&&, ||), 대입연산자(=, +=, -=)
	 			3). 삼항연산자 : (조건)?값1:값2	 					
	 	1. 변수 : 한개의 데이터를 저장(자동지정변수 사용)
	 		var : 사용범위가 명확하지 않음. 메모리 해제가 안됨.
	 		let : var의 단점 보완. {}이 종료되면 자동 메모리 회수
	 		const : 
	 		**자동지정변수(자바스크립트에서 사용하는 데이터형) : number(숫자.정수/실수), string(문자/문자열), boolean(true/false), object([]array, {})
	 			*** []은 object로 되어있어 다른 변수명도 사용가능. {}는 {키:값, 키:값...}으로 구성되며 키를 맴버변수로 인식한다.
	 	2. 배열 : 여러개 데이터를 저장
	 		[]
	 	3. 객체 : 한개에 대한 정보를 한번에 저장
	 	 - HTML태그 읽어오기
	 		document.getElementByID(id명)
	 		document.getElementByTagName(tag명)
	 		document.getElementByClassName(class명)
	 		document.querySelector(css선택자)
	 	- 화면 출력
	 		document.write()
	 		alert() : 
	 		태그명.innerHTML : 태그와 태그 사이의 데이터 첨부.
	 		console.log() : 콘솔창에만 출력. 자바와 연동해 에러 검출, 확인용으로 사용
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