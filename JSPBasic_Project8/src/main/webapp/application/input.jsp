<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Application-RealPath</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<style>
	.container{margin-top: 50px;}
	.row{margin: 0px auto; width: 600px;}
	h3{text-align: center}
</style>
</head>
<body>
	<div class="container">
	<h3>파일업로드</h3>
	<div class="row">
		<form method="post" action="save.jsp" enctype="multipart/form-data">	<!-- enctype : 파일 업로드 프로토콜. 파일업로드시 필수! 반드시 post 기반으로 시작 -->
			<input type=file name=upload size=25 style="float: left;" class="input-sm">
			<button class="btn-sm btn-danger">전송</button>
		</form>
	</div>
	</div>
</body>
</html>	