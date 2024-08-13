package com.sist.dao;

import java.util.*;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.sist.vo.*;

public class AllReplyDAO {
	private static SqlSessionFactory ssf;
	static {
		ssf=CreateSqlSessionFactory.getSsf();
	}
	
	public static void allReplyInsert(AllReplyVO vo) {
		SqlSession session=null;
		try {
			session=ssf.openSession(true);
			session.insert("allReplyInsert", vo);
		}catch (Exception ex) {
			ex.printStackTrace();
		}finally {
			if(session!=null) session.close();
		}
	}
	
	public static List<AllReplyVO> allReplyListData(Map map){
		List<AllReplyVO> list=new ArrayList<AllReplyVO>();
		SqlSession session=null;
		try {
			session=ssf.openSession(true);
			session.insert("allReplyListData", map);
		}catch (Exception ex) {
			ex.printStackTrace();
		}finally {
			if(session!=null) session.close();
		}
		return list;
	}
}
