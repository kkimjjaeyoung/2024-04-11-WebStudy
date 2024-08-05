package com.sist.dao;

import org.apache.ibatis.session.SqlSession;

public class FoodDAO {
	
	
	public static int foodTotalPage(String type) {
		int total=0;
		SqlSession session=null;
		try {
			session=ssf.openSession();
			total=session.selectOne("foodTotalPage",)
		}catch (Exception ex) {
			ex.printStackTrace();
		}finally {
			if(session!=null) session.close();
		}
		return total;
	}
}
