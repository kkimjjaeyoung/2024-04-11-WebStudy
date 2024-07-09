<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--
	스크립트립
	<% %> : 자바 일반 소스
	<%= %> : 화면에 데이터 출력. 세미콜론을 사용하지 않음
 --%>
 
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="table.css">
<style type="text/css">
	.table_content{margin: 0px auto; width: 600px;}
	h3{text-align: center;}
</style>
</head>
<body>
	<h3>구구단</h3>
	<table class="table_content">
		<tr>
		<%
			for(int i=2; i<=9; i++){
		%>
			<%
				for(int j=1; j<=9; j++){
			%>
				<td class="tdcenter">
					<%= j+"*"+i+"="+(j*i) %>
				</td>
			<%
				}
			%>
		<%
			}
		%>
		</tr>
	</table>
</body>
</html>