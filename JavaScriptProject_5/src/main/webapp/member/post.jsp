<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
 <style type="text/css">
  .container{
     margin-top: 50px;
  }
  .row{
    margin: 0px auto;
    width: 400px
  }
 </style>
 <script type="text/javascript">
 function postOk(){
	 let dong=document.quertSelector("#dong")
	 if(dong.value.trim()===""){
	 	alert("동/읍/면을 입력하세요")
	 	dong.focus()
	 	return
	 }
	 let form=document.querySelector("#frm")
	 form.submit()
 }
 </script>
</head>
<body>
	<div class="container">
	<h3 class="text-center">우편번호 검색</h3>
		<div class="row">
			<table class="table">
				<tr>
					<td>
					<%--id, calss: css/자바스크립트 제어. name: 자바로 데이터 전송
					 --%>
					<form name="post_frm" method="post" action="post_ok.do" id=frm>
						<input type=text name="dong" size=15 class="input-sm" id="dong">
						<input type="button" value="검색" class="btn-sm btn-success" id="poBtn" onclick="postOk()">
					</form>
					</td>
				</tr>
			</table>
		</div>
	</div>
</body>
</html>