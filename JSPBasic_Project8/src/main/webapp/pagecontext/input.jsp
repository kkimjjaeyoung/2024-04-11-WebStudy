<%--
	사용자가 데이터 전송하는 방법
	 request에 값을 모아서 전송
		?변수=값	-->	GET
		<form>	-->	submit(post방식)
 --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Application-RealPath</title>
<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<style>
	.container{margin-top: 50px;}
	.row{margin: 0px auto; width: 600px;}
	h3{text-align: center}
</style> -->
</head>
<body>

		<form method="post" action="save.jsp">	<!-- enctype : 파일 업로드 프로토콜. 파일업로드시 필수! 반드시 post 기반으로 시작 -->
			ID : <input type=text name=id size=15><br>
			PASSWORD : <input type=password name=password size=15><br>
			<input type=submit value="전송">
		</form>

</body>
</html>	