<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*,com.sist.vo.*"%>
    
<%
	GoodsDAO dao=GoodsDAO.newInstance();
	List<GoodsVO> list=dao.goodsListData();
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="table.css">
<style>
	.table_content{margin:0px auto; width:900px;}
	h1{text-align: center;}
</style>
</head>
<body>
	<h1>상품목록</h1>
	<table class="table_content">
	<tr>
		<td></td>
		<td>상품명</td>
		<td>가격</td>
	</tr>
	<%
	for(GoodsVO vo:list){
	%>
       	<tr>
        	<td class="tdcenter">
            	<img src="<%=vo.getPoster() %>" width=35 height="35">
            </td>
            <td><a href="detail.jsp?no=<%=vo.getNo()%>"><%=vo.getName() %></a></td>
            <td><%=vo.getPrice() %></td>
		</tr>
	<%
	}
	%>
	</table>
</body>
</html>