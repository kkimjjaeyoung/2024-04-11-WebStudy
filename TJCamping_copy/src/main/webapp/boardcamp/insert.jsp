<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
.bg-breadcrumb{background: url(../img/subscribe-img.jpg)}	/* toolbar 배경 이미지 */
.boardtitlecolor{color: white;}		/* board 메뉴 색상 */
.boardcheckbox{color: yellow;}	/* checkbox 글자 색상 */
a.pagetagcolor{color: yellow; background: ;}

.row1{margin: 0px auto; width: 1080px;}
</style>
</head>
<body>
<div class="wrapper row3">
	<!-- header start -->
	<div class="ccontainer-fluid bg-breadcrumb">
		<div class="container text-center py-5" style="max-width: 900px;">
		<h1 class="display-3 mb-4" style="color: red;">게시글 작성</h1>
		</div>
	</div>
	<!-- header end -->
	
	<!-- board start css -->	
   <div class="row1 row">
   <!-- board css end -->
   
    <form method=post action="../boardcamp/insert_ok.do" enctype="multipart/form-data">
    
 	<!-- board start -->
     <table class="table">
      <tr>
       <th width=15% class="text-right">이름</th>
       <td width="85%">
        <input type=text name=name size=20 class="input-sm" required>
       </td>
      </tr>
      
      <tr>
       <th width=15% class="text-right">제목</th>
       <td width="85%">
        <input type=text name=subject size=50 class="input-sm" required>
       </td>
      </tr>
      
      <tr>
       <th width=15% class="text-right">내용</th>
       <td width="85%">
        <textarea rows="10" cols="50" name=content required></textarea>
       </td>
      </tr>
      
      <tr>
       <th width=15% class="text-right">이미지</th>
       <td width="85%">
        <input type=file name=upload size=30 class="input-sm">
       </td>
      </tr>
      
      <tr>
       <th width=15% class="text-right">비밀번호</th>
       <td width="85%">
        <input type=password name=pwd size=10 class="input-sm" required>
       </td>
      </tr>
      
      <tr>
        <td colspan="2" class="text-center inline">
         <input type=submit value="글쓰기" class="btn-sm btn-danger">
         <input type=button value="취소" class="btn-sm btn-primary" onclick="javascript:history.back()">
        </td>
      </tr>
     </table> 
     </form>
   </div>
</div>
</body>
</html>