<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stlyesheet" href="../shadow/css/shadowbox.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript" src="../shadow/js/shadowbox.js"></script>
<script type="text/javascript">
Shadowbox.init({
	players:['iframe']
})
$(function(){
	$('#checkBtn').click(function(){
		Shadowbox.open({
			content:'../member/idcheck.jsp',		//content : 창 띄우기
			player:'iframe',
			title:'아이디중복체크',
			width:350,
			height:250
		})
	})
})
</script>
</head>
<body>
	<div class="wrapper row3">
		<main class="container clear">
		<h2 class="sectiontitle">회원가입</h2>
			<input type="button" class="btn btn-sm btn-danger" value="아이디체크" id="checkBtn">
		</main>
	</div>
</body>
</html>