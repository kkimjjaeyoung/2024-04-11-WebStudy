<%--
	
 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">
$(function(){
	$('#aaa span').css("color", "red")
	$('#bbb span').css("color", "green")
	$('#ccc span').css("color", "blue")
})
</script>
</head>
<body>
	<div id="aaa">
		<span>Hello</span>
	</div>
	<div id="bbb">
		<span>Hello</span>
	</div>
	<div id="ccc">
		<span>Hello</span>
	</div>
</body>
</html>