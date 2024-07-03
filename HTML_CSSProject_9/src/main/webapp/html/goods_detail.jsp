<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*,com.sist.dao.*" %>
    
<%
GoodsAllDAO dao=GoodsAllDAO.newInstance();
String no=request.getParameter("no");
GoodsAllVO vo=dao.goodsDetailData(Integer.parseInt(no));
//vo에 저장된 데이터 출력
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
	<div class="row">
	<table class="table table-striped">
			<tr>
				<td width="30%" class="text-center" rowspan="6">
					<img src="<%vo.getGoods_poster(); %>" style="width:100%" class="img-rounded">	
				</td>
				<td colspan="2"><h3><%= vo.getGoods_name() %></h3></td>
				<td colspan="1"><h6><%=vo.getHit() %></h6>
			</tr>
			<tr>
				<th>제품가격</th>
				<td><%= vo.getGoods_price()%></td>
			</tr>
			<tr>
				<th>정가</th>
				<td><%= vo.getGoods_first_price()%></td>
			</tr>
			<tr>
				<th>할인률</th>
				<td><%= vo.getGoods_discount() %></td>
			</tr>
			<tr>
				<th>제품가격</th>
				<td><%= vo.getGoods_price()%></td>
			</tr>
			<tr>
				<th>무료배송</th>
				<td><%= vo.getGoods_delivery()%></td>
			</tr>
			<tr>
				<td colspan="2" class="text-right">
					<input type=button value="찜하기" class="bnt-xs btn-primary">
					<input type=button value="장바구니" class="bnt-xs btn-success">
					<input type=button value="바로구매" class="bnt-xs btn-info">
					<input type=button value="장바구니 목록" class="bnt-xs btn-warning" onclick="javascript:history.back()">
				</td>
			</tr>
	</table>
	<table class="table">
			<tr>
				<td>
					<pre>
					
					</pre>
				</td>
			</tr>
		</table>
	</div>
	</div>
</body>
</html>