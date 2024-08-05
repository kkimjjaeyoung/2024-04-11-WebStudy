<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>

<script type="text/javascript">
$(function(){	// 시작점 : window.onload=function(){}
//태그를 제어(선택자)
	/*
	 선택자 : CSS선택자 사용
	 $(선택자) = document.querySelector(선택자)
	 	1. 태그 : $('태그명')
	 	2. ID : $(#'ID명')
	 	3. class : $('클래스명')
	 	4. 자손 : $('태그명(id, class) > 태그명(id,class)')
	 	5. 후손 : $('태그명(id, class) > 태그명(id,class)')
	 	6. 속성선택자 : $('태그명[속성=값]') --equals	||		$('태그명[속성*=값]') --containts		||		$('태그명[속성$=값]') --endsWith		||		$('태그명[속성^=값]') --startsWith
	 	7. 가상선택자 : $('태그명:nth-child(수열)')		||		$('태그명:nth-child(odd')--홀수번일때		||		$('태그명:nth-child(evne')--짝수번일때
	 태그값 읽기/쓰기
	 	1. val()/val(값)
	 	2. text()/text(값)
	 	3. html()/html(값)
	 	4. attr(속성명)/attr(속성명, 값) : 속성값을 읽을 때
	 	5.append() : 여러개의 태그를 생성
	 	6. createClass() : class를 적용
	 	7.removeClass() : class를 제거
	*/
//이벤트 처리
	/*
		$(선택자).click(function(){
			
		})
		
			- $(선택자).on('click', function(){})
			- $(선택자).on('click', ()=>{})
		$(선택자).change(function(){}		: select
		$(선택자).hover(function(){	//img, div
			mouseover
		}), function(){
			mouseout
		}
		
		$(선택자).ketup(function(){
			
		})
		$(선택자).ketdown(function(){
			
		})
	*/
//자바스크립트로 처리
	/*
	  function : 기능 처리
	  let/const : 변수 설정
	  if, if~else : 조건문 사용
	  for,map,forEach : 반복문
	  JSON : Array [] / object {}
		-- string : trim()/substring()/split()/indenof()
	 연산자 처리
	*/
//효과
	/*
	 fadeIn
	 fadeOut
	 animate
	*/
//Ajax : 화면변경이 없는 상태에서 서버요청과 응답 수령
//Jquery : 라이브러리가 커져 처리속도가 늦다(브라우저에선 빠른 브라우저 선호:Vue3,React-Query, nextJS)
//javascript : typescript
//STS3(x) : stringFramework, Spring-Boot

	$('table>thead>tr').css('backgroundColor','#ccccff')
	$('table>tbody>tr:nth-child(2n)').css('backgroundColor','rgb(255,255,200)')
	$('table>tbody>tr:eq(1)').css('color','red')
	//eq는 0번부터
	//가장 많이 등장하는 가상 선택자 : id, class
	
})
</script>
</head>
<body>
	<div class="container">
	<h1 class="text-center"></h1>
		<div class="row">
			<table class="table table-bordered">
				<thead>
					<tr>
						<th class="text-center">번호</th>
						<th class="text-center">이름</th>
						<th class="text-center">성별</th>
						<th class="text-center">주소</th>
						<th class="text-center">전화</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td class="text-center">1</td>
						<td class="text-center">홍길동</td>
						<td class="text-center">남자</td>
						<td class="text-center">서울</td>
						<td class="text-center">010-1111-1111</td>
					</tr>
					<tr>
						<td class="text-center">1</td>
						<td class="text-center">홍길동</td>
						<td class="text-center">남자</td>
						<td class="text-center">서울</td>
						<td class="text-center">010-1111-1111</td>
					</tr>
					<tr>
						<td class="text-center">1</td>
						<td class="text-center">홍길동</td>
						<td class="text-center">남자</td>
						<td class="text-center">서울</td>
						<td class="text-center">010-1111-1111</td>
					</tr>
					<tr>
						<td class="text-center">1</td>
						<td class="text-center">홍길동</td>
						<td class="text-center">남자</td>
						<td class="text-center">서울</td>
						<td class="text-center">010-1111-1111</td>
					</tr>
					<tr>
						<td class="text-center">1</td>
						<td class="text-center">홍길동</td>
						<td class="text-center">남자</td>
						<td class="text-center">서울</td>
						<td class="text-center">010-1111-1111</td>
					</tr>
					<tr>
						<td class="text-center">1</td>
						<td class="text-center">홍길동</td>
						<td class="text-center">남자</td>
						<td class="text-center">서울</td>
						<td class="text-center">010-1111-1111</td>
					</tr>
					<tr>
						<td class="text-center">1</td>
						<td class="text-center">홍길동</td>
						<td class="text-center">남자</td>
						<td class="text-center">서울</td>
						<td class="text-center">010-1111-1111</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>