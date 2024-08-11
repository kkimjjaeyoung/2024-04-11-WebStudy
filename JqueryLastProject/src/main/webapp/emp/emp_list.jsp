<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<style type="text/css">
.cotainer{
   margin-top: 50px;
}
.row{
  margin: 0px auto;
  width: 900px;
}
</style>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">
$(function)({
	$('#findBtn').click(function(){
		let names=[]
	})$('imput[name="name"]').each(function)(){		//for문
		if($(this).is(":checked")){				//체크여부
			//console.log($(this).val())
			names.push($(this).val())		//배열에 값 담기
			//$(this) : 선택된 체크박스 읽기
		}
	console.log(anems)
	$.ajax({
		type:'post',
		url:'../emp/emp_find.do',
		data:{"names":names},
		success:function(result){
			$('#print').html(result)
		},
		error:functiton(request, status, error){
			console.log(error)
		}
	})
	}
})
</script>
</head>
<body>
	<div class="container">
		<div class="row">
			<table class="table">
				<tr>
					<td class="text-center">
						<c:forEach var="name" items="${list	 }">
							<input type="checkbox" value="${name}" name="names">${name }
						</c:forEach>
					</td>
				</tr>
				<tr>
					<td class="text-center">
						<button class="btn-sm btn-danger">검색</button>
					</td>
				</tr>
			</table>
		</div>
		<div style="height: 20px;"></div>
		<div class="row" id="print">
		
		</div>
	</div>
</body>
</html>