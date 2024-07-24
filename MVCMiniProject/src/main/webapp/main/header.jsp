<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--
	MVC : html, java분리해서 사용
		-소스가 적어진다/파일이 적어진다(X)
		-동시개발을 위해 분리(분업)
		JSP : 보안이 취약. 소스 노출됨. 재사용 힘듬. 확장성이 낮음.
		-html(View), java(model), Controller로 구분해서 연결
			-controller : Servlet/jsp로 url주소를 이용해 데이터 전송(request가 필요하므로 Servlet,jsp만 가능. java불가능)
		역할 : 
			1. 사용자 요청 받기
			2. Model탐색
			3. 요청결과값 수령(request : 한개의 jsp에서만 사용할 때. response : 모든 jsp에 데이터 공유)
			4. 요청한 jsp로 request 전송
			
 --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="wrapper row1">
  <header id="header" class="clear"> 
    <!-- ################################################################################################ -->
    <div id="logo" class="fl_left">
      <h1><a href="../main/main.do">맛집 AND 서울여행</a></h1>
    </div>
    <div class="fl_right">
      <ul class="inline">
        <li><i class="fa fa-user" aria-hidden="true"></i><input type="text" class="input-sm" placeholder="아이디" style="width: 120px"></li>
        <li><i class="fa fa-unlock-alt" aria-hidden="true"></i> <input type="password" class="input-sm" placeholder="비밀번호" style="width: 120px"></li>
        <li><input type=image src="../main/login.png" style="width: 100px;height: 25px;"></li>
      </ul>
    </div>
   </header>
</div>
<div class="wrapper row2">
  <nav id="mainav" class="clear"> 
    <ul class="clear">
      <li class="active"><a href="../main/main.do">홈</a></li>
      <li><a class="drop" href="#">회원</a>
        <ul>
          <li><a href="pages/gallery.html">회원가입</a></li>
          <li><a href="pages/full-width.html">아이디찾기</a></li>
          <li><a href="pages/sidebar-left.html">비밀번호찾기</a></li>
        </ul>
      </li>
      <li><a class="drop" href="#">맛집</a>
        <ul>
          <li><a href="../food/list.do">맛집 목록</a></li>
          <%-- Controller를 찾을때 URL패턴 => .do --%>
          <li><a href="pages/full-width.html">맛집 예약</a></li>
          <li><a href="../food/find.do">지역별 맛집 찾기</a></li>
          <li><a href="pages/sidebar-left.html">맛집 뉴스</a></li>
        </ul>
      </li>
      <li><a class="drop" href="#">서울여행</a>
        <ul>
          <li><a href="pages/gallery.html">명소</a></li>
          <li><a href="pages/full-width.html">자연 & 관광</a></li>
          <li><a href="pages/sidebar-left.html">쇼핑</a></li>
          <li><a href="pages/sidebar-left.html">호텔</a></li>
          <li><a href="../seoul/weather.do">서울 날씨</a></li>
        </ul>
      </li>
      <li><a class="drop" href="#">커뮤니티</a>
        <ul>
          <li><a href="pages/gallery.html">자유 게시판</a></li>
          <li><a href="pages/full-width.html">공지사항</a></li>
          <li><a href="pages/sidebar-left.html">묻고 답하기</a></li>
          <li><a href="pages/sidebar-left.html">실시간 채팅</a></li>
        </ul>
      </li>
      <li><a href="#">스토어</a></li>
      <li><a href="#">마이페이지</a></li>
    </ul>
    </nav>
</div>
</body>
</html>