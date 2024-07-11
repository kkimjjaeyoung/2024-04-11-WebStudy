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
	<h3 class="text-center">Request객체</h3>
		<table class="table">
			<tr>
				<th width="20%">클래스명</th>
				<td width="80%">HttpServletRequest</td>
			</tr>
			<tr>
				<th width="20%">기능</th>
				<td width="80%">
					<ul>
						<li>사용자 전송한 데이터를 관리(요청정보)</li>
						<li>브라우저 정보</li>
						<li>데이터 추가 기능</li>
					</ul>
				</td>
			<tr>
				<th width="20%">주요 메소드</th>
				<td width="80%">
					<ul>
						<li sytle="color:red">String getParameter(String key) : 사용자가 보내준 값을 받을때 사용</li>
						<li>String getParameterValues(String key) : 사용자가 보내준 값을 받을때 사용(멀티). checkbox사용시 주로 사용</li>
						<li sytle="color:red">void setCharacterEncoding("한글코드") : 디코딩에 사용(브라우저/자바는 한글호환 안됨.)</li>
						<li>String getRemoteAddress() : 사용자의 IP를 가져올 때</li>
						<li>String getRequestURI() : 사용자가 요청한 파일의 경로</li>
						<li>String getContextPath() : 경로의 루트(프로젝트명)</li>
						<li sytle="color:red">void setAttrubute(String key, Object obj) : 필요한 경우 데이터 추가 후 전송</li>
						<li sytle="color:red">Object getAttribute(String key) : 추가된 데이터 읽기</li>
						<li sytle="color:red">getSession() : 새션생성. getCookies() : 쿠기읽기</li>
					</ul>
				</td>
			</tr>
		</table>
	</div>
</body>
</html>