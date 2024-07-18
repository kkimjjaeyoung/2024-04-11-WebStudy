<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.sist.vo.*" %>
<%
	String no=request.getParameter("no");
	DiaryService dao=DiaryService.newInstance();
	DiaryVO vo=dao.diaryUpdateData(Integer.parseInt(int));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<style>
	.container{margin-top: 50px;}
	.row{margin: 0px auto; width: 500px;}
	h3{text-align: center;}
</style>
</head>
<body>
	<div class="container">
		<h3>일정등록</h3>
		<div class="row">
		<form method="post" action="update_ok.jsp">
			<table class="table">
			<tr>
				<td>년도:<input type="text" size=10 class="input-sm" name=year readonly value="<%=vo.getYear() %>">&nbsp;
					월:<input type="text" size=10 class="input-sm" name=month readonly value="<%=vo.getMonth() %>">&nbsp;
					일:<input type="text" size=10 class="input-sm" name=day readonly value="<%=vo.getDay() %>">
				</td>
			</tr>
			<tr>
				<th width=10%>제목</th>
				<td width="90%">
					<input type=text name=subjcect class="input-sm" size=55 value="<%=vo.getSubject() %>">
					<
			</tr>
			<tr>
				<td colspan="2">
				<textarea rows="10" cols="50" name=msg></textarea>
				</td>
			</tr>
			<tr>
				<td colspan="2" class="text-center">
             <button class="btn-sm btn-primary">수정</button>
             <input type=button class="btn-sm btn-info" value="취소"
              onclick="javascript:history.back()">
            </td>
          </tr>
        </tbody>
      </table>
      </form>
     </div>
   </div>
</body>
</html>