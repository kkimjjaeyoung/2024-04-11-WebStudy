<%--
조건적 이벤트 처리
 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
window.onload=()=>{
	let img=document.querySelector("img");
	img.onmouseover=function(){
		img.style.opacity=0.3		//마우스 오버시 투명도 조절
	}
	img.onmouseout=function(){
		img.style.opacity=1.0		
	}
	
	let btn=document.querySelector("button")
	btn.onclick=function(){
		alert("버튼 클릭")
	}
}
</script>
</head>
<body>
	<img src="m1.jpg" width="200" height="250">
<p>
<button>버튼</button>
</body>
</html>