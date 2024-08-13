package com.sist.model;

import java.io.PrintWriter;
import java.util.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import com.sist.controller.RequestMapping;
import com.sist.dao.*;
import com.sist.vo.*;


public class AllReplyModel {
	@RequestMapping("all_reply/list.do")
	public void all_reply_list(HttpServletRequest request, HttpServletResponse response) {
		String cno=request.getParameter("cno");
		String type=request.getParameter("type");
		Map map=new HashMap();
		map.put("cno", cno);
		map.put("type", type);
		List<AllReplyVO> list=AllReplyDAO.allReplyListData(map);
		
		JSONArray arr=new JSONArray();
		int i=0;
		HttpSession session=request.getSession();
		String sid=(String)session.getAttribute("id");
		if(sid==null) {
			sid="guest";
		}
		for(AllReplyVO vo:list) {
			JSONObject obj=new JSONObject();
			obj.put("rno", vo.getRno());
			obj.put("cno", vo.getCno());
			obj.put("type", vo.getType());
			obj.put("id", vo.getId());
			obj.put("name", vo.getName());
			obj.put("msg", vo.getMsg());
			obj.put("dbday", vo.getDbday());
			obj.put("sessionId", sid);
			arr.add(obj);
		}
		try {
			response.setContentType("text/plain;charset=UTF-8");
			PrintWriter out=response.getWriter(); 
			out.write(arr.toJSONString());
		}catch (Exception ex) {	}
	}
	
	@RequestMapping("all_reply/insert.do")
	public void all_reply_insert(HttpServletRequest request, HttpServletResponse response) {
		try {
			request.setCharacterEncoding("UTF-8");
			
		}catch (Exception ex) {}
			String cno=request.getParameter("cno");
			String type=request.getParameter("type");
			String msg=request.getParameter("msg");
			//로그인 후 사용 가능
			HttpSession session=request.getSession();
			String id=(String)session.getAttribute("id");
			String name=(String)session.getAttribute("name");
			
			AllReplyVO vo=new AllReplyVO();
			vo.setCno(Integer.parseInt(cno));
			vo.setType(Integer.parseInt(type));
			vo.setId(id);
			vo.setName(name);
			vo.setMsg(msg);
			String result="";
			try {
				AllReplyDAO.allReplyInsert(vo);
				result="ok";
			}catch (Exception ex) {
				result=ex.getMessage();
			}
			
			try {
				PrintWriter out=response.getWriter();
				out.write(result);
			}catch (Exception ex) {
				// TODO: handle exception
			}

	}
	
}
