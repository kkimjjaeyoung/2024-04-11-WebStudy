<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--
액션태그 : 동작,액션이 일어나는 시점에 페이지와 페이지 사이에 제어
	<jsp:include> : jsp안에 다른 jsp를 포함하는 경우
		속성 : page=""
		-속성이나 태그명은 대소문자 구분. 속성에 값을 첨부할때는 반드시"". 반드시 여는 태그와 닫는 태그가 동일
	<jsp:useBean> : 객체 메모리 할당
		id=""	 	-	객체명
		class=""	-	클래스명
		scope=""	-	언제 메모리 할당해서 사용하는 범위
			page: dafault
			session : 브라우저를 유지하는 동안
			application : 객체를 모든 jsp에서 사용하고자 하는 경우
			request : 사용자의 요청값이 있는 경우
	<jsp:setProperty> : setter에 값 설정
		name : 객체명(useBean에서 설정된 id명과 일치)
		property : 변수명
	<jsp:forward page="파일명"> : 서버에서 화면이동시 사용
		sendRedirect() : URL 변경(request 초기화)
		forward() : URL병경 없음(request 보유)
 --%>
<%
request.setCharacterEncoding("UTF-8");
String mode=request.getParameter("mode");
String jsp="";
if(mode==null){
	mode="0";
}
int index=Integer.parseInt(mode);
switch(index){
case 0:
	jsp="home.jsp";
	break;
case 1:
	jsp="join.jsp";
	break;
case 2:
	jsp="idfind.jsp";
	break;
case 3:
	jsp=".jsp";
	break;
case 4:
	jsp="home.jsp";
	break;
case 5:
	jsp="mypage.jsp";
	break;
case 6:
	jsp="recv.jsp";
	break;
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>