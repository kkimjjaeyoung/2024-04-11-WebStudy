package com.sist.model;
import java.io.PrintWriter;
import java.util.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import com.sist.vo.*;
import com.sist.controller.RequestMapping;
import com.sist.dao.*;

public class CampModel {

	@RequestMapping("camp/list.do")
	public String camp_list(HttpServletRequest request,HttpServletResponse response)
	{
		String page=request.getParameter("page");
		if(page==null)
			page="1";
		int curpage=Integer.parseInt(page);
		int rowSize=12;
		int start=(rowSize*curpage)-(rowSize-1);
		int end=rowSize*curpage;
		
		Map map=new HashMap();
		map.put("start", start);
		map.put("end", end);
		List<CampVO> list=CampDAO.campListData(map);
		
		int count=CampDAO.campRowCount();
		int totalpage=(int)(Math.ceil(count/10.0));
		count=count-((rowSize*curpage)-rowSize);
		
		request.setAttribute("list", list);
		request.setAttribute("count", count);
		request.setAttribute("curpage", curpage);
		request.setAttribute("totalpage", totalpage);
		
		request.setAttribute("main_jsp", "../camp/list.jsp");
		return "../main/main.jsp";
	}
	
	@RequestMapping("camp/detail.do")
	public String camp_detail(HttpServletRequest request,HttpServletResponse response)
	{
		String camp_no=request.getParameter("camp_no");
		CampVO vo=CampDAO.campDetailData(Integer.parseInt(camp_no));
		
		request.setAttribute("vo", vo);
		
		request.setAttribute("main_jsp", "../camp/detail.jsp");
		return "../main/main.jsp";
	}
}
