<%--
	if ~ else
 --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
window.onload=()=>{
	//화면에 HTML이 실행되면 수행하는 함수 : 리턴형 사용 안함. 매개변수의 데이터형 사용안함.
	//function login(let id, let pwd) - error
	//function login(in, pwd) - O
	/* let a=prompt("정수입력") //입력값을 받는 경우
	console.log("a="+a)
	if(a%2==0){
		document.write(a+"는 짝수")
	}
	else{
		document.write(a+"는 홀수")
	} */
}
	let user=prompt("ID 입력")
	if(user==="admin"){
		document.write("관리자로 입장")
	}
	else{
		document.write("일반 사용자로로 입장")
	}
</script>
</head>
<body>

</body>
</html>