/*
 * 1. JSP/Servlet : Model 1 방식
 * 	장점 
 * 		1). 서블릿의 경우 자바코드만으로 HTML코드작성시 오류발생확률이 낮다(개발에 있어 정확하고 빠르다)
 * 		2). JSP의 경우 ::
 * 		3). 구조가 단순하다(자바/HTML의 구분 : <% %>, <%@ %>)
 * 	단점 
 * 		1). 가독성이 떨어진다(확장성, 재사용성이 떨어진다)
 * 		2). 자바의 로직이나 데이터베이스 등이 노출된다(JSP는 배포시 모든 소스를 전달. 보안취약점 발생.)
 * 		3). 파일 1개 작업을 하므로 분업이 힘들고 여러 지식이 동시에 요구된다)
 * 	사용처 : 개인기업 사이트, 유지보수가 적은 경우, 
 * 
 * 2. MVC : Model 2 방식. Model 1방식을 보완
 * 	1). 확장성/재사용성 강화
 * 	2). 보안 강화(HTML과 JAVA 분리)
 * 	3). 분업화 활성
 * 	4). Controller 집중 구조라 의존도가 치우쳐져있음(서버에 부하가 많을 수 있다)
 * 		-Front-end의 MVC(Redux/Flux/Vuew)
 * 		-서버를 나눠서 동시에 구동(MSA. 애자일 기법 : 비용이 많이 든다, 유지보수를 목적으로 한다, 모든 편집기로 어시스트 가능.)
 * 
 * 기능처리
 * 	1. 클래스화
 * 		-관리가 어렵다(다수의 클래스 필요)
 * 	2. 메소드화
 * 		-구분자 필요(어노테이션)
 * 		
 */
package com.sist.controller;
import java.util.*;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sist.model.Model;

//controller는 고정. 추가/수정은 파일(xml)
@WebServlet("*.do")
public class DispecherServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private String[] strCls= {
		"com.sist.model.MovieListModel", "com.sist.model.MovieDetailModel"
	};
	private String[] strCmd= {	//찾기
			"list.do", "detail.do"
	};
	//1. 클래스 등록, 2. sql문장 등록, 3. 클라이언트 정보 등록
	private Map clsMap=new HashMap();
	
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
		try {
			for(int i=0; i<strCls.length; i++ ) {
				Class clsName=Class.forName(strCls[i]);	//클래스 정보 읽기 
				Object obj=clsName.getDeclaredConstructor().newInstance();	//클래스 메모리 할당
				//new : 결합성이 높아 사용을 자제(스프링에선 사용안함)
				clsMap.put(strCmd[i], obj);
				System.out.println(strCmd[i]+":"+obj);
				//시작과 동시에 클래스 메모리 저장(싱클턴. 변경이 없다)
			}
		}catch (Exception ex) {
			// TODO: handle exception
		}
	}
	

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		/*
		Model model1=(Model)clsMap.get("list.do");
		Model model2=(Model)clsMap.get("list.do");
		Model model3=(Model)clsMap.get("list.do");
		Model model4=(Model)clsMap.get("list.do");
		Model model5=(Model)clsMap.get("list.do");
		System.out.println("model1="+model1);
		System.out.println("model1="+model2);
		System.out.println("model1="+model3);
		System.out.println("model1="+model4);
		System.out.println("model1="+model5);
		*/
		//사용자 요청 사항
		String cmd=request.getRequestURI();
		//해당 Model찾기
		cmd=cmd.substring(cmd.lastIndexOf("/")+1);
		Model model=(Model)clsMap.get(cmd);
		//JSP에 전송할 데이터를 가져오기
		String jsp=model.execute(request, response);
		//JSP로 request전송
		RequestDispatcher rd=request.getRequestDispatcher(jsp);
		rd.forward(request, response);
	}

}
