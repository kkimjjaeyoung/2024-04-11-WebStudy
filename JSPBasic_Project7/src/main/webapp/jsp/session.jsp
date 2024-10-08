<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="row">
	<h3 class="text-center">Response객체</h3>
		<table class="table">
			<tr>
				<th width="20%">클래스명</th>
				<td width="80%">HttpServletRequest</td>
			</tr>
			<tr>
				<th width="20%">기능</th>
				<td width="80%">
					<ul>
						<li>헤더정보 : 데이터가 도착하기 전 먼저 전송하는 데이터</li>
						<li>화면이동</li>
						<li>전송형식</li>
					</ul>
				</td>
			<tr>
				<th width="20%">주요 메소드</th>
				<td width="80%">
					<ul>
						<li>void setHeader(String) : 다운로드시 사용. 먼저 전송값</li>
						<li>void sendRedirect(String URL) : 화면이동. request가 초기화</li>
						<li>void setContentType(String mim) : 브라우저에 전송하는 형식. text/html, text.xml, texl/plain(json)</li>
						<li>void addCookie(Cookie c) : 쿠키를 브라우저로 전송시 사용</li>
						<li></li>
						<li></li>
						<li></li>
						<li></li> 
					</ul>
				</td>
			</tr>
		</table>
	</div>
</body>
</html>