<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, com.sist.dao.*"%>
<%
	
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.container{margin-top: 50px;}
	.row{margin: 0px auto; width: 800px;}
	h3{text-align: center}
</style>
</head>
<body>
	<div class="container">
	<h3>사원목록</h3>
		<div class="row">
			<table class="table">
				<tr>
					<th class="text-center">사번</th>
					<th class="text-center">이름</th>
					<th class="text-center">직위</th>
					<th class="text-center">입사일</th>
					<th class="text-center">급여</th>
				</tr>
				<%
					for(EmpVO vo:list){
				%>
					<tr>
						<th class="text-center"><%=vo.getEmpno() %></th>
						<th class="text-center"><%=vo.getEname()%></th>
						<th class="text-center"><%=vo.getJob() %></th>
						<th class="text-center"><%=vo.getHiredate() %></th>
						<th class="text-center"><%=vo.getSal() %></th>	
					</tr>
				<%	} %>
			</table>
		</div>
	</div>
</body>
</html>