package com.sist.model;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.sist.controller.RequestMapping;
import java.util.*;
import com.sist.dao.*;
import com.sist.vo.*;

public class MainModel {
	@RequestMapping("main/main.do")
	public String main_main(HttpServletRequest request , HttpServletResponse response) {
		
		Cookie[] cookies = request.getCookies();
		List<FoodVO> cookieList = new ArrayList<FoodVO>();
		if(cookies!=null) {
			for(int i=cookies.length-1; i>=0; i--) {
				if(cookies[i].getName().startsWith("food_")) {
					String fno = cookies[i].getValue();
					FoodVO vo = FoodDAO.foodDetailData(Integer.parseInt(fno));
					cookieList.add(vo);
				}
			}
		}
		
		List<FoodVO> hitList = FoodDAO.foodHitTopData();
		List<FoodVO> likeList = FoodDAO.foodLikeTopData();
		List<FoodVO> jjimList = FoodDAO.foodJjimTopData();
		
		request.setAttribute("cookieList", cookieList);
		request.setAttribute("hitList", hitList);
		request.setAttribute("likeList", likeList);
		request.setAttribute("jjimList", jjimList);
		
		request.setAttribute("main_jsp", "../main/home.jsp");
		return "../main/main.jsp";
	}
}
