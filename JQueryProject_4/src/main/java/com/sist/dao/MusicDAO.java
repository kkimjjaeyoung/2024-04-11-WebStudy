package com.sist.dao;
import java.util.*;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import java.io.*;

public class MusicDAO {
	private static SqlSessionFactory ssf;
	static {
		try {
			//XML : ssf에 전송
			Reader reader=Resources.getResourceAsReader("Config.xml");
			ssf=new SqlSessionFactoryBuilder().build("reader");
		}catch (Exception ex) {
			ex.printStackTrace();
		}
	}
	public static List<MusicVO> musicListDatA(){
		List<MusicVO> list=new ArrayList<MusicVO>();
		SqlSession session=null;
		try {
			session=ssf.openSession();
			list=session.selectList("musicListData");
		}catch (Exception ex) {
			ex.printStackTrace();	//필수는 아니다(컴파일 예외처리가 아니다). 에러처리를 위함.
		}finally {
			if(session!=null) session.close();
		}
		return list;
	}
	
}
