<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  %>
<jsp:useBean id="change" class="com.sist.change.JspChange"/>
<%-- jspchange change=new jspchange --%>

<%
	String mode=request.getParameter("mode");//화면변경
	if(mode==null){//초기화면(첫 화면)일 때
		mode="0";
	}
	int index=Integer.parseInt(mode);
	String jsp=change.change(index);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <style>
  	.row{margin: 0px auto; width: 960px;}
  	.a{white-space: nowrap; overflow:hidden; text-overflow:ellipsis;}
  </style>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div class="container">
		<jsp:include page="<%=jsp %>"></jsp:include>
	</div>
</body>
</html>