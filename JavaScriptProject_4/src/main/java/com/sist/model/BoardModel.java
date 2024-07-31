package com.sist.model;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sist.controller.RequestMapping;
import com.sist.dao.BoardDAO;
import com.sist.dao.BoardVO;

public class BoardModel {
	
	
	@RequestMapping("board/insert_ok.do")
	public String voard_insert_ok(HttpServletRequest request, HttpServletResponse response) {
		try {
			request.setCharacterEncoding("UTF-8");
		}catch (Exception ex) {
			String name=request.getParameter("name");
			String subject=request.getParameter("subject");
			String content=request.getParameter("content");
			String pwd=request.getParameter("pwd");
			//dao연동
			BoardVO vo=new BoardDAO();
			vo.setName(name);
			
			BoardDAO.boardInsert(vo);
			return "redirect:list.do";
		}
	}
	@RequestMapping("board/detail.do")	
	//메소드,클래스,멤버변수,매개변수,생성자 모든 명칭을 자유롭게 사용 가능
	public String board_detail(HttpServletRequest request, HttpServletResponse response) {
		String no=request.getParameter("no");
		BoardVO vo=BoardDAO.boardDetailData(Integer.parseInt(no));
		request.setAttribute("vo", vo);
		
		return "detail.jsp";
	}
	
	@RequestMapping("board/delete.do")
	public void board_delete(HttpServletRequest request, HttpServletResponse response) {
		String no=request.getParameter("no");
		String pwd=request.getParameter("pwd");
		boolean bCheck=BoardDAO.boardDelete(Integer.parseInt(no), pwd);
		String result="";
		if(bCheck==true) {
			result="yes";
		}
		else {
			result="no";
		}
		
		try {
			PrintWriter out=response.getWriter();
			out.write(result);
		}catch (Exception ex) {
			// TODO: handle exception
		}	
	}
	
	@RequestMapping("board/update.do")
	public String board_update(HttpServletRequest request, HttpServletResponse response) {
		String no=request.getParameter("no");
		BoardVO vo=BoardDAO.boardUpdateData(Integer.parseInt(no));
		request.setAttribute("vo", vo);
		return "update.jsp";
	}
}
