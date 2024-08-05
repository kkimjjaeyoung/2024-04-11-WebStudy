<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src=""></script>
<script type="text/javascript">
$(function(){
	$('input[type="button"]').click(function(){
		$.ajax({
			type:'get', url:'sawon.jsp',succes:function(result{
				$('print').html(result)
			})
		})
	})
})
</script>
</head>
<body>

</body>
</html>