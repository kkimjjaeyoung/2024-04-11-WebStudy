<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.sist.model.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="model" class="com.sist.model.BoardModeli"></jsp:useBean>
<%
	model.boardListData(request);		//모델의 처리 메소드 호출 (자동화처리 가능)
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
	<h3>자유 게시판</h3>
	<div class="row">
		<table class="table">
		<table calss="table">
		<tr>
			<td>
				<a herf="insult.jsp"></a>
			</td>
		</tr>
		</table>
			<tr>
				<th width="10%" class="text-center">번호</th>
				<th width="45%" class="text-center">제목</th>
				<th width="15%" class="text-center">이름</th>
				<th width="20%" class="text-center">작성일</th>
				<th width="10%" class="text-center">조회수</th>
			</tr>
			<c:forEach var="vo" item="${list }">
				<tr>
					<th width="10%" class="text-center">${vo.no }</th>
					<th width="45%" class="text-center">${vo.subject }</th>
					<th width="15%" class="text-center">${vo.name }</th>
					<th width="20%" class="text-center">${vo.dbday }</th>
					<th width="10%" class="text-center">${vo.hit }</th>
				</tr>	
			</c:forEach>
			<tr>
				<td colspan="5" class="text-center">>
					<a href="list.jsp?page=${curpage>1?curpage-1:curpage }" class="btn btn-sm btn-success">이전</a>
						${curpage } page / ${totalpage } pages
					<a href="list.jsp?page=${curpage>1?curpage+1:curpage }" class="btn btn-sm btn-success">다음</a>
			</tr>
		</table>
	</div>
	</div>
</body>
</html>