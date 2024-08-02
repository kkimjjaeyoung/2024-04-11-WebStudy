<%--
내장객체
	String : 자바와 유사
		1. substring()
		2. trim()
		3. replace()
		4. slipt()
		5. indexOf()
		6. slice()
	Math
		1. random
		2. round
	Array
		1. push()
		2. pop()
		3. sort()
		4. slice()
	Date
		1. get
		
	Date : 날짜시간 관리하는 내장객체
		let today=new Date()
		today.getFullYear() : 년도 읽기
		today.getMonth()+1 : 월
		today.getDate()
 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
window.upload=()=>{
	let today=new Date()
	/*
		class Sawon{
			init:function(){
				
			}
		}
	
		class=function
		react-class-function
	*/
	let year=today.getFullYear()
	let month=today.getMonth()+1
	let day=today.getDate()
	let week=today.getDay()
	let strWeek=["일", "월", "화", "수", "목", "금", "토"]
	document.write(year+"년도"+month+"월"+day+"일"+week+"요일")
	
}
</script>
</head>
<body>

</body>
</html>