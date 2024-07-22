//요청처리, 결과값을 jsp로 전송
//오라클 연결/데이터 수렴/전송
	/*
	 * 1. 원격git
	 * 2. db설계
	 * 3. ERD
	 * 4. 유스케이스 다이어그램
	 * 5. UI
	 * 6. 구현
	 * 7. 테스팅
	 * 8. 배포
	 */

	//1. connection생성
	
		//2. 사용자요청에 connection배포
		
		//3. connection사용
		
		//4. 사용후 반환
package com.sist.model;
import java.util.*;
import java.text.*;
import javax.servlet.http.HttpServletRequest;
import com.sist.dao.*;

public class BoardModel {
	//request에 값을 담아주는 역할
	public void boardListData(HttpServletRequest request) {
		String page=request.getParameter("page");
		if(page==null) {
			page="1";
		}
		
		int curpage=Integer.parseInt(page);
		
		BoardDAO dao=BoardDAO.newInstance();
		List<BoardVO> list=dao.boardListData(curpage);
		int totalpage=dao.boardTotalPage();
		
		//list.jsp로 출력에 필요한 데이터 전송
		request.setAttribute("list", list);
		request.setAttribute("totalpage", totalpage);
		request.setAttribute("curpage", curpage);
		request.setAttribute("today", new SimpleDateFormat("YYYY-MM-dd").format(null);
		
		public void boardInsertOK(HttpServletRequest request, httpServletResponse response) {
			try {
				request.setCharacterEncoding("UTF-8");
			}catch(Exception ex) {
				String name=request.getParameter("name");
				String name=request.getParameter("subject");
				String name=request.getParameter("");
				String name=request.getParameter("name");
			}
		}
	}
	public void boardDetailData(HttpServletRequest request) {
		String no=request.getParameter("no");
		BoardDAO dao=BoardDAO.newInstance();
		BoardVO vo=dao.boardDetailData(Integer.parseInt(no));
		request.setAttribute("vo", vo);
		
	}
}
