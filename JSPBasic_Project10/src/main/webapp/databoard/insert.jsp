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
	<h3>글쓰기</h3>
	<div class="row">
	<form method="post" action="insert_ok.jsp" enctype="multipart/form-data">
		<table class="table">
			<tboby>
			<tr>
				<td width=15% class="text-right">이름</td>
				<td width=85%>
				<input type=text name=subject size=60 class="input-sm" required>
			</tr>
			<tr>
				<td width=15% class="text-right">내용</td>
				<td width=85%>
				<input type=password name=subject size=60 class="input-sm" required>
			</tr>
			<tr>
				<td width=15% class="text-right">첨부파일</td>
				<td width=85%>
				<input type=fiee name=subject class="input-sm" required>
			</tr>
			<tr>
				<td width=15% class="text-right">내용</td>
				<td width=85%>
				<input type=password name=subject size=60 class="input-sm" required>
			</tr>
			<tr>
				<td width=15% class="text-right">내용</td>
				<td width=85%>
				<input type=password name=subject size=60 class="input-sm" required>
			</tr>
			<tr>
				<td colspan="2" class="text-center">
					<button class="btn-sm btn-danger">글쓰기</button>
					<input type=button valuse="취소" class="btn-sm btn-primary"
						oneclick="javascript:history.back()">
			</tr>
			</tboby>
		</table>
		</form>
	</div>
	</div>
</body>
</html>