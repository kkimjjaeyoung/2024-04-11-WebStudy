<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="ajax.js"></script>
<script type="text/javascript">
function send(){
	sendRequest('sub.jsp', null, ok,'post')
}
function ok(){
	//then(), sucess:function()		//실행요청과 실행결과값 수령을 동시에
	/*
	readyState
	0. 서버연결 준비
	1. 서버연결
	2. 서버연결완료
	3. 데이터 전송준빕
	4. 데이터 전송
	*/
	if(httpRequest.readyState==4){
		if(httpRequest.status==200){	//상태코드가 200번일때(에러가 없을 때)
			let div=document.querySelector("#print")
			alert(httpRequest.responseText)
			div.innerHTML=httpRequest.responseText
			//HTML 자체 읽기 : responseText
			//XML 자체 읽기 : responseXML
		}
	}
}
</script>
</head>
<body>
	<button onclick="send()">전송</button>
	<div id="print"></div>
</body>
</html>