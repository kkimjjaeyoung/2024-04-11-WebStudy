<%--
	textContent : 문자만 설정 가능
	innerHTML : 태그를 포함해 전송 가능
 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
window.onload=function(){
	document.body.textContent="<h1>Hello JavaScript</h1>"
	document.body.textContent="<h1>Hello JavaScript</h1>"
}
</script>
</head>
<body>
	<h1>글자 조작</h1>
</body>
</html>