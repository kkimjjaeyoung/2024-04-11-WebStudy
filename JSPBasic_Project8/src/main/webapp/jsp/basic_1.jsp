<%--
	1. out(출력버퍼 관리 객체명) : JspWriter
		HTML을 저장하는 메모리 공간. 
			JSP 실행 요청 : 톰캣을 통해 out.write()를 메모리에 출력 JSP HTML앞에 out.write 생략(서블릿 out.write())
			브라우저에서 읽기 : 기본저장공간 8kb. 변경가능. 자동으로 메모리를 비운다(읽을때마다 잘라내기한다) 
			주요 메소드 : println(), print(), write()
			getBufferSize() : 버퍼의 크기 확인
			getRemaining() : 남아있는 버퍼 크기 확인
		*out객체는 한번 사용(다운로드시)
		**권장사항 : <%@~ 지시자를 제외하고 <% 제거한다
			JSP안에 자바 코딩 : 제사용 할 수 없다.
	2. application
	3. pageContext
	4. page / config / exception
 --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" buffer="16kb" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>전체 버퍼 크기 확인 : <%= out.getBufferSize() %></h3>
	<h3>남아있는 버퍼 크기 : <%=out.getRemaining() %></h3>
	<h3>사용중인 버퍼 크기 : <%=out.getBufferSize()-out.getRemaining() %></h3>
	<br>
	<%
		out.print("<font color=red>Out(JspWriter)</font>");
		out.println("<font color=blue>Out(JspWriter)</font>");
		out.write("<font color=green>Out(JspWriter)</font>");
	%>
	<br>
	<%="out(JspWriter)" %><%--out.print 로 변환 권장 --%>
	${"out(JSPWriter)" }	<%-- EL --%>
</body>
</html>