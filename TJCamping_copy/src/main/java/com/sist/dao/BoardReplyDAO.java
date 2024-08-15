package com.sist.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.sist.vo.BoardReplyVO;

public class BoardReplyDAO {
	private static SqlSessionFactory ssf;
	static {
		ssf=CreateSqlSessionFactory.getSsf();
		
	}
	
	//댓글 리스트
	public static List<BoardReplyVO> replyListData(int bno){
		List<BoardReplyVO> list=new ArrayList<BoardReplyVO>();
		SqlSession session=null;
		try {
			session=ssf.openSession();
			list=session.selectList("replyListData", bno);
		} catch (Exception ex) {
			ex.printStackTrace();
		}finally {
			if(session!=null) session.close(); 
		}
		return list;
	}
	
	//댓글 등록
	public static void replyInsert(BoardReplyVO vo) {
		SqlSession session=null;
		try {
			session=ssf.openSession(true);		//오토커밋
			session.insert("replyInsert", vo);
		} catch (Exception ex) {
			ex.printStackTrace();
		}finally {
			if(session!=null) session.close();
		} 
	}
	
	//댓글 수정
	public static void replyUpdate(BoardReplyVO vo) {
		SqlSession session=null;
		try {
			session=ssf.openSession();
			session.update("replyUpdate", vo);
		} catch (Exception ex) {
			ex.printStackTrace();
		}finally {
			if(session!=null) session.close();
		}
	}
	
	//댓글 삭제
	public static void replyDelete(BoardReplyVO vo) {
		SqlSession session=null;
		try {
			session=ssf.openSession();
			session.delete("replyDelete", vo);
		} catch (Exception ex) {
			ex.printStackTrace();
		}finally {
			if(session!=null) session.close();
		}
	}
}
