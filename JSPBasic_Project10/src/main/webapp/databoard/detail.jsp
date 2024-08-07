<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.sist.vo.*" %>

<%
String no=request.getParameter("no");
	DataBoardVO dao=DataBoardVO.newInstance();
	DataBoardVO vo=dao.databoardDetailData(Integer.parseInt(no));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.container{margin-top: 50px;}
	.row{margin: 0px auto; width: 600px;}
	h3{text-align: center}
</style>
</head>
<body>
	<div class="container">
	<h3>내용보기</h3>
		<div class="row">
			<table class="table">
				<tbody>
				<tr>
					<th width=20% class="text-center">번호</th>
					<td width=30% class="text-center"><%=vo.getNo() %></td>
					<th width=20% class="text-center">작성일</th>
					<td width=30% class="text-center"><%=vo.getDbday() %></td>
				</tr>
				<tr>
					<th width=20% class="text-center">이름</th>
					<td width=30% class="text-center"><%=vo.getName()%></td>
					<th width=20% class="text-center">조회수</th>
					<td width=30% class="text-center"><%=vo.getHit() %></td>
				</tr>
				<tr>
					<th width=20% class="text-center">제목</th>
					<td colspan="3"><%=vo.getSubject() %></td>
				</tr>
				<%
					if(vo.getFilesize()!=0){
				%>
						<tr>
							<th width=20% class="text-center">첨부파일</th>
							<td colspan="3">
								<%=vo.getFilename() %>(<%=vo.getFilesize() %>Bytes)
							</td>
						</tr>
				<%
					}
				%>
				<tr>
					<td colspan="4" class="text-left" valign="top" height="200">
						<pre style="white-space:none; background-color:white"><%=vo.getContent() %></pre>
					</td>
				</tr>
				<tr>
					<td colspan="4" class="text-right">
						<a herf="#" calss="btn btn-xs btn-success">수정</a>
						<a herf="#" calss="btn btn-xs btn-info">삭제</a>
						<a herf="list.jsp" calss="btn btn-xs btn-warning">목록</a>
				</tr>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>