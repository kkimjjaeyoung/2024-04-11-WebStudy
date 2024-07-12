<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--
	pageContext : 파일연결. 흐름제어
		1) 내장객체 얻기
			getRequest() : request객체를 얻어오는 경우
			getResponse(), getOut(), getSession()
			
			request.getParameter()	==	pageContext.getRequest().getParameter()
		2) 흐름제어
			include() -> 	<jsp:include>	 ->		pageContext.include("파일명")
			forward() ->	<jsp:forward>
			
			a._jspService(HttpServletRequest request)
				-> b._jspService{}
			
				main.jspService(request){
					a.jspService(request)
					b.jspService(request)
					c.jspService(request)
				}
 --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>