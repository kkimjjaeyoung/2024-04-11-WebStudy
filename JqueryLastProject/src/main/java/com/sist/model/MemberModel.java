package com.sist.model;
	import java.io.PrintWriter;
import java.util.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sist.controller.RequestMapping;
import com.sist.dao.*;
import com.sist.vo.*;

public class MemberModel {
	@RequestMapping("member/login.do")
	public void member_login(HttpServletRequest request, HttpServletResponse response)   {
		  // data:{"id":id,"pwd":pwd}
		  String id=request.getParameter("id");
		  String pwd=request.getParameter("pwd");
		  MemberVO vo=MemberDAO.isLogin(id, pwd);
		  if(vo.getMsg().equals("OK"))
		  {
			  HttpSession session=request.getSession();
			  session.setAttribute("id", vo.getId());
			  session.setAttribute("name", vo.getName());
			  session.setAttribute("admin", vo.getAdmin());
		  }
		  // ajax로 전송 
		  try
		  {
			  PrintWriter out=response.getWriter();
			  out.write(vo.getMsg());
		  }catch(Exception ex) {}
	  }
	@RequestMapping("member/logout.do")
	public void member_logout(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session=request.getSession();
		session.invalidate();		//세션 제거
		try {
			PrintWriter out=response.getWriter();
			out.write("OK");
		}catch (Exception ex) {
			// TODO: handle exception
		}
	}
	
	@RequestMapping("member/join.do")
	public String member_join(HttpServletRequest request, HttpServletResponse response) {
		request.setAttribute("main_jsp", "../member/join.jsp");
		return "../main/main.jsp";
	}
	
	@RequestMapping("member/idcheck.do")
	public String member_idcheck(HttpServletRequest request, HttpServletResponse response) {
		
		return "../member/idcheck.jsp";
	}
	
	@RequestMapping("member/idcheck_ok")
	public void member_idcheck_ok(HttpServletRequest request, HttpServletResponse response) {
		String id=request.getParameter("id");
		//DB연동
		int count=MemberDAO.memberIdCheck(id);
		//ajax로 값 전송
		try {
			PrintWriter out=response.getWriter();
			out.write(String.valueOf(count));
		} catch (Exception ex) {
			// TODO: handle exception
		}
	}
	
	@RequestMapping("member/join_ok")
	public String member_join_ok(HttpServletRequest request, HttpServletResponse response) {
		try {
			request.setCharacterEncoding("UTF-8");
		} catch (Exception ex) {
			// TODO: handle exception
		}
		String id=request.getParameter("id");
		String pwd=request.getParameter("pwd");
		String name=request.getParameter("name");
		String sex=request.getParameter("sex");
		String birthday=request.getParameter("birthday");
		String post=request.getParameter("post");
		String addr1=request.getParameter("addr1");
		String addr2=request.getParameter("addr2");
		String email=request.getParameter("email");
		String content=request.getParameter("content");
		String phone1=request.getParameter("phone1");
		String phone2=request.getParameter("phone2");
		
		MemberVO vo=new MemberVO();
		vo.setId(id);
		vo.setPwd(pwd);
		vo.setSex(sex);
		vo.setEmail(email);
		vo.setBirthday(birthday);
		vo.setPost(post);
		vo.setAddr1(addr1);
		vo.setAddr2(addr2);
		vo.setContent(content);
		vo.setPhone(phone1+")"+phone2);
		
		return "redirect:../main/main.do";
	}
	
	@RequestMapping("member/join_update.do")
	public String mypage_join_update(HttpServletRequest request, HttpServletResponse response) {
		request.setAttribute("mypage_jsp", "../member/join_update.jsp");
		request.setAttribute("main_jsp", "../member/join_update.jsp");
		return "../main/main.jsp";
	}
}
