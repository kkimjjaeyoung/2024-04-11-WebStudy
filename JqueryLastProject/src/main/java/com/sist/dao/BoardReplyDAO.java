package com.sist.dao;
import java.util.*;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.sist.vo.*;

public class BoardReplyDAO {
	private static SqlSessionFactory ssf;
	static {
		ssf=CreateSqlSessionFactory.getSsf();
	}
	
	public static List<BoardReplyVO> replyListData(int bno){
		List<BoardReplyVO> list=new ArrayList<BoardReplyVO>();
		SqlSession session=null;
		try {
			session=ssf.openSession();
			list=session.selectList("replyListData", bno);
		}catch (Exception ex) {
			ex.printStackTrace();
		}finally {
			if(session!=null) session.close();
		}
		return list;
	}
	
	public static void replyInsert(BoardReplyVO vo) {
		SqlSession session=null;
		try {
			session=ssf.openSession(true);
			session.insert("replyInsert", vo);
		}catch (Exception ex) {
			ex.printStackTrace();
		}finally {
			if(session!=null) session.close();
		}
	}
	
	public static void replyDelete(int rno) {
		SqlSession session=null;
		try {
			session=ssf.openSession(true);
			session.insert("replyInsert", rno);
		}catch (Exception ex) {
			ex.printStackTrace();
		}finally {
			if(session!=null) session.close();
		}
	}
}
