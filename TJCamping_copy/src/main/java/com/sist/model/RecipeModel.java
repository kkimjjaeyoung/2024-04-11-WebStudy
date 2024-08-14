package com.sist.model;
import java.awt.Robot;
import java.util.*;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sist.vo.*;
import com.sist.controller.RequestMapping;
import com.sist.dao.*;
public class RecipeModel {
   @RequestMapping("recipe/list.do")
   public String recipe_list(HttpServletRequest request,HttpServletResponse response)
   {
	   // 사용자 요청값 받기 
	   String page=request.getParameter("page");
	   if(page==null)
		   page="1";
	   int curpage=Integer.parseInt(page);
	   Map map=new HashMap();
	   int rowSize=20;
	   int start=(rowSize*curpage)-(rowSize-1);
	   int end=rowSize*curpage;
	   
	   map.put("start", start);
	   map.put("end", end);
	   List<RecipeVO> rList=RecipeDAO.recipeListData(map);
	   int totalpage=RecipeDAO.recipeTotalPage();
	   
	   final int BLOCK=10;
	   int startPage=((curpage-1)/BLOCK*BLOCK)+1;
	   int endPage=((curpage-1)/BLOCK*BLOCK)+BLOCK;
	   
	   if(endPage>totalpage)
		   endPage=totalpage;
	   
	   request.setAttribute("rList", rList);
	   request.setAttribute("curpage", curpage);
	   request.setAttribute("totalpage", totalpage);
	   request.setAttribute("startPage", startPage);
	   request.setAttribute("endPage", endPage);
	   // DB연동 => 출력할 데이터 전송 
	   int count=RecipeDAO.recipeListCount();
	   request.setAttribute("count", count);
	   
	   
	   request.setAttribute("main_jsp", "../recipe/list.jsp");
	   return "../main/main.jsp";
   }
   @RequestMapping("recipe/detail_before.do")
   public String recipe_detail_before(HttpServletRequest request,HttpServletResponse response)
   {
	   String no=request.getParameter("no");
	   String type=request.getParameter("type");
	   // 쿠키 
	   Cookie cookie=new Cookie("recipe_"+no, no);
	   cookie.setMaxAge(60*60*24);
	   cookie.setPath("/");
	   // 브라우저로 전송 
	   response.addCookie(cookie);
	   return "redirect:../recipe/detail.do?no="+no+"&type="+type;
   }
   
   // 검색 
   // _ok.do => redirect (이전에 존재하는 화면 이동)
   // ajax => void : 자체 파일에서 처리 
   // 일반 => main.jsp 
   @RequestMapping("recipe/find.do")
   public String recipe_find(HttpServletRequest request,HttpServletResponse response)
   {
	   try
	   {
		   request.setCharacterEncoding("UTF-8");
	   }catch(Exception ex) {}
	   String ss=request.getParameter("ss");
	   if(ss==null)
		   ss="마포";
	   String page=request.getParameter("page");
	   if(page==null)
		   page="1";
	   int curpage=Integer.parseInt(page);
	   int rowSize=20;
	   int start=(rowSize*curpage)-(rowSize-1);
	   int end=(rowSize*curpage);
	   
	   Map map=new HashMap();
	   map.put("start",start);
	   map.put("end", end);
	   map.put("ss", ss);
	   // 데이터 읽기
	   List<RecipeVO> rList=RecipeDAO.recipeFindListData(map);
	   int totalpage=RecipeDAO.recipeFindTotalPage(ss);
	   // 총페이지 읽기 
	   final int BLOCK=10;
	   int startPage=((curpage-1)/BLOCK*BLOCK)+1;
	   int endPage=((curpage-1)/BLOCK*BLOCK)+BLOCK;
	   if(endPage>totalpage)
		   endPage=totalpage;
	   
	   request.setAttribute("curpage", curpage);
	   request.setAttribute("totalpage", totalpage);
	   request.setAttribute("startPage", startPage);
	   request.setAttribute("endPage", endPage);
	   request.setAttribute("rList", rList);
	   request.setAttribute("ss", ss);
	   // BLOCK별 처리 
	   request.setAttribute("main_jsp", "../recipe/find.jsp");
	   return "../main/main.jsp";
   }
}