<%--
	제어문
		조건문
		 단일 조건문
		 	if(조건문){
		 		조건이 true일때 수행하는 문장
		 	}
		 선택 조건문
		 	if(조건문){
		 		조건이 true일때 수행하는 문장
		 	}
		 	else{
		 		조건이 false일때 수행하는 문장
		 	}
		 다중 조건문
		 	if(조건문){
		 		조건이 true일때 수행하는 문장
		 		조건이 false일때 아래의 조건문으로 이동
		 	{
		 	else if(조건문){
			 	조건이 true일때 수행하는 문장
		 		조건이 false일때 아래의 조건문으로 이동
		 	}
		 	.
		 	.
		 	.
		 	else{
		 		조건에 해당되는 문장이 없으면 처리(필요시 사용)
		 	}
		선택문
		 switch~case
		 	switch(숫자, 문자){
		 		case(값):
		 			처리문장
		 			break;
		 		case(값):
		 			처리문장
		 			break;
		 		.
		 		.
		 		.
		 		default:	//해당 case가 없는 경우. 생략가능.
		 	}
		반복문
		 while : 정해진 반복횟수가 없는 경우(조건 내 수행)
		 	초기값
		 	while(조건문){
		 		반복수행문장
		 		증감식
		 	}
		 do~while
		 for : 반복횟수가 존재하는 경우
		 	일반 for
		 		for(초기값; 조건식; 증가식){
		 			반복수행문장
		 		}
		 	for in : 인덱스 번호를 읽어와 출력
		 		for(변수 in 배열)
		 	for of : for-each. 밴수는 배열에 저장값을 읽어온다.
		 		for(변수 of 배열)
		 	함수
		 	 forEach() : 배열에서 값을 1개씩 자동으로 읽어온다
		 	 	배열.forEach(function(변수){처리})
		 	 map() : 배열에서 값을 1개씩 읽어온다
		 	 	배열.map(function(변수){처리})
		반복제어문
		 break : 반복문을 중단할때 사용
		 	if / for문. ㄷ
		 continue
 --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
/* widnow.onload=function(){
	
} */
window.onload=()=>{
	let a=10
	if(a%2==0){
		//document.write(a+"는(은) 짝수입니다")	
	}
}
function login(){
	let id=document.getElmentById("id").value
	if(id.trim()===""){
		alert("아이디 입력하세요")
	}
}

</script>
</head>
<body>
	ID:<input type=text size=10 id=id>
	<input type=button value="login" onclick="login()">
</body>
</html>