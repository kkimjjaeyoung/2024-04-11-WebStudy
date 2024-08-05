<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">
$(function{
	$.ajax({
		type:'post',
		url:'food_type.do',
		success:function(result){
			$('#print').html(result)
		}
	})
	$('.typeBtn').click(function(){
		let no=$(this).attr("data-type")
		$.ajax({
			type:'post',
			url:'food_type.do',
			data:{"type":no},
			success:function(result){
				$('#print').html(result)	//responseText : 실행된 HTML을 읽어온다
			}
		})
	})
})
</script>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="text-center">
				<button class="btn btn-lg btn-success typeBtn" data-type="1">한식</button>
				<button class="btn btn-lg btn-info typeBtn" data-type="2">중식</button>
				<button class="btn btn-lg btn-danger typeBtn" data-type="3">양식</button>
				<button class="btn btn-lg btn-primary typeBtn" data-type="4">일식</button>
				<button class="btn btn-lg btn-warning typeBtn" data-type="5">분식</button>
			</div>
		</div>
		<div style="height:20px"></div>
		<div id="print"></div>
	</div>
</body>
</html>