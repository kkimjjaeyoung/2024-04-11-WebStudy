package com.sist.model;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sist.vo.*;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.sist.controller.RequestMapping;
import com.sist.dao.*;


public class DataBoardModel {
	@RequestMapping("databoard/insert.do")
	public String databoard_insert(HttpServletRequest request, HttpServletResponse response) {
		
		request.setAttribute("main_jsp", "../databoard.insert.jsp");
		return "../main/main.jsp";
	}
	
	@RequestMapping("databoard/insert_ok.do")
	public String databoard_insert_ok(HttpServletRequest request, HttpServletResponse response) {
		try {
			request.setCharacterEncoding("UTF-8");
			String path="c:\\project_upload";
			String enctype="UTF-8";	//한글파일명
			int max_size=1024*1024*100;		//100mb
			MultipartRequest mr=new MultipartRequest(request, path, max_size, enctype, new DefaultFileRenamePolicy());	//파일업로드(중복이름 자동변경)
			String name=mr.getParameter("name");
			String subject=mr.getParameter("subject");
			String content=mr.getParameter("content");
			String pwd=mr.getParameter("pwd");
			String filename=mr.getFilesystemName("upload");
			
			DataBoardVO vo=new DataBoardVO();
			vo.setName(name);
			vo.setSubject(subject);
			vo.setContent(content);
			vo.setPwd(pwd);
			
			if(filename==null) {	//업로드가 없는 상태
				vo.setFilename("");
				vo.setFilesize(0);
			}
			else {	//업로드가 된 상태
				File file=new File(path+"\\"+filename);
				vo.setFilename(filename);
				vo.setFilesize((int)file.length());	//long형 int 변환
			}
			
			DataBoardDAO.databoardInsert(vo);
		}catch (Exception ex) {
			// TODO: handle exception
		}
		return "redirect:../databoard/list.do";
	}
	@RequestMapping("databoard/list.do")
	public String databoard_list(HttpServletRequest request, HttpServletResponse response) {
		String page=request.getParameter("page");
		if(page==null) {
			page="1";
		}
		int curpage=Integer.parseInt(page);
		Map map=new HashMap();
		map.put("start", (curpage*10)-9);
		map.put("end", curpage*10);
		
		List<DataBoardVO> list=DataBoardDAO.databoardListData(map);
		int count=DataBoardDAO.databoardRowCount();
		int totalpage=(int)(Math.ceil(count/10.0));
		count=count-((curpage*10)-10);
		
		//전송
		request.setAttribute("list", list);
		request.setAttribute("curpage", curpage);
		request.setAttribute("totalpage", totalpage);
		request.setAttribute("count", count);
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
		Date date=new Date();
		String today=sdf.format(date);
		
		request.setAttribute("today", today);
		request.setAttribute("main_jsp", "../databoard/list.jsp");
		return "../main/main.jsp";
	}
	
	@RequestMapping("databoard/update_ok.do")
	public String databoard_update_ok(HttpServletRequest request, HttpServletResponse response) {
		return "redirect:../databoard/list.do";		//수행후 list.do를 다시 시행하도록 이동
	}
	
	/*
	 * @RequestMapping("databoard/find.do") public String
	 * databoard_find(HttpServletRequest request, HttpServletResponse response) {
	 * try { request.setCharacterEncoding("UTF-8"); }catch (Exception ex) { } String
	 * fs=request.getParameter("fs"); String ss=request.getParameter("ss"); //데이터베이스
	 * 연동 Map map=new HashMap(); map.put("ss", ss); map.put("fs", fs); //데이터 전송
	 * List<DataBoardVO> list=DataBoardDAO.databoardFindData(map);
	 * request.setAttribute("", list);
	 * 
	 * 
	 * 
	 * request.setAttribute("man.jsp", "../databoard/find"); return
	 * "../main/main.jsp"; }
	 */
	
	@RequestMapping("databoard/find.do")
	public String databoard_find(HttpServletRequest request, HttpServletResponse response) {
		try {
			request.setCharacterEncoding("UTF-8");
		}catch (Exception ex) {
			// TODO: handle exception
		}
		String[] fsArr=request.getParameterValues("fs");
		String ss=request.getParameter("ss");
		Map map=new HashMap();
		map.put("fsArr", fsArr);
		map.put("ss", ss);
		//데이터베이스 연동
		List<DataBoardVO> list=DataBoardDAO.databoardFindData(map);
		//데이터베이스 전송
		
		request.setAttribute("main_jsp", "../databoard/find.jsp");
		return "../main/main.jsp";
	}
}
