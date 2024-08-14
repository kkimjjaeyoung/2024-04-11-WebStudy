package com.sist.dao;

import java.util.*;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.sist.vo.*;
public class CampGoodsDAO {
	private static SqlSessionFactory ssf;
	static {
		try {
		ssf=CreateSqlSessionFactory.getSsf();
		}catch(Exception e) {e.printStackTrace();}
	}
	public static List<CampGoodsVO> campGoodsListData(Map map){
		List<CampGoodsVO> list=new ArrayList<CampGoodsVO>();
		SqlSession session=null;
		try {
			session=ssf.openSession();
			list=session.selectList("campGoodsListData",map);
		}catch(Exception ex) {
			ex.printStackTrace();
		}finally {
			if(session!=null)
				session.close();
		}
		return list;
	}
	public static int campGoodsTotalPage(Map map){
		int total=0;
		SqlSession session=null;
		try {
			session=ssf.openSession();
			total=session.selectOne("campGoodsTotalPage",map);
		}catch(Exception ex) {
			ex.printStackTrace();
		}finally {
			if(session!=null)
				session.close();
		}
		return total;
	}
	
	public static CampGoodsVO campGoodsDetailData(Map map) {
		CampGoodsVO vo=new CampGoodsVO();
		SqlSession session=null;
		try {
			session=ssf.openSession();
			session.update("campGoodsHitIncrement",map);
			session.commit();
			vo=session.selectOne("campGoodsDetailData",map);
		}catch(Exception ex) {
			ex.printStackTrace();
		}finally {
			if(session!=null)
				session.close();
		}
		return vo;
	}
}
