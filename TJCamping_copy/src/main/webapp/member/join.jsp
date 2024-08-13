<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css"/>
<link href="https://fonts.googleapis.com/css2?family=Jost:wght@500;600&family=Roboto&display=swap" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">
<link href="../css/bootstrap.min.css" rel="stylesheet">
<link href="../css/style.css" rel="stylesheet">
<link href="../lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
<link href="../lib/lightbox/css/lightbox.min.css" rel="stylesheet">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
<script src="../lib/easing/easing.min.js"></script>
<script src="../lib/waypoints/waypoints.min.js"></script>
<script src="../lib/owlcarousel/owl.carousel.min.js"></script>
<script src="../lib/lightbox/js/lightbox.min.js"></script>
<script type="text/javascript">
Shadowbox.init({
	players:['iframe']
})
$(function(){
	
	/* $('#checkBtn').click(function(){
		Shadowbox.open({
			content:'../member/idcheck.jsp',
			player:'iframe',
			title:'아이디중복체크',
			width:350,
			height:250
		}) 
	})*/
})
</script>
<style>
        .bg-breadcrumb {
    background-color: white;
}
	main{
    margin-top : 50px;
}
        </style>
</head>
<body>
<!-- Header Start -->
        <div class="container-fluid bg-breadcrumb">
            <div class="container text-center py-5" style="max-width: 900px;">
                <h3 class="text-white display-3 mb-4">회원 가입</h3>
                <ol class="breadcrumb justify-content-center mb-0">
                </ol>    
            </div>
        </div>
        <!-- Header End -->
<div class="wrapper row3">
  <main class="container clear">
   <h2 class="sectiontitle">회원 가입</h2>
   <div class="row row1">
   <form method="post" action="../member/join_ok.do" id="frm">
    <table class="table">
     <tr>
      <th class="text-right" width="15%">ID</th>
      <td width="85%" class="inline">
       <input type="text" size=20 class="input-sm" 
          readonly name="id" id="id">
       <input type="button" value="중복체크"
         class="btn btn-sm btn-primary" id="checkBtn">
      </td>
     </tr>
     <tr>
      <th class="text-right" width="15%">비밀번호</th>
      <td width="85%" class="inline">
       <input type="password" size=20 class="input-sm" name="pwd" id="pwd">
       &nbsp;재입력:<input type="password" size=20 class="input-sm" id="pwd1">
      </td>
     </tr>
     <tr>
      <th class="text-right" width="15%">이름</th>
      <td width="85%">
       <input type="text" size=20 class="input-sm" name="name" id="name">
      </td>
     </tr>
     <tr>
      <th class="text-right" width="15%">성별</th>
      <td width="85%" class="inline">
       <input type="radio" name="sex" value="남자" checked>남자
       <input type="radio" name="sex" value="여자">여자
      </td>
     </tr>
     <tr>
      <th class="text-right" width="15%">생년월일</th>
      <td width="85%">
       <input type="date" size=30 class="input-sm" name="birthday" id="day">
      </td>
     </tr>
     <tr>
      <th class="text-right" width="15%">이메일</th>
      <td width="85%">
       <input type="text" size=70 class="input-sm" name="email" id="email">
      </td>
     </tr>
     <tr>
      <th class="text-right" width="15%">우편번호</th>
      <td width="85%" class="inline">
       <input type="text" size=15 class="input-sm" name="post" readonly id="post1">
       <input type=button value="우편번호검색"
         class="btn btn-sm btn-primary" id="postBtn">
      </td>
     </tr>
     <tr>
      <th class="text-right" width="15%">주소</th>
      <td width="85%">
       <input type="text" size=70 class="input-sm" name="addr1" readonly id="addr1">
      </td>
     </tr>
     <tr>
      <th class="text-right" width="15%">상세주소</th>
      <td width="85%">
       <input type="text" size=70 class="input-sm" name="addr2">
      </td>
     </tr>
     <tr>
      <th class="text-right" width="15%">전화번호</th>
      <td width="85%" class="inline">
       <select class="input-sm" name="phone1">
        <option>010</option>
       </select>
       <input type="text" size=20 class="input-sm" name="phone2" id="phone2">
      </td>
     </tr>
     <tr>
      <th class="text-right" width="15%">소개</th>
      <td width="85%">
       <textarea rows="5" cols="70" name="content"></textarea>
      </td>
     </tr>
     <tr>
       <td colspan="2" class="text-center inline">
        <input type="submit" value="회원가입"
         class="btn btn-sm btn-primary" id="joinBtn"
        >
        <input type=button value="취소"
         class="btn btn-sm btn-primary"
         onclick="javascript:history.back()"
        >
       </td>
     </tr>
    </table>
    </form>
   </div>
  </main>
</div>
</body>
</html>