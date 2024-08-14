package com.sist.model;
import java.util.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sist.controller.RequestMapping;
import com.sist.dao.*;
import com.sist.vo.*;
public class CampGoodsModel {
	private String[] tables={"","CAMP_GOODS_ALL","CAMP_GOODS_BRAND","CAMP_GOODS_BEST","CAMP_GOODS_NEW","CAMP_GOODS_SPECIAL"};
	private String[] titles= {"","전체 상품","브랜드별 상품","베스트 상품","신상품","세일 상품"};
	@RequestMapping("campgoods/list.do")
	public String campgoods_list(HttpServletRequest request, HttpServletResponse response) {
		String gno=request.getParameter("gno");
		if(gno==null)
			gno="1"; // 참조 NO => tables
		String page=request.getParameter("page");
		if(page==null)
			page="1";
		int curpage=Integer.parseInt(page);
		Map map=new HashMap();
		int rowSize=20;
		int start=(rowSize*curpage)-(rowSize-1);
		int end=rowSize*curpage;
		map.put("table_name", tables[Integer.parseInt(gno)]);
		map.put("start", start);
		map.put("end", end);
		List<CampGoodsVO> gList=CampGoodsDAO.campGoodsListData(map);
		int totalpage=CampGoodsDAO.campGoodsTotalPage(map);
		
		final int BLOCK=10;
		int startPage=((curpage-1)/BLOCK*BLOCK)+1;
		int endPage=((curpage-1)/BLOCK*BLOCK)+BLOCK;
		if(endPage>totalpage)
			endPage=totalpage;
		
		request.setAttribute("gList", gList);
		request.setAttribute("curpage", curpage);
		request.setAttribute("totalpage", totalpage);
		request.setAttribute("startPage", startPage);
		request.setAttribute("endPage", endPage);
		request.setAttribute("gno", gno);
		request.setAttribute("title", titles[Integer.parseInt(gno)]);
		
		request.setAttribute("main_jsp", "../campgoods/list.jsp");
		return "../main/main.jsp";
	}
	@RequestMapping("campgoods/detail.do")
	public String campgoods_detail(HttpServletRequest request, HttpServletResponse response) {
		String gno=request.getParameter("gno"); 
		String cno=request.getParameter("cno");
		Map map=new HashMap();
		map.put("cno", cno);
		map.put("table_name", tables[Integer.parseInt(gno)]);
		CampGoodsVO vo=CampGoodsDAO.campGoodsDetailData(map);
		String price2=vo.getPrice();
		price2=price2.replaceAll("[^0-9]", "");
		vo.setPrice2(Integer.parseInt(price2));
		request.setAttribute("vo", vo);
		request.setAttribute("main_jsp", "../campgoods/detail.jsp");
		return "../main/main.jsp";
	}
}