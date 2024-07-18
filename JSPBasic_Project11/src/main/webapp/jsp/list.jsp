<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*,com.sist.vo.*" %>
<%
    String strPage=request.getParameter("page");
    if(strPage==null)
    	strPage="1";
    
    int curpage=Integer.parseInt(strPage);
    
    // DB연동 
    SeoulDAO dao=SeoulDAO.newInstance();
    List<LocationVO> list=dao.seoulLocationListData(curpage);
    int totalpage=dao.seoulLocationTotalPage();
    
    final int BLOCK=10;
    int startPage=((curpage-1)/BLOCK*BLOCK)+1;
    int endPage=((curpage-1)/BLOCK*BLOCK)+BLOCK;
    
    if(endPage>totalpage)
    	endPage=totalpage;
    
    // 쿠키 출력 
    Cookie[] cookies=request.getCookies();
    List<LocationVO> cList=new ArrayList<LocationVO>();
    if(cookies!=null)
    {
    	// 가장 최신에 등록된 쿠키 데이터 읽기
    	for(int i=cookies.length-1;i>=0;i--)
    	{
    		if(cookies[i].getName().startsWith("seoul_"))
    		{
    			String no=cookies[i].getValue();
    			LocationVO vo=dao.seoulDetailData(Integer.parseInt(no));
    			cList.add(vo);
    		}
    	}
    }
%>
<%--
	데이터 관리(지속적으로 상태관리) : 데이터가 변경되는 상태
	
	자바
	Cookie		/		Session
	사용 클래스 : Cookie/HttpSession
	생성 : request.getCookies()/request.getSession()
	저장되는 값 : 문자열/자바에서 사용되는 모든 클래스
	저장장소 : 브라우저/서버
	사용처 : 최신방문,자동로그인/로그인처리,장바구니
	
	Cookie의 주요 메소드
	 1. 생성방법
		Cookie cookie=new Cookie(String key, String value)
	 2. 저장방법
		response.addCookie(cookie)
	 3. 저장기간
	 	cookie.sexMaxAge(기간)		:초단위로 입력
	 4. 저장위치
	 	cookie.setPath("/")
	 5. 키 읽기
	 	cookie.getName()
	 6. 값 읽기
	 	cookie.getValue()
	 7. 삭제 방법
	 	cookie.setMaxAge(0)	&&	addcookie로 재전송
	 8. 생성방법
	 	Cookie[] cookies=request.getCookies()	: 저장순서가 순차적
	 		최신등록 : cookies.length-1
	Session의 주요 메소드(session은 클라이언트마다 저장공간 1개 배정)
	 1. 생성
	 	HpptSession session=request.getSession()	-	자바에서 사용시
		jsp에선 내장객체 이용(session.)
	 2. 저장 방법
	 	session.setAttribute(String key, Object obj)
	 3. 저장된 값 읽기
	 	Object session.getAttribute(String key)		-	Object형. 데이터 받을때 데이터 형변환 필수 
	 4. 저장된 데이터 일부 삭제
	 	removeAttribute()
	 5. 전체 삭제
	 	invalidate()
	 6. 클라이언트별 식별자
	 	getID()
	 7. 저장기간(default : 30분)
	 	setMaxInactiveInterval()
	 8. 저장이 처음인지 여부
	 	
	
 --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<style>
	.container{margin-top: 50px;}
	.row{margin: 0px auto; width: 960px;}
	.a{white-space: nowrap; overflow:hidden; text-overflow: ellipsis;}
</style>
</head>
<body>
  <div class="container">
    <div class="row">
      <%
         for(LocationVO vo:list)
         {
        	 /*
        	    response
        	      응답 : HTML / Cookie 
        	      화면 변경 : sendRedirect()
        	    request 
        	      요청 : 데이터를 전송 
        	            쿠키 읽기 / 세션 읽기
        	            사용자 보내주는 모든 데이터는 request에 저장 
        	            ?값 , <form> 
        	     Spring : 사용이 쉽게 만들어준 라이브러리 
        	              ============== 형식 1개 (표준화) 
        	              => 출력시에는 JSP를 이용한다 / 처리 자바를 이용한다 
        	              
        	              
        	     구구단 (2차 for) / 페이지 (1차 for) 
        	     ============= << 
        	 */
      %>
            <div class="col-sm-3">
             <div class="thumbnail">
              <a href="detail_before.jsp?no=<%=vo.getNo()%>">
               <img src="<%=vo.getPoster() %>" style="width: 240px;height: 200px" onerror="this.src='no_img.png'">
               <p class="a"><%=vo.getTitle() %></p>
              </a>
             </div>
            </div>
      <%
         }
      %>
    </div>
    <div class="row">
      <div class="text-center">
        <ul class="pagination">
         <%
           if(startPage>1) // 1 11 21 ....
           {
         %>
             <li><a href="list.jsp?page=<%=startPage-1%>">&lt;</a></li>
          <%
           }
             for(int i=startPage;i<=endPage;i++)
             {
          %>
                <li class="<%=i==curpage?"active":""%>"><a href="list.jsp?page=<%=i%>"><%=i %></a></li>
          <%
             }
             
             if(endPage<totalpage)   // 10 20 30...
             {
          %>
               <li><a href="list.jsp?page=<%=endPage+1%>">&gt;</a></li>
          <%
             }
          %>
        </ul>
      </div>
    </div>
    <div style="height: 20px"></div>
    <div class="row">
    <h3>최근 방문 서울 여행</h3>
    <hr>
    <a href="all_delete.jsp" class="btn btn-sm btn-success">전체 삭제</a>
    <a href="all_view.jsp" class="btn btn-sm btn-info">전체 보기</a>
    <hr>
    <%
        int i=0;
        for(LocationVO vo:cList)
        {
        	if(i>8) break;
    %>
            <figure style="float: left;margin-left: 5px">
             <a href="detail.jsp?no=<%=vo.getNo()%>">
              <img src="<%=vo.getPoster() %>" style="width: 100px;height: 100px"
               class="img-rounded" title="<%=vo.getTitle() %>"
               onerror="this.src='no_img.png'"
              >
             </a>
             <figcaption style="margin: 5px 30px">
               <a href="delete.jsp?no=<%=vo.getNo() %>" class="btn btn-xs btn-danger">삭제</a>
             </figcaption>
            </figure>
    <%
        	i++;
        }
    %>
  </div>
</body>
</html>