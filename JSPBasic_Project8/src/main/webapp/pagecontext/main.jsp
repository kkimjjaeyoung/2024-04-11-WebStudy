<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<style>
	.container{margin-top: 50px;}
	.row{margin: 0px auto; width: 600px;}
	h3{text-align: center}
</style>
</head>
<body>
	<div class="container">
		<div class="row">
			<%
				pageContext.include("a.jsp");
			%>
		</div>
		<div class="row">
		<div class="col-sm-8">
			<%
				pageContext.include("b.jsp");
			%>
		</div>
		</div>
		<div class="row">
		<div class="col-sm-8">
			<%
				pageContext.include("c.jsp");
			%>
		</div>
		<div class="row">
		<div class="col-sm-8">
			<%
				pageContext.include("d.jsp");
			%>
		</div>
		</div>
	</div>
</body>
</html>