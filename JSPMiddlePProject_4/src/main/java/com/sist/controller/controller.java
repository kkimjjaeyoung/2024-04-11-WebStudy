package com.sist.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.sist.model.*;

/**
 * Servlet implementation class controller
 */
@WebServlet("*.do")
public class controller extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
		clsMap.put("",new boarderlist)
	}

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String cmd=request.getRequestURI();
		cmd=cmd.substring(request.getContextPath().length()+1);
		
		if(cmd.equals("board/list.do")){
			
		}
		else if(cmd.equals("board/model.do")) {
					
				}
		else if(cmd.equals("board/insert.do")) {
			
		}
		else if(cmd.equals("board/insert_ok.do")) {
			
		}
		
		//
		RequestDispatcher rd=request.getRequestDispatcher(jsp);
		rd.forward(request, response);
	}

}
