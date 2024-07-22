package com.sist.model;

import javax.servlet.http.HttpServletRequest;
//처리하는 기능이 비슷한 경우 클래스 통합

public interface Model {
	public String execute(HttpServletRequest request);
	
	
}
