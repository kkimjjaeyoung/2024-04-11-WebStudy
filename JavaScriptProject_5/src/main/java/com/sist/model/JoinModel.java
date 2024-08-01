package com.sist.model;
import java.util.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sist.controller.RequestMapping;
import com.sist.dao.*;

public class JoinModel {
	@RequestMapping("member/join.do")
	public String member_join(HttpServletResponse response, HttpServletRequest request) {
		
		return "join.jsp";
	}
	
	@RequestMapping("member/post.do")
public String member_post(HttpServletResponse response, HttpServletRequest request) {
		
		return "post.jsp";
	}
	
	@RequestMapping("member/post_ok.do")
	public String member_post_ok(HttpServletResponse response, HttpServletRequest request) {
		try {
			request.setCharacterEncoding("UTF-8");
			
		}catch (Exception ex) {
			String dong=request.getParameter("dong");
			List<ZipcodeVO> list=MemberDAO.postFind(dong);
			int count=MemberDAO.postFindCount(dong);
			
			request.setAttribute("list", list);
			request.setAttribute("count", count);
		}
		return "post_ok.jsp";
	}
}
