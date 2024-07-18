<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*,com.sist.vo.*" %>
<jsp:useBean id="dao" class="com.sist.dao.campDAO"></jsp:useBean>

<%
p

//출력할 데이터
	String strPage=request.getParameter("page");
	if(strPage==null){
		strPage="1";
	}
	int curpage=Integer.parseInt(strPage);
	List<campVO> list=dao.foodListData(curpage);
	int totalpage=dao.foodTotalPage();
	
	//쿠키 읽기
	Cookie[] cookies=request.getCookies();
	List<campVO> cList=new ArrayList<campVO>();
	if(cookies!=null){
		for(int i=cookies.length-1; i>=0; i--){
	//getname=key, getvalue=값
	if(cookies[i].getName().startsWith("food_")){
		//값 읽기
		String fno=cookies[i].getValue();
		campVO vo=dao.foodDetailData(Integer.parseInt(fno));
		
	}
		}
	}
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
	p

			for(campVO vo:list){
	%>
		<div class="col-sm-3">
			<a href="../food/detail_before.jsp?fno="<%=t(vo.getFno(%>>
				<div class="thumbnail">
				<img src="<%=t(vo.getPoster(%>" style="width: 240px; height: 200px;">;
				<p class="a"><%=t(vo.getName(%></p>
				</div>
			</a>
		</div>	
	<%
		p
			
				}
		%>	
	</div>
	<div sytly="height: 20px"></div>
	<div class="row">
		<div class="text-center">
			<a href="../main/main.jsp?page=<%=t(curpage>1?curpage-1:curpag%>" class="btn btn-sm btn-danger">이전</a>
			<%=t(curpag%> page / <%=t(totalpag%> pages
			<a href="../main/main.jsp?page=<%=t(curpage>totalpage?curpage+1:curpag%>" class="btn btn-sm btn-primary">다음</a>
		</div>
	</div>	
	<div sytly="height: 20px"></div>
	<h3>최신방문 맛집</h3>
	<hr>
		<div class="row">
		<%
		p

			for(campVO vo:list){
		%>
			<div class="col-sm-2">
				<a href="../main/main.jsp?mode=1&fno=<%=vo.getFno()%>">
					<div class="thumbnail">
					<img src="<%=vo.getPoster() %>" style="width: 130px; height: 80px;" title="<%=vo.getName()%>" >;
					</div>
				</a>
			</div>	
		<%	
			}
		%>	
		</div>
</body>
</html>