<%--
	데이터 전송 : 사용 후 버림 : <form>, <a>
				사용후 유지 : id, 방문내용, 상품구매
	a.jsp
	->b.jsp
	->c.jsp
	->d.jsp
	->session이용
		1. 요청값 전송 
		2. 요청값을 받아 Db연동 (SQL:JAVA)
		3. HTML실행 화면 (JAVA:for,if)
		->static(공유시) : 필요시마다 jsp상관없이 이용 가능
	 1. session은 사용자 브라우저마다 1개 생성(데이터는 여러개 저장 가능)
	jsp
	 1. 내장객체
	 	request : 사용자 요청 처리
	 	response : 응답 정보
	 	session : 서버에 데이터를 저장해서 모든 jsp에 공유 목적
	 	application : 데이터 실제 경로
	 	pageContext : include / forward
	 	->cookie는 내장객체가 아님
	 session(Httpsession)
	  내장객체가 아닌 경우 request로 생성 가능
	 	HttpSession session=request.getSession()
	  저장
	  	setAttribute(String key,Object value)		-	모든 클래스 저장가능.
	  저장된 데이터 읽기
	  	Object getAttribute(String key)				-	반드시 형변환 필요
	  저장기간 설정(default : 30분)
	  	setMaxInactiveInterval(초)
	  일부 삭제
	  	removeAttribute(String key)
	  전체 삭제
	  	invalidate()								-session에 저장된 데이터 모두 삭제
	  구분자 얻기
	 	String getId()								-사용자의 브라우저 정보(JSP로 실시간 채팅)
	
 --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, com.sist.dao.*" %>
<%
	String year=request.getParameter("year");
	String month=request.getParameter("month");
	String day=request.getParameter("day");
	String id=(String)session.getAttribute("id");
	DiaryVO vo=new DiaryVO();
	vo.setId(id);
	vo.setYear(Integer.parseInt(year));
	vo.setMonth(Integer.parseInt(month));
	vo.setDay(Integer.parseInt(day));
	// 오라클에 저장된 데이터 읽기 
	DiaryService dao=DiaryService.newInstance();
	List<DiaryVO> list=dao.diaryListData(vo);
	
	//1. 사용자가 보내준 데이터 수령
	//2. db연동
	//3. 결과값을 받는다
	//4. HTML을 이용해 결과값 출력
	
	//자바파일(model)로 분리해 front/back 구분
	/*
		Spring : 파일처리 only
		Spirng-boot : 서버에서 결과값 전송
	*/
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<style type="text/css">
.container{
  margin-top: 50px;
}
.row{
  margin: 0px auto;
  width: 800px;
}
h3{ text-align: center;}
</style>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">
let i=0;
$ (function() {
	$('.check').click(function (){
		let no=$(this).attr("data-no");
		$('.msg').hide();
		if(i==0){
			$('#msg'+no).show();
			i=1;	
		}
		else{
			
		}
	})
})

</head>
<body>
	<div class="container">
	<h3><%=session.getAttribute("name") %>님의 <%=year %>년<%=month %>월<%=day %>일 일정목록</h3>
		<div class="row">
		<<table class="table">
			<thead>
				<tr>
					<th width=10% class="text-center">번호</th>
					<th width=40% class="text-center">일정</th>
					<th width=20% class="text-center">작성일</th>
					<th width=30% class="text-center"></th>
					
				</tr>
			</thead>
			<tbody>
			<% for(DiaryVO dvo:list){ %>
				<tr>
					<th width=10% class="text-center"><%=dvo.getNo() %></th>
					<th width=40% ><%=dvo.getSubject() %></th>
					<th width=20% class="text-center"><%=dvo.getDbday() %></th>
					<th width=30% class="text-center">
						<span calss="btn btn-xs btn-warning" data-no"<%=vo.getNo()%>">일정확인</span>
						<a href="diary_update.jsp?no=<%=vo.getNo() %>" class="bnt bnt-xs bnt-success">수정</a>
						<a href="diary_delete.jsp?no=<%=vo.getNo() %>" class="bnt bnt-xs bnt-success">취소</a>
					</th>
				</tr>
				<tr id="msg<%=vo.getNo() %>" class="msgs" style="display:none;">
					<td >
				</tr>
				<tr>
					<td colspan="4" class="text-left" valign="top">
						<pre style="white-space:pre-wrap;"><%=dvo.getMsg() %></pre>
					</td>
				</tr>
			<% } %>
			<tr>
				<td colspan="3" class="text-right">
					
					<a href="#" class="bnt bnt">일정</a> 
				</td>
			</tbody>
		</table>
		</div>
	</div>
</body>
</html>