<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  %>
 <!-- 
 	include 지시자 : JSP안에 특정부분에 다른 jsp추가해서 사용가능
 		각 jsp에 공통으로 사용되는 파일이 있는 경우 주로 사용(메뉴, footer, 로고/검색창, 사이트 등)
 		
 	include 
 		같은 변수 사용시 오류방생
  -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table class="table_content" width="800" height="100">
		<tr> 
			<td colspan="2" height="100"></td>
			<%@ include file="header.jsp" %>
		</tr>
		<tr> 
			<td width="300" height="500"></td>
			<%@ include file="aside.jsp" %>
			<td width="500" height="500"></td>
			<%@ include file="section.jsp" %>
		</tr>
		<tr> 
			<td colspan="2" height="100"></td>
			<%@ include file="footer.jsp" %>
		</tr>
	</table>
</body>
</html>