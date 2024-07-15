<%@page import="javax.xml.crypto.Data"%>
<%@page import="lombok.*"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, com.sist.dao.*" %>
<%
	//사용자로부터 페이지번호 수령
	String strPage=request.getParameter("page");
	if(strPage==null){	//실행시. 사용자로부터 페이지를 받지 못한경우, default페이지 설정
		strPage="1";
	}
	//현제페이지
	int curpage=Integer.parseInt(strPage);
	//해당페이지 데이터
	DataBoardDAO dao=DataBoardDAO.newInstance();
	//==<jsp:useBean id="dao" class="DataBoardDAO"		-	MVC(Spring)에서는 사용 안함
	List<DataBoardVO> list=dao.databoardListData(curpage);
	int count=dao.databoardRowCount();			//번호 순차 출력
	int totalpage=(int)(Math.ceil(count/10.0));	//실제 총페이지
	
	//번호변경
	count=count-((curpage*10)-10);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<style>
	.container{margin-top: 50px;}
	.row{margin: 0px auto; width: 600px;}
	h3{text-align: center}
</style>
</head>
<body>
	<div class="container">
		<h3>자료실</h3>
		<div class="row">
			<table class="table">
			<tr>
				<td>
					<a href="#" class="btn btn-sm btn-primary">새글</a>
				</td>
			</tr>
			</table>
			<table class="table table-hover">
				<thead>
				<tr>
					<th width=10% class="text-center">번호</th>
					<th width=45% class="text-center">제목</th>
					<th width=15% class="text-center">이름</th>
					<th width=20% class="text-center">작성일</th>
					<th width=10% class="text-center">조회수</th>
				</tr>
				</thead>
				<tbody>
					<%
						for(DataBoardVO vo:list){
					%>	
							<tr>
			                    <td width=10% class="text-center"><%=count-- %></td>
					            <td width=45%>
					              <%-- 실제 게시물번호를 전송 : 번호에 해당되는 데이터를 가지고 와서 출력
					                   상세보기 = 무조건 Primary key를 전송 
					                                ============
					                                ROW를 구분하는 구분자 
					               --%>
					              <a href="detail.jsp?no=<%=vo.getNo()%>"><%=vo.getSubject() %></a>
					              <%
					                  String today=new SimpleDateFormat("yyyy-MM-dd").format(new Date());
					                  if(today.equals(vo.getDbday()))
					                  {
					              %>
					                     &nbsp;<sup style="color:red">new</sup>
					              <%
					                  }
					              %>
					            </td>
					            <td width=15% class="text-center"><%=vo.getName() %></td>
					            <td width=20% class="text-center"><%=vo.getDbday() %></td>
					            <td width=10% class="text-center"><%=vo.getHit() %></td>
			                 </tr>
					<%		
						}
					 %>
				</tbody>
			</table>
			<table>
			<tr>
				<td class="text-center">
					<a href="list.jsp?page=<%=curpage>1?curpage-1:curpage %>" class="btn btn-sm btn-success">이전</a>
					<%=curpage %> page/<%=totalpage %> pages
					<a href="list.jsp?page=<%=curpage>1?curpage+1:curpage %>" class="btn btn-sm btn-info">다음</a>
			</tr>
			</table>
		</div>
	</div>
</body>
</html>