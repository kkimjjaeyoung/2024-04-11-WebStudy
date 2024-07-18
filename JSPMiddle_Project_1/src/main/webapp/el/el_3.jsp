<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.sist.vo.*" %>
<%
	SawonVO vo=new SawonVO();
	vo.setSabun(1);
	vo.setName("홍길동");
	vo.setDept("개발부");
	vo.setJob("사원");
	vo.setPay(3000);
	
	request.setAttribute("vo", vo);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>EL. 객체출력방법</h1>
	<%=((SawonVO)request.getAttribute("vo")).getSabun() %>
	사번:${vo.sabun },${vo.getSabun() }<br>
	이름:${vo.name }, ${vo.getName() }<br>
	부서:${vo.dept }, ${vo.getDept() }<br>
	직위:${vo.job }, ${vo.getJob() }<br>
	연봉:${vo.pay }, ${vo.getPay() }
</body>
</html>