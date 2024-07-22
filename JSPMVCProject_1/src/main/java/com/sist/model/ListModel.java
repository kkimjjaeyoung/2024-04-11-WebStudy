/*
 * MVC : HTML과 JAVA의 분리. 
 * 	장점 : 분업이 편리. 확장성 향상. 재사용 용의.
 *  단점 : 소스가 복잡. Controller에의 의존성 높음(컨트롤러를 여러 개 사용하여 보완).
 *  	-	Spring에선 MVC Project만 사용 가능
 * MVC 구조 
 * 	Model : 자바와 관련된 소스(DAO, VO, Service, Manager). 사용자 요청에 따른 데이터 관리.
 * 	View : 태그형 프로그램 중심(JSP, HTML, CSS, JavaProject). model에서 받은 데이터를 화면에 출력.
 * 	Controller : model과 view를 연결시켜주는 역할(Servlet. 스프링에선 이미 제작)
 * MVC 실행 과장
 * 	1. JSP 요청 : <a>, <form>, ajax, javascript
 * 	2. Controller가 요청값 수령 
 * 		1). 요청값 수령 : request,response 전송
 * 		2). 해당 model 탐색
 * 		3). 받아서 출력할 JSP 수색
 * 		4). JSP에 request 전송 : forward()를 이용하여 전송
 * 			-	모든 화면은 Controller이다.(.do = 서블릿을 나타낸다)
 * 			-	JSP화면만 갱신
 * 	3. JSP에 화면을 출력후 Controller에 덮어쓴다
 * 		-	시작과 끝은 Controller로 구성(모든 url주소는 = .do~ .do)
 * 			-	.do : 서블릿을 찾을 때 사용
 * 	 -	JSP->Controller->Model->DAO->Model->Controller->JSP
 * 
 */

package com.sist.model;

import javax.servlet.http.HttpServletRequest;

public class ListModel {
	public String execute(HttpServletRequest request) {
		String msg="게시판 목록";
		request.setAttribute("msg", msg);
		
		return "view/list.jsp";
	}
}
