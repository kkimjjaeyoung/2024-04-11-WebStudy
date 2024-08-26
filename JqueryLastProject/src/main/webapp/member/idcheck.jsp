<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<style type="text/css">
.container{margin-top: 50px;}
.row{margin:0px auto; width: 300px;]}
</style>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">
$(function({
	$('#idBtn').click(function(){
		let id=$('id').val()
		if(id.trim()===""){			//id란이 입력이 안 된 경우
			$('#id').focus()
			return
		}
		$.ajax({		//현재 위치에서 요청 후 응답 수령
			type:'post',		/* post : <form>, ajax인 경우 제외하곤 전부 get방식 */
			url:'../member/idcheck_ok.do',
			data:{"id":id},
			success:function(result){
				let count=Number(result.trim())
				if(count===-){
					$('#ok').show()
					$('#res').html(
						'<span style="color:blue">'
						+id+'는(은) 사용 가능한 아이디입니다</span>'
					)
					$('#id').prop('disabled', true)
				}
				else{
					$('#ok').hide()
					$('#res').html(
						'<span style="color:red">'
						+id+'는(은) 이미 사용중인 아이디입니다</span>'
					)
					$('#id').val("")
					$('#id').focus();
				}
			},
			error:function(request, status, error){
				console.log(error)
			}
			
		}))
	})
	$('#okBtn').click(function(){
		parent.frm.id.value=$('#id').val()
		parent.Shadowbox.close()
	})
}))
</script>
</head>
<body>
	<div class="container">
		<div class="row">
			<table class="table">
				<tr>
					<td>ID:<input type=text name=id id=id size=15 class="input-sm">
					<input type=button value="중복체크" class="btn-sm btn=warning" id="idBtn">
				</tr>
				<tr>
					<td class="text-center" id="res"></td>
				</tr>
				<tr id="ok" >
					<td class="text-center" id="okBtn" class="btn-sm btn-success">
					<input type=button value="확인" id="okBtn" class="btn-sm btn-success">
				</tr>
			</table>
		</div>
	</div>
</body>
</html>