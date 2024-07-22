<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
	<h3>내용보기</h3>
		<div class="row">
			<table class="table">
				<tr>
					<th width=20% class="text-center">번호</th>
					<td width=30% class="text-center">${vo.no }</td>
					<th width=20% class="text-center">작성일</th>
					<td width=30% class="text-center">${vo.dbday }</td>
				</tr>
				<tr>
					<th width=20% class="text-center">이름</th>
					<td width=30% class="text-center">${vo.name }</td>
					<th width=20% class="text-center">조회수</th>
					<td width=30% class="text-center">${vo.hit }</td>
				</tr>
				<tr>
					<th width=20% class="text-center">제목</th>
					<td colspan="3">${vo.subject }</td>
				</tr>
				<tr>
					<td colspan="4" valign="top" class="text-left" height="200">
						<pre style="white-space: pre-wrap; border:none; background-color: white">${vo.content }</pre>
				</tr>
				<tr>
					<td colspan="4" class="text-right">
						<a href=></a>
						<a href=>삭제</a>
						<a href=></a>
						<a href=></a>
					</td>
				</tr>
			</table>
		</div>
	</div>
</body>
</html>