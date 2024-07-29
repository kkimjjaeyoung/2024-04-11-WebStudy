<%--




	대입연산자(+=, -=)
 --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
/*
 * 	1. JQuery : $(function(){})
 	2. VUeJS : mounted()
 	3. React : useEffect()
 */
	window.onload=function(){
 		//논리연산자
 		let i=(6>7) && (6===7)
 		console.log("i="+i)
 		let j=(6<7) || (6===7)
 		console.log("j="+j)
 		
 		//대입연산자
 		let k=10;
 		console. log("k="+k)
 		k+=20	//k=k+20
 		console. log("k="+k)
 		k-=10	//k=k-10
 		console. log("k="+k)
 		
 		let m(^%2==0)?"짝수":"홀수"//if~else
 		console.log("m="m)
 		
 		let n=10/0
 		console.log("n="n) //Infinity(0으로 나눈 경우 출력하는 값)
 		/*
 			값이 없는 경우 : null
 			연산처리 에러: NaN
 			0으로 나눈 경우 : Infinity
 			**브라우저안에 에러가 출력되지 않음(흰 화면만 출력)		-	개발자 도구에서 오류확인
 			변수에 초기화가 안된 경우 : inderfined
 			**정수/정수=실수
 			**HTML에 입력된 모든 값은 문자열 -> 형변환
 				String(변경할 데이터), Number(변경할 데이터), Boolean(변경할 데이터)
 			
 		*/
 	}
</script>
</head>
<body>

</body>
</html>