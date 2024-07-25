/*
 * 1. 브라우저 : URL을 이용해 서버 연동
 * 2. URL이용해 서버연결 후 Controller(요청을 받아서 처리 후 JSP로 결과값 전송)
 * 3. MVC의 단점 : Controller에의 의존도가 높다
 * 4. Controller : 역할이 고정되어 소스수정이 거의 없다(필요 데이터는 파일로 만들어 전송. xml, properties 등)
 * 		-역할 : 요청받기, model클래스/model안 메소드 호출(Annotation 구분자 이용)	
 */
package com.sist.model;
import java.util.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.sql.ResultSet;
import java.text.*;

import com.sist.commons.CommonsModel;
import com.sist.controller.*;
import com.sist.dao.*;
import com.sist.vo.*;
/*
 * spring
 * 	@Autowired : 자동 메모리 주소 주입(-싱글텅. new사용 안함)
 * 	=private BoardDAO dao;
 */
public class BoardModel {
	private BoardDAO dao=BoardDAO.newInstance();
	@RequestMapping("baord/list.do")
	public String board_list(HttpServletRequest request, HttpServletResponse response) {
		//페이지 받기
		String page=request.getParameter("page");
		if(page==null) {
			page="1";
		}
		//정수형 변환(처리가능)
		int curpage=Integer.parseInt(page);	//오류
		List<BoardVO> list=dao.boardListData(curpage);
		/*
		 * URL
		 * 	list.do				-	null if(page==null
		 * 	list.do?page		-	"" if(page.equals(""))
		 * 	list.do?page=1		-	"1"
		 * 	list.do? page		-	오류발생(띄어쓰기 삽입)
		 */
		int count=dao.boardRowCount();	//총 게시물 갯수
		int totalpage=(int)(Math.ceil(count/10.0));		//총 페이지 수
		count=count-((curpage*10)-10);	//페이지마다 출력할 게시물 변경
		//list.jsp로 출력
		request.setAttribute("list", list);
		request.setAttribute("curpage", curpage);
		request.setAttribute("totalpage", totalpage);
		request.setAttribute("count", count);
		Date date=new Date();
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
		String today=sdf.format(date);
		//SimpleDateFormat("yyyy-MM-dd").format(date)
		request.setAttribute("today", today);
		request.setAttribute("main_jsp", "../board/list.jsp");	//main.jsp에 include되는 파일
		CommonsModel.commonsData(request);
		return "../main/main.jsp";
	}
	@RequestMapping("board/insert.do")
	public String oboard_insert(HttpServletRequest request, HttpServletResponse response) {
		try {
			request.setCharacterEncoding("UTF-8");
		}catch(Exception ex) {	}
		BoardVO vo=new BoardVO();
		vo.setName(request.getParameter("name"));
		vo.setSubject(request.getParameter("subject"));
		vo.setContent(request.getParameter("content"));
		vo.setPwd(request.getParameter("pwd"));
		//db연동(DAO)
		dao.
		return"redirect:../board/list.do";
	}
	@RequestMapping("board/update.do")
	public String board_list(HttpServletRequest request, HttpServletResponse response) {
		String no=request.getParameter("no");
		BoardVO vo=
		
		CommonsModel.commonsData(request);
		return "../board/board.jsp";
	}
	
	@RequestMapping("board/delete.do")
	public String board_delete(HttpServletRequest request, HttpServletResponse response) {
		request.setAttribute("no", request.getParameter("no"));
		request.setAttribute("mamin_jsp", "../baord/delete.jsp");
		CommonsModel.commonsData(request);
		return "../main/main.jsp";
	}
	@RequestMapping("board/delete_ok.do")
	public String board_delete_ok(HttpServletRequest request, HttpServletResponse response) {
		String no=request.getParameter("no");
		String pwd=request.getParameter("pwd");
		//DAO연동
		
		CommonsModel.commonsData(request);
		return "redirect:../board/list.do";
	}
}