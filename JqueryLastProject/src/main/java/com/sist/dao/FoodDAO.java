package com.sist.dao;

import java.util.*;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.sist.vo.*;

public class FoodDAO {
	private static SqlSessionFactory ssf;
	static {
		ssf=CreateSqlSessionFactory.getSsf();
	}
	
	//hit순
	public static List<FoodVO> foodHitTopData(){
		List<FoodVO> list=new ArrayList<FoodVO>();
		SqlSession session=null;
		try {
			session=ssf.openSession();
			list=session.selectList("foodHitTopData")
		} catch (Exception ex) {
			ex.printStackTrace();
		}finally {
			if(session!=null) session.close();
		}
	}
	//like순
	public static List<FoodVO> foodlikeTopData(){
		List<FoodVO> list=new ArrayList<FoodVO>();
		SqlSession session=null;
		try {
			session=ssf.openSession();
			list=session.selectList("foodlikeTopData");
		} catch (Exception ex) {
			ex.printStackTrace();
		}finally {
			if(session!=null) session.close();
		}
	}
	//jjim순
	public static List<FoodVO> foodjjimTopData(){
		List<FoodVO> list=new ArrayList<FoodVO>();
		SqlSession session=null;
		try {
			session=ssf.openSession();
			list=session.selectList("foodjjimTopData");
		} catch (Exception ex) {
			ex.printStackTrace();
		}finally {
			if(session!=null) session.close();
		}
	}
}
