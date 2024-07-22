package com.sist.model;

import javax.servlet.http.HttpServletRequest;

import com.sist.dao.*;

public class ReplyOkModel implements Model {

	@Override
	public String execute(HttpServletRequest requeset) {
		// TODO Auto-generated method stub
		return "redirect:list.do";
	}

	public void boardReplyInsert(int pno, BoardVO vo) {
		try {
			getConnection();
			conn.setAutoCommit(false);
			
			conn.commit(); 
		}catch (Exception ex) {
			// TODO: handle exception
			try {
				//SQL문장이 틀린 경우
				conn.rollback();
			}catch(Exception e) {
				ex.printStackTrace();
			}
		}finally {
			try {
				conn.setAutoCommit(true);
				disConnection();
			}catch(Exception e) {
				
			}
		}
	}
}
