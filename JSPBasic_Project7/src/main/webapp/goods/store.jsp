<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, com.sist.dao.*" %>
<jsp:useBean id="dao" class="com.sist.dao.goodsAllDAO"></jsp:useBean>

<%
//출력할 데이터
	String strPage=request.getParameter("page");
	if(strPage==null){
		strPage="1";
	}
	int curpage=Integer.parseInt(strPage);
	List<goodsAllVO> list=dao.goodsListData(curpage);
	int totalpage=dao.goodsTotalPage();
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="row">
	<%
		for(goodsAllVO vo:list){
	%>
		<div class="col-sm-3">
			<a href="#">
				<div class="thumbnail">
				<img src="<%=vo.getGoods_poster() %>" style="width: 240px; height: 200px;">;
				<p class="a"><%=vo.getGoods_name() %></p>
				</div>
			</a>
		</div>	
	<%	
		}
	%>	
	</div>
	<div style="height: 20px"></div>
	<div class="row">
		<div class="text-center">
			<a href="../main/main.jsp?page=<%=curpage>1?curpage-1:curpage %>" class="btn btn-sm btn-danger">이전</a>
			<%=curpage %> page / <%=totalpage %> pages
			<a href="../main/main.jsp?page=<%=curpage>totalpage?curpage+1:curpage %>" class="btn btn-sm btn-primary">다음</a>
		</div>
	</div>
</body>
</html>