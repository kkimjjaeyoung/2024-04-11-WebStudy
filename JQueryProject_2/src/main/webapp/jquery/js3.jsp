<%--
이벤트 : 사용자에 의해 발생(클릭, 마우스오버, 키다운, 키업...)
	1. 가장 많이 사용되는 이벤트
		onload : 브라우저에서 HTML태그를 메모리에서 읽어서 화면에 출력이 된 상태
		onclick : button/span/img/a...
		onkeyup : 검색(text, onkeydown관련)
		mouseover/mouseout : CSS효과를 줄 때 주로 사용
		onsubmit : 데이터 전송
		onchange : 선택이 변경
	2. 이벤트 처리
		1). 인라인 이벤트 모델
			태그 1개에서 제어
			<button onclick="show()">
		2). 고전적인 이벤트 모델
		3). 표전 이벤트 모델
		4). 이벤트 리스너

 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
function show() {
	alert("버튼 클릭")
}
</script>
</head>
<body>
	<button onclick="show()">클릭</button>
</body>
</html>