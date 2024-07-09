<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="" %>
<!-- 

 -->

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		//1~100 짝수/홀수/전체의 합
		int sum=0, even=0, odd=0;
		for(int i=1; i<=100; i++){
			sum+=i;
			if(i%2==0){
				even+=i;
			}
			else{
				odd+=i;
			}
		}
	%>
	<%=sum %><br>
	<%=odd %><br>
	<%=even %><br>
</body>
</html>