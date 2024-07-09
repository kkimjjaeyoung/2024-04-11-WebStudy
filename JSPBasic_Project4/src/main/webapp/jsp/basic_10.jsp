<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 

 -->

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="table.css">
<style>
	.table_content{margin: 0 auto; width: 800px;}
	h3{text-align: center;}
</style>
</head>
<body>
	<tr>
		<td colspan="3">
			<pre>
			***jsp의 html은 out.write가 생략되있다
			public class basic_10_jsp extends HttpJspBase{
				&lt;%! %&gt;		->	선언내용 클래스 멤버로 사용		
			}
			public void _jspInit(){} ->web.xml에 설정시 읽어진다
			public void _jspDestory(){} -> 화면이동, 새로고침(메모리 회수)
			
			public void _jspService(){
				
			}
			</pre>
		</td>	
	</tr>
	<tr>
		<th width="20%">&lt; %!&gt;</th>
		<td width="30%">선언문</td>
		<td width="50%">맴버변수/메소드 제작 영역</td>
	</tr>
	<tr>
		<th width="20%">&lt;% %&gt;</th>
		<td width="30%">스크립트릿</td>
		<td width="50%">일반 자바소스(메소드호출, 제어문, 연산자, 지역변수 선언)</td>
	</tr>
	<tr>
		<th width="20%">&lt;%= %&gt;</th>
		<td width="30%">표현식</td>
		<td width="50%">out.print() 자바변수, 메소드 출력시 사용</td>
	</tr>
	<tr>
		<th width="20%">&lt;%-- --%&gt;</th>
		<td width="30%">주석</td>
		<td width="50%"></td>
	</tr>
</body>
</html>