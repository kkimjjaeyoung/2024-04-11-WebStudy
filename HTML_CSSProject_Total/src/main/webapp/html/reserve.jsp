<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, com.sist.dao.*" %>
 <%
 //출력할 데이터 가져오기
 FoodDAO dao=FoodDAO.newInstance();
 List<FoodVO> list=dao.foodListData();
 
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<style type="text/css">
	.container{margin-top:50px; /*margin: top right bottom left*/}
	.row{margin:0px auto;/*가운데정렬*/ width:960px;}
	tr.infos:hover{cursor:pointer; background-color: #fc6}
</style>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/jaavscript">
$(function(){
	$('.infos').click(function(){
		let name=$(this)

</script>
</head>
<body>
	<div class="container">
		<div class="row">
			<table class="table">
			<tr>
				<td>
					<table class="table">
						<caption><h3>맛집정보</h3></caption>
						<%-- --%>
						<tr>
						<th></th>
						<th>업체명</th>
						</tr>
						<%
						for(FoodVO vo:list){
						%>
							<tr class="infos">
							<td class="text-center">
								<img src="<%=vo.getPoster() %>" width="30" height="30">
							</td>
							<td><%=vo.getName()%></td>
						<%
						}
						%>
					</table>
				</td>
				<td>
				<table class="table">
						<caption><h3>맛집정보</h3></caption>

						<tr>
						<td>
						<th>업체명</th>
						</tr>
						<%
						for(FoodVO vo:list){
						%>
							<tr class="infos">
							<td class="text-center">
								<img src="<%=vo.getPoster() %>" width="30" height="30">
							</td>
							<td><%=vo.getName()%></td>
						<%
						}
						%>
					</table>
			</tr>
			</table>
		</div>
	</div>
</body>
</html>