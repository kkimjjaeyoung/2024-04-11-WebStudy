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
    width: 600px
  }
 </style>
 <script type="text/javascript" src="https://unpkg.com/axios/dist/axios.min.js"></script>
 <script type="text/javascript">
 function update(){
	 let name=document.querySelector("#name")		//$()로 변경. JQuery
	 if(name.value.trim()===""){
		 name.focus()			//제목칸이 공백일때 제목칸에 focus후 실행안함
		 return
	 }
	 let subject=document.querySelector("#name")		//$()로 변경. JQuery
	 if(subject.value.trim()===""){
		 subject.focus()			
		 return
	 }
	 let content=document.querySelector("#name")		//$()로 변경. JQuery
	 if(content.value.trim()===""){
		 content.focus()			 
		 return
	 }
	 let pwd=document.querySelector("#name")		//$()로 변경. JQuery
	 if(pwd.value.trim()===""){
		 pwd.focus()			 
		 return
	 }
	 //유효성 검사. (notnull, primary key 대비)
	 let no=document.querySelecotor("#no")
	 
	 //서버 연결(axios.get : GET방식, axios.post : POST방식)		
	 //GET은 한글처리가 없다. POST는 request.setCharacterEncoding 필요
	 //update_ok : GET, insert_ok : POST
	 	/*
	 		1. 전송
	 		2. 전송방식 : GET/POST
	 		3. 데이터베이스 : SQL 문장
	 		4. 어떤 화면을 브라우저에 출력
	 	*/
	 axios.get('update_ok.do', {
		 params:{
			 no:no.value,
			 name:name.value,
			 subject:subject.value,
			 content:content.value,
			 pwd:pwd.value
		 }
	 }).then(function(result)){
		 if(result.data==='tes'){
			 //수정된 상태
			 //이동
			 location.href="detail.do?no="+no.value		//detail로 이동
		 }
		 else{
			 //비밀번호가 틀린 상태
			 alert("비밀번호가 틀립니다!\n다시 입력하세요")
			 pwd.value=''
			 pwd.focus()
		 }
	 }
 }
 </script>
</head>
<body>
<%--
   .do  ===> *.do
     list.do
     insert.do
     insert_ok.do
     detail.do 
     ===============> DispatcherServlet(Controller) 호출 
                      => service() 메소드 호출 
                      
                      
     JSP   =================== Model      ============> DAO
      .do                 @RequestMapping() <==========
      = <a>                     |
      = <form>                  |request
      = axios.get()             |
      서버에 요청                 JSP
 --%>

  <div class="container">
	  <div class="row">
	   <h3 class="text-center">수정하기</h3>
	   <table class="table">
	     <tr>
	      <th width="15%" class="text-right">이름</th>
	      <td width="85%">
	        <input type=text id=name size=20 class="input-sm" 
	         value="${vo.name }"
	        >
	        <input type="hidden" id=no value="${vo.no }">
	      </td>
	     </tr>
	     <tr>
	      <th width="15%" class="text-right">제목</th>
	      <td width="85%">
	        <input type=text id=subject size=60 class="input-sm"
	         value="${vo.subject }"
	        >
	      </td>
	     </tr>
	     <tr>
	      <th width="15%" class="text-right">내용</th>
	      <td width="85%">
	        <textarea rows="10" cols="60" id=content>${vo.content }</textarea>
	      </td>
	     </tr>
	     <tr>
	      <th width="15%" class="text-right">비밀번호</th>
	      <td width="85%">
	        <input type=password id=pwd size=10 class="input-sm">
	      </td>
	     </tr>
	     <tr>
	       <td colspan="2" class="text-center inline">
	         <input type="button" class="btn-danger btn-sm" id="updateBtn" value="수정" onclick="update()">
	         <input type=button value="취소" class="btn-primary btn-sm"
	          onclick="javascript:history.back()">
	       </td>
	     </tr>
	   </table>
	  </div>
  </div>
</body>
</html>