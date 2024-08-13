package com.sist.dao;
import java.util.*;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import java.io.*;
import com.sist.vo.*;
import lombok.Locked.Read;

public class CampDAO {

	private static SqlSessionFactory ssf;
	static
	{
		ssf=CreateSqlSessionFactory.getSsf();
	}
	
	public static List<CampVO> campListData(Map map)
	{
		List<CampVO> list=new ArrayList<CampVO>();
		SqlSession session=null;
		
		try
		{
			session=ssf.openSession();
			list=session.selectList("campListData",map);
		}catch(Exception ex)
		{
			System.out.println("CampDAO 오류 1");
			ex.printStackTrace();
		}
		finally
		{
			if(session!=null)
				session.close();
		}
		
		return list;
	}
	
	public static int campRowCount()
	{
		SqlSession session=ssf.openSession();
		int count=session.selectOne("campRowCount");
		session.close();
		
		return count;
	}
	
	public static CampVO campDetailData(int no)
	{
		SqlSession session=null;
		CampVO vo=new CampVO();
		try
		{
			session=ssf.openSession();
			session.update("hitIncrement", no);
			session.commit();
			
			vo=session.selectOne("campDetailData", no);
		}catch(Exception ex)
		{
			System.out.println("CampDAO 오류 2");
			ex.printStackTrace();
		}
		finally
		{
			// connection 반환 (DBCP) => 재사용(반환 시 가능)
			if(session!=null)
				session.close();
		}
		
		return vo;
	}
}
