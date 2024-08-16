package com.sist.dao;
import java.util.*;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.sist.vo.*;
public class BoardReplyDAO {
	private static SqlSessionFactory ssf;
	static{
		ssf=CreateSqlSessionFactory.getSsf();
	}

	//댓글 목록 출력
	public static List<BoardReplyVO> replyListData(int bno){
		List<BoardReplyVO> list=new ArrayList<BoardReplyVO>();
		SqlSession session=null;
		try{
			session=ssf.openSession();
			list=session.selectList("replyListData",bno);
		}catch(Exception ex){
			ex.printStackTrace();
		}
		finally
		{
			if(session!=null) session.close();
		}
		return list;
	}

	//댓글 등록
	public static void replyInsert(BoardReplyVO vo){
		SqlSession session=null;
		try{
			session=ssf.openSession(true);
			session.insert("replyInsert",vo);
		}catch(Exception ex){
			ex.printStackTrace();
		}
		finally{
			if(session!=null) session.close();
		}
	}

	//댓글 삭제
	public static void replyDelete(int rno){
		SqlSession session=null;
		try{
			session=ssf.openSession(true);
			session.delete("replyDelete",rno);
		}catch(Exception ex){
			ex.printStackTrace();
		}
		finally
		{
			if(session!=null)
				session.close();
		}
	}

	//댓글 수정
	public static void replyUpdate(BoardReplyVO vo){
		SqlSession session=null;
		try{
			session=ssf.openSession(true);
			session.update("replyUpdate",vo);
		}catch(Exception ex){
			ex.printStackTrace();
		}
		finally{
			if(session!=null) session.close();
		}
	}
}