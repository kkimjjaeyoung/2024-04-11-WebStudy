package com.sist.dao;
import java.util.*;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.sist.vo.*;

public class DataBoardDAO {
	private static SqlSessionFactory ssf;
	static {
		ssf=CreateSqlSessionFactory.getSsf();
		
		
	}
	
	//기능
	public static void databoardInsert(DataBoardVO vo) {
		SqlSession session=null;
		try {
			//연결 : Connection주소 얻기(미리 Connection객체 생성. 연결시간 단축. 객체 관리.)
			session=ssf.openSession(true);		//autoCommit 활성화중. 	 openSession()로 비활성화
			session.insert("databoardInsert", vo);
		}catch (Exception ex) {
			ex.printStackTrace();
		}finally {
			if(session!=null) session.close();
		}
	}
	
	public static List<DataBoardVO> databoardListData(Map map){
		List<DataBoardVO> list=new ArrayList<DataBoardVO>();
		SqlSession session=null;
		try {
			//연결 : Connection주소 얻기(미리 Connection객체 생성. 연결시간 단축. 객체 관리.)
			session=ssf.openSession(true);		//autoCommit 활성화중. 	 openSession()로 비활성화
			list=session.selectList("databoardInsert", map);
		}catch (Exception ex) {
			ex.printStackTrace();
		}finally {
			if(session!=null) session.close();
		}
		return list;
	}
	
	public static int databoardRowCount() {
		int count=0;
		SqlSession session=null;
		try {
			//연결 : Connection주소 얻기(미리 Connection객체 생성. 연결시간 단축. 객체 관리.)
			session=ssf.openSession(true);		//autoCommit 활성화중. 	 openSession()로 비활성화
			count=session.selectOne("databoardInsert");
		}catch (Exception ex) {
			ex.printStackTrace();
		}finally {
			if(session!=null) session.close();
		}
		return count;
	}
}
