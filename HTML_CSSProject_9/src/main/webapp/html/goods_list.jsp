<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"% import="java.util.*, com.sist.dao.* "%>
<%
GoodsAllDAO dao=GoodsAllDAO.newInstance();

String strPage=request.getParameter("page");
if(strPage==null){
	strPage="1";
	}

int curpage=Integer.parseInt(strPage);

List<GoodsAllVO> list=dao.goodsListData(curpage);

for(GoodsAllVO vo:list)
{
	String img=vo.getGoods_poster();
	img=img.replace("https", "http");
	vo.setGoods_poster(img);
}
int totalpage=dao.goodsTotalPage(); // 총페이지 

// 페이지 처리 
final int BLOCK=10;
int startPage=((curpage-1)/BLOCK*BLOCK)+1;
//               (10-1)/10*10 => 0  9/10
//                (20-1)/10*10 => 10
//                  19/10(1)*10 => 11
int endPage=((curpage-1)/BLOCK*BLOCK)+BLOCK;
if(endPage>totalpage)
	endPage=totalpage;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<style type="text/css">
	.container{margin-top:50px;}
	.row{margin:0px auto; width:960px;}
   	.a{white-space: nowrap; overflow: hidden; text-overflow: ellipsis;}
</style>
</head>
<body>
	<div class="container">
   <div class="row">
   <%
       for(GoodsAllVO vo:list)
       {
   %>
	     <div class="col-sm-3">
		     <div class="thumbnail"><!-- 이미지 카드: 이미지+제목 -->
		      <a href="goods_detail.jsp?no=<%=vo.getNo()%>">
		       <img src="<%= vo.getGoods_poster() %>" style="width:240px;height: 200px" class="img-rounded"><!-- height는 자동 설정 -->
		       <p class="a"><%=vo.getGoods_name() %></p>
		      </a>
		     </div>
		  </div>
	<%
       }
	%>
   </div>
   <div style="height: 10px"></div>
   <div class="row">
     <div class="text-center">
       <ul class="pagination">
         <%
             if(startPage>1)
             {
         %>
         <li><a href="goods_list.jsp?page=<%=startPage-1%>">&lt;</a></li>		<!-- 시작페이지 -->
         <%
             }
         %>
         <%
             for(int i=startPage;i<=endPage;i++)
             {
         %>
         <li class="<%= curpage==i?"active":""%>"><a href="goods_list.jsp?page=<%=i%>"><%=i %></a></li> <!-- 페이지선택 -->
         <%
             }
         %>
         <%
            if(endPage<totalpage)
            {
         %>
         <li><a href="goods_list.jsp?page=<%=endPage+1%>">&gt;</a></li>		<!-- 마지막 페이지 -->
         <%
            }
         %>
       </ul>
     </div>
   </div>
  </div>
</body>
</html>