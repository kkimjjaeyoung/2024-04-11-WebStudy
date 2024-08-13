package com.sist.model;
import java.util.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.bouncycastle.jcajce.provider.asymmetric.dsa.DSASigner.noneDSA;

import com.sist.controller.RequestMapping;
import com.sist.dao.*;
import com.sist.vo.*;

public class SouelModel {
	@RequestMapping("seoul/location.do")	//명소
	public String seoul_location(HttpServletRequest request, HttpServletResponse response) {
		//사용자 요청 받기
		String page=request.getParameter("page");
		if(page==null) page="1";
		int curpage=Integer.parseInt(page);
		//요청 처리(db연동)
		Map map=new HashMap();
		map.put("start", (curpage*20)-19);
		map.put("end", curpage*20);
		List<SeoulLocationVO> list=SeoulDAO.seoulLocationListData(map);
		int totalPage=SeoulDAO.seoulLocationTotalPage();
		final int BLOCK=10;
		int startPage=((curpage-1)/BLOCK*BLOCK)+1;
		int endPage=((curpage-1)/BLOCK*BLOCK)+BLOCK;
		if(endPage>totalPage) endPage=totalPage;
		//결과값 브라우저로 전송
		request.setAttribute("curpage", curpage);
		request.setAttribute("totalPage", totalPage);
		request.setAttribute("startPage", startPage);
		request.setAttribute("endPage", endPage);
		request.setAttribute("sList", list);
		
		//화면 출력 설정
		request.setAttribute("main_jsp", "../seoul/location.jsp");
		return "../main/main.jsp";
	}
	
	@RequestMapping("seoul/nature.do")	//명소
	public String seoul_nature(HttpServletRequest request, HttpServletResponse response) {
		//사용자 요청 받기
		String page=request.getParameter("page");
		if(page==null) page="1";
		int curpage=Integer.parseInt(page);
		//요청 처리(db연동)
		Map map=new HashMap();
		map.put("start", (curpage*20)-19);
		map.put("end", curpage*20);
		List<SeoulNatureVO> list=SeoulDAO.seoulNatureTotalPage(map);
		int totalPage=SeoulDAO.seoulNatureTotalPage();
		final int BLOCK=10;
		int startPage=((curpage-1)/BLOCK*BLOCK)+1;
		int endPage=((curpage-1)/BLOCK*BLOCK)+BLOCK;
		if(endPage>totalPage) endPage=totalPage;
		//결과값 브라우저로 전송
		request.setAttribute("curpage", curpage);
		request.setAttribute("totalPage", totalPage);
		request.setAttribute("startPage", startPage);
		request.setAttribute("endPage", endPage);
		request.setAttribute("sList", list);
		
		//화면 출력 설정
		request.setAttribute("main_jsp", "../seoul/nature.jsp");
		return "../main/main.jsp";
	}
	
	@RequestMapping("seoul/shop.do")	//명소
	public String nature(HttpServletRequest request, HttpServletResponse response) {
		//사용자 요청 받기
		String page=request.getParameter("page");
		if(page==null) page="1";
		int curpage=Integer.parseInt(page);
		//요청 처리(db연동)
		Map map=new HashMap();
		map.put("start", (curpage*20)-19);
		map.put("end", curpage*20);
		List<SeoulShopVO> list=SeoulDAO.seoulShopListData(map);
		int totalPage=SeoulDAO.seoulShopListData();
		final int BLOCK=10;
		int startPage=((curpage-1)/BLOCK*BLOCK)+1;
		int endPage=((curpage-1)/BLOCK*BLOCK)+BLOCK;
		if(endPage>totalPage) endPage=totalPage;
		//결과값 브라우저로 전송
		request.setAttribute("curpage", curpage);
		request.setAttribute("totalPage", totalPage);
		request.setAttribute("startPage", startPage);
		request.setAttribute("endPage", endPage);
		request.setAttribute("sList", list);
		
		//화면 출력 설정
		request.setAttribute("main_jsp", "../seoul/shop.jsp");
		return "../main/main.jsp";
	}
}
