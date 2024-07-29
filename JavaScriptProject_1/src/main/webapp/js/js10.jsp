<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
window.onload=function(){
	//for-each
	const names=["홍길동", "심청이", "박문수", "이순신", "춘향이"]
	document.write(names[0]+"<br>")
	document.write(names[1]+"<br>")
	document.write(names[2]+"<br>")
	document.write(names[3]+"<br>")
	document.write(names[4]+"<br>")
	//배열의 장점이 순차적 - 인데스를 배정- for
	document.write("<h1>for-each(for of=>배열 한개만 사용 가능)</h1>")
	//배열에 저장된 실제 데이터 읽기
	for(let name of names){	//for(변수 of 배열명)
		document.write(name+"<br>")
	}
	//배열에 저장된 인덱스번호를 읽기
	document.write("<h1>for-each(for in=>배열 두개 이상 사용 가능)</h1>")
	for(let i in names){
		document.write(name[i]+"()"+sexs[i]+")"})
	}
	//자바스크립트에서 지원하는 for-each함수 : forEach/map
	document.write("<h1>forEach 함수 1</h1>")
	//배열명.forEach(function(name){})
	name.forEach(function(name){
		document.write(name+"<br>")
	}
	document.write("<h1>forEach 함수 2</h1>")
	//배열명.forEach((name)=>{})
	name.forEach((name)=>{	//람다식(함수포인터: =>)
		document.write(name+"<br>")
	}
	
	document.write("<h1>map 함수 1</h1>")
	//배열명.forEach(function(name){})
	name.map(function(name){
		document.write(name+"<br>")
	}
	document.write("<h1>map 함수 2</h1>")
	//배열명.forEach((name)=>{})
	name.map((name)=>{
		document.write(name+"<br>")
	}
}
</script>
</head>
<body>

</body>
</html>