package com.sist.model;

import javax.servlet.RequestDispatcher;

import com.sist.dao.*;

public class UpdateModel implements Model {

	@Override
	public String execute(RequestDispatcher request) {
		// TODO Auto-generated method stub
		//
		String no=request
		return "update.jsp";
		BoardDAO dao=BoardDAO.newInstance();
		BoardVO vo=BoardVO
	}

}
