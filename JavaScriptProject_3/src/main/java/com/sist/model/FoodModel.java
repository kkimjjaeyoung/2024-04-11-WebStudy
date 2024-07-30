/*
 * 1. 자바 : 데이터 관리(변수, 제어문, 연산자, 메소드, db연동)
 * 2. 오라클 : SQL
 * 3. HTML/CSS : 브라우저에 출력
 * 4. 자바스크립트 : HTML과 CSS 제어
 * 	- 통합
 * 	sqring Frameword
 * 	1. 데이터 연결 : MyBatis
 * 	2. 
 * 
 */
package com.sist.model;
import java.util.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sist.controller.RequestMapping;
import com.sist.dao.*;

public class FoodModel {
	private FoodDAO dao=FoodDAO.newInstance();
	@RequestMapping("js/food_find.do")
	public String food_find(HttpServletRequest request, HttpServletResponse response) {
		
		return "../food/food_find.jsp";
	}
	// _js : 자바스크립트에서 데이터를 읽어온다
	@RequestMapping("food/food_find_js.do")
	public void food_find_js(HttpServletRequest request, HttpServletResponse response) {
		String page=request.getParameter("page");
		if(page==null) page="1";
		String addr=request.getParameter("addr");
		if(addr==null) addr="마포";
		int curpage=Integer.parseInt(page);
	}
	@RequestMapping("food/food_detail_js.do")
	public void food_detail_js(HttpServletRequest request, HttpServletResponse response) {
		
	}
}
