package com.sist.model;
import java.io.PrintWriter;
import java.util.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import com.sist.dao.*;
import com.sist.vo.*;

import com.sist.controller.RequestMapping;

public class FoodModel {
	private String[] strType={"","한식", "중식","양식", "일식", "분식"};
	@RequestMapping("food/list.do")
	public String food_list(HttpServletResponse response, HttpServletRequest request) {
		return "list.jsp";
	}
	@RequestMapping("food/type.do")
	public void food_type(HttpServletResponse response, HttpServletRequest request) {
		String page=request.getParameter("page");
		if(page==null) {
			page="1";
		}
		int curpage=Integer.parseInt(page);
		String type=request.getParameter("type");
		if(type==null) {
			type="1";
		}
		Map map=new HashMap();
		int rowSize=20;
		int start=(rowSize*curpage)-(rowSize-1);
		int end=rowSize*curpage;
		
		map.put("start", start);
		map.put("end", end);
		map.put("type", strType[Integer.parseInt(type)]);
		
	
	
	}
	
	
	@RequestMapping("food2/list.do")
	public String food2_list(HttpServletRequest request, HttpServletResponse response) {
		
		return "list.jsp";
	}
	
	@RequestMapping("food2/food.do")
	public void food2_food(HttpServletRequest request, HttpServletResponse response) {
		String page=request.getParameter("page");
		if(page==null) {
			page="1";
		}
		int curpage=Integer.parseInt(page);
		String type=request.getParameter("type");
		if(type==null) {
			type="1";
		}
		Map map=new HashMap();
		int rowSize=20;
		int start=(rowSize*curpage)-(rowSize-1);
		int end=rowSize*curpage;
		
		map.put("start", start);
		map.put("end", end);
		map.put("type", strType[Integer.parseInt(type)]);
		
		List<FoodVO> list=FoodDAO.foodListData(map);
		int totalpage=FoodDAO.foodTotalPage(strType[Integer.parseInt(type)]);
		
		try {
			JSONArray arr=new JSONArray();
			int i=0;
			for(FoodVO vo:list) {
				JSONObject obj=new JSONObject();
				obj.put("fno", vo.getFno());
				obj.put("name", vo.getName());
				obj.put("poster", vo.getPoster());
				if(i==0) {
					obj.put("curpage", curpage);
					obj.put("totalpage", totalpage);
					obj.put("type", type);
				}
				
				arr.add(vo);
				i++;
			}
			
			//jsp로 전송
			response.setContentType("text/plain;charest=UTF-8");
			PrintWriter out=response.getWriter();
			out.write(arr.toJSONString());
		}catch (Exception ex) {
			ex.printStackTrace();
		}
	}
}
