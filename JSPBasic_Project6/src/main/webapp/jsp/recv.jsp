<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.sist.bean.*" %>
<%--
	request.setCharacterEncoding("UTF-8");
	String name=request.getParameter("name");
	String sex=request.getParameter("sex");
	String address=request.getParameter("address");
	String phnoe=request.getParameter("phone");
	
	MemberVO vo=new MemberVO();
	vo.setName(name);
	vo.setAddress(address);
	vo.setSex(sex);
	vo.setPhone(phone);
--%>
<jsp:useBean id="vo" class="com.sist.bean.MemberVO">
	<jsp:setProperty name="vo" property="*"/>
</jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="row">
		이름:<%=vo.getName() %><br>
		성별:<%=vo.getSex() %><br>
		주소:<%=vo.getAddress() %><br>
		전화:<%=vo.getPhone() %><br>
	</div>
</body>
</html>