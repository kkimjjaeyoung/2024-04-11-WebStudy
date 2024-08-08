<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<style type="text/css">
.row1{
  margin: 0px auto;
  width: 960px;
}
</style>
</head>
<body>
<div class="wrapper row3">
  <main class="container clear">
   <h2 class="sectiontitle">자유 게시판</h2>
   <div class="row1">
    <table class="table">
     <tr>
      <td>
       <a href="../board/insert.do" class="btn btn-sm btn-primary">새글</a>
      </td>
     </tr>
    </table>
    <table class="table">
     <tr>
      <th width=10% class="text-center">번호</th>
      <th width=55% class="text-center">제목</th>
      <th width=10% class="text-center">이름</th>
      <th width=15% class="text-center">작성일</th>
      <th width=10% class="text-center">조회수</th>
     </tr>
     <c:set var="count" value="${count }"/>
     <c:forEach var="vo" items="${list }">
       <tr>
	      <td width=10% class="text-center">${count }</td>
	      <td width=55%>
	      <c:if test="${5<=vo.hit }">
	        <sup>👍👍</sup>
	      </c:if>
	      <a href="../board/detail.do?no=${vo.no }">${vo.subject }</a>
	      &nbsp;
	      <c:if test="${today==vo.dbday }">
	        <sup><img src="../board/new.gif"></sup>
	      </c:if>
	      </td>
	      <td width=10% class="text-center">${vo.name }</td>
	      <td width=15% class="text-center">${vo.dbday }</td>
	      <td width=10% class="text-center">${vo.hit }</td>
	     </tr>
	     <c:set var="count" value="${count-1 }"/>
     </c:forEach>
     <tr>
      <td colspan="5" class="text-center">
       <a href="#" class="btn btn-sm btn-success">이전</a>
       ${curpage } page / ${totalpage } pages
       <a href="#" class="btn btn-sm btn-info">다음</a>
      </td>
     </tr>
    </table>
    
   </div>
  </main>
</div>
</body>
</html>