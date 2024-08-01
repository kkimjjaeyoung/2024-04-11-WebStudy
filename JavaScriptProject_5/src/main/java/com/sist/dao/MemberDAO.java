package com.sist.dao;
import java.util.*;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import java.io.*;

public class MemberDAO {
	private static SqlSessionFactory ssf;	//sql을 읽어서 저장
	static {	//초기화 블록
		try {
			Reader reader=Resources.getResourceAsReader("config.xml");
			ssf=new SqlSessionFactoryBuilder().build(reader);
		}catch (Exception ex) {
			ex.printStackTrace();
		}
	}
	//기능 설정
	//표준화
	public static List<ZipcodeVO> postFind(String dong){
		List<ZipcodeVO> list=new ArrayList<ZipcodeVO>();
		SqlSession session=null;
		try {
			session=ssf.openSession(); //=getconnection
			list=session.selectList("", dong);
		}catch(Exception ex) {
			ex.printStackTrace();
		}finally {
			if(session!=null) session.close();//반환
		}
		
		return list;
	}
	public static int postFindCount(String dong) {
		int count=0;
		SqlSession session=null;
		try {
			session=ssf.openSession(); //=getconnection
			count=session.selectOne("postFindCount", dong);
		}catch(Exception ex) {
			ex.printStackTrace();
		}finally {
			if(session!=null) session.close();//반환
		}
		return count;
	}
}
