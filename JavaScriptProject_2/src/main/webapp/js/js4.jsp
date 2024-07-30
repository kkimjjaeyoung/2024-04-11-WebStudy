<%--
배열/객체 : []/{}
	1. 배열 : 데이터형을 섞어서 사용 가능
	 1). 선언
	 	let arr=[]
	 2). 값 추가
	 	arr[0]=1
	 	arr[1]=2
	 	arr[2]=3
	 3). 값이 몇개 있는지
	 	arr.length
	 4). 값 수정
	 	arr[3]=10
	 5). 선언과 동시에 값 부여
	 	let arr={1,2,3,4,5}
	 6. 마지막 데이터 삭제
	 	arr.pop()
	 7. 데이터 전체 삭제
	 	arr.delete
	 *배열함수
	 	push() : 배열의 마지막에 값을 추가
	 	pop() : 배열의 마지막 값을 제거
	 	slice() : 원하는 위치부터 잘라서 새로운 배열 생성 //arraycopy()
	 	find() : 값을 찾는 경우
	 	delete() : 배열값 전체삭제
	 	length 저장 갯수	
 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
window.onload=function(){
	let names=["홍길동", "심청이", "박문수", "춘향이", "이순신"]
	console.log("인원수:"+names.length)
	//데이터 추가
	names.push("강감찬")
	console.log("인원수:"+names.length)
	//인원 출력
	/* names.map(function(name)){
		console.log(name)
	} */
	console.log(names)
	//마지막 데이터 삭제 
	names.pop()
	console.log("인원수:"+names.length)
	console.log(names)
	//전체 데이터 삭제
	//names.delete
	//console.log("인원수:"+names.length)
}
</script>
</head>
<body>

</body>
</html>