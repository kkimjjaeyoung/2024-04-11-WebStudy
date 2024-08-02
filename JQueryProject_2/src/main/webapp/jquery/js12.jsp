<%--
	JSON : JavaScript Object Notaton(자바스크립트 객체 표현법)
		
	목적 : 클라이언트 서버의 데이터 교환 목적(XML to JSON)
	
	요청값 전송
	
	응답 받기
	
	형식)
		{"sabun":1, "name":"홍길동", "dept":"개발부...}
		{"sabun":1, "name":"홍길동"}
		{"name":"홍길동", "dept":"개발부...}		//동일하지 않을수도 있다
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
	let info={name:"홍길동", age:20, sex:"남자"}
	let data=JSON.stringfy(info)		//JSON to 문자열
	console.log(data)
	let change=JSON.parse(data)			//문자열 to JSON
	console.log(change)
}
</script>
</head>
<body>

</body>
</html>