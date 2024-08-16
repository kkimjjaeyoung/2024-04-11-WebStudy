<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta content="" name="keywords">
        <meta content="" name="description">

        <!-- Google Web Fonts -->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Jost:wght@500;600&family=Roboto&display=swap" rel="stylesheet"> 

        <!-- Icon Font Stylesheet -->
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

        <!-- Libraries Stylesheet -->

<style type="text/css">
.row1{margin: 0px auto; width: 1080px;}

.bg-breadcrumb{background: url(../img/subscribe-img.jpg)}	/* toolbar 배경 이미지 */
.boardtitlecolor{color: white; font-size: 25px;}		/* board 메뉴 색상 */
.boardcheckbox{color: yellow;}	/* checkbox 글자 색상 */
a.pagetagcolor{color: yellow; background: ;}
.boardlistsytle{color: white; text-align: center;}
</style>
</head>
<body>
	<!-- header start -->
	<div class="ccontainer-fluid bg-breadcrumb">
		<div class="container text-center py-5" style="max-width: 900px;">
		<h1 class="display-3 mb-4" style="color: red;">캠핑장 후기 게시판</h1>
		</div>
	</div>
	<!-- header end -->
	
	<!-- board start css -->
	<div class="container-fluid booking py-3">
		<div class="container py-3">
			<div class="row1">
	<!-- board css end -->
	<!-- board start -->
			<table class="table">
				<tr>
					<td class="text-left inline">
					<form method="post" action="../boardcamp/find.do">
						<input type="checkbox" value="N" name="fs"><label class="boardcheckbox">이름</label>
						<input type="checkbox" value="S" name="fs"><label class="boardcheckbox">제목</label>
						<input type="checkbox" value="C" name="fs"><label class="boardcheckbox">내용</label>
						<input type=text name=ss size=50 class="input-sm" >
						<input type=submit value="검색" class="btn btn-sm btn-success">
					</form>
					</td>
					<td align="right">
						<a href="../boardcamp/insert.do" class="btn btn-sm btn-primary">새글</a>
					</td>
				</tr>
			</table>
			<table class="table">
				<tr>
					<th width=10% class="text-center boardtitlecolor">번호</th>
					<th width=50% class="text-center boardtitlecolor">제목</th>
					<th width=15% class="text-center boardtitlecolor">이름</th>
					<th width=15% class="text-center boardtitlecolor">작성일</th>
					<th width=10% class="text-center boardtitlecolor">조회수</th>
				</tr>
				<c:set var="count" value="${count }"/>
				<c:forEach var="vo" items="${list }">
				<tr>
					<td width=10% class="boardlistsytle" >${count }
					</td>
					<td width=50% style="text-align: center;">
						<c:if test="${15<vo.hit }">
							<sup><img src="../img/" width="20px" height="20px" align="left"></sup>	<!-- 새 글 뒤에 이미지 아이콘 -->
					 	</c:if>
						<a class="boardlistsytle" href="../boardcamp/detail.do?no=${vo.no }">${vo.subject }</a>
						&nbsp;
						<c:if test="${today==vo.dbday }">
							<sup><img src="../img/new.gif" width="20px" height="20px"></sup>	<!-- 새 글 뒤에 이미지 아이콘 -->
					 	</c:if>
					</td>
					<td width=15% class="text-center boardlistsytle" >${vo.name }</td>
					<td width=15% class="text-center boardlistsytle" >${vo.dbday }</td>
					<td width=10% class="text-center boardlistsytle" >${vo.hit }</td>
				</tr>
				<c:set var="count" value="${count-1 }"/>
				</c:forEach>
			</table>
			<table class="table" style="text-align: center;">
				<tr>	
					<td class="text-right">
						<a href="list.do?page=${curpage>1?curpage-1:curpage }" class="btn btn-sm btn-success pagetagcolor">이전</a>
						&nbsp;
							<a class="boardlistsytle">${curpage } page &nbsp; / &nbsp; ${totalpage } pages</a><!-- 이전 현재쪽 / 총쪽 다음 -->
						&nbsp;
						<a href="list.do?page=${curpage<totalpage?curpage+1:curpage }" class="btn btn-sm btn-info pagetagcolor">다음</a>
					</td>
				</tr>
			</table>
			</div>
		</div>	
	</div>
</body>
</html>