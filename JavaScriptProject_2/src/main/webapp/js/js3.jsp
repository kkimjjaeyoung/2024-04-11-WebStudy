<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
let callback=function(){
	document.write("함수 호출...<br>")
}
function func(callback){
	for(let i=1; i<=10; i++){
		call()
	}
}
window.onload=function(){
	func(callback)	//setTimer, setInterval
	//원하는 시간에 출력, 원하는 시간마다 출력이 가능하게 만든다
	
}
</script>
</head>
<body>

</body>
</html>