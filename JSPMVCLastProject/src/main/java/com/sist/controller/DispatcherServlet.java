package com.sist.controller;
import java.util.*;
import java.io.File;
import java.io.IOException;
import java.lang.reflect.Method;
import java.net.URL;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.parsers.*;
import org.w3c.dom.*;

import org.apache.taglibs.standard.tag.common.core.CatchTag;
/*
 * DispatcherServlet : 스프링 제공 컨트롤러 이름
 * 
 * MVC : 
 * 	M(model) : 요청을 처리해주는 모든 클래스의 집합(VO, DAO, Manager, Service)
 * 	V(view) : 전송받은 request를 출력하는 역할. JSP로 구성. 요청 전송과 데이터 출력(<a>, <form>, 자바스크립트)
 * 	C(controller) : 사용자 요청 전송 후 처리결과 수령 후 JSP로 전송.
 * 		1). 메뉴를 다 알고있어야 함. 누가 요청했는지의 여부.
 * 		2). 클래스가 많으면 관리가 힘들다(검색이 오래걸린다)
 * 		3). 메소드 호출에 메소드명이 전부 필수(메소드명 사전설정 필요)
 * 			-어떤 메소드 명을 사용해도 자동처리하도록 설정(구분자 어노테이션)
 * ***스프링 구조 : 라이브러리(자바파일). 설정파일은 xml, 구분자는 어노테이션 사용.
 */
/**
 * Servlet implementation class DispatcherServlet
 */
@WebServlet("*.do")
public class DispatcherServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private List<String> clsList=new ArrayList<String>();
	//application.xml -> 클래스 등록				
	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
		try {
			URL url=this.getClass().getClassLoader().getResource(".");	//현재경로명 읽기(운영체제 상관없이)
			File file=new File(url.toURI());
			System.out.println(file.getPath());
			String path=file.getPath();
			path=path.replace("\\", File.separator);	//os에 따라 /,\ 자동변경
			path=path.substring(0,path.lastIndexOf(File.separator));
			path=path+File.separator+"application.xml";
			//.xml 파싱
			DocumentBuilderFactory dbf=DocumentBuilderFactory.newInstance();
			//파서기 : xml데이터 추출
			DocumentBuilder db=dbf.newDocumentBuilder();	
			//파서된 데이터 저장
			Document doc=db.parse(new File(path));
			//루트(테이블)
			Element beans=doc.getDocumentElement();	
			NodeList list=beans.getElementsByTagName("bean");
			for(int i=0;i<list.getLength();i++)
			{
				Element bean=(Element)list.item(i);
				String id=bean.getAttribute("id");
				String cls=bean.getAttribute("class");
				System.out.println(id+":"+cls);
				clsList.add(cls);
			}
		}catch (Exception ex) {
			// TODO: handle exception
		}
	}
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//메소드를 찾아 서비스 제공
		String cmd=request.getRequestURI();
		cmd=cmd.substring(request.getContextPath().length()+1);
		try {
			for(String cls:clsList) {
				Class clsName=Class.forName(cls);
				Object obj=clsName.getDeclaredConstructor().newInstance();
				//선언된 모든 메소드를 가져온다
				Method[] methods=clsName.getDeclaredMethods();
				for(Method m:methods) {
					//System.out.println(m.getName()); 	//출력확인 
					RequestMapping rm=m.getAnnotation(RequestMapping.class);
					//rs.value로 cmd와 같은걸 출력
					if(rm.value().equals(cmd)) {
						//찾은 메소드를 호출. invoke : 메소드명을 몰라도 호출 가능
						String jsp=(String)m.invoke(obj,request, response);
						//void일때. ajax(자바스크립트 연동)
						if(jsp==null) {
							
							return;
						}
						else if(jsp.startsWith("redirect")) {
							//sendRedirect
							jsp=jsp.substring(jsp.indexOf(":")+1);
							response.sendRedirect(jsp);
						}
						else {
							//forward
							RequestDispatcher rd=request.getRequestDispatcher(jsp);
							rd.forward(request, response);
						}
						return;
					}
				}
			}
		}catch (Exception ex) {	}
	}

}
