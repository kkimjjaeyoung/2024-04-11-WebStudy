package com.sist.dao;
import java.util.*;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.sist.vo.MemberVO;

public class MemberDAO {
	private static SqlSessionFactory ssf;
	static {
		ssf=CreateSqlSessionFactory.getSsf();
	}
	
	public static MemberVO isLogin(String id, String pwd) {
		MemberVO vo=new MemberVO();
		SqlSession session=null;
		try {
			session=ssf.openSession();
			int count=session.selectOne("memberIdCountData", id);	//#{id}
			if(count==0) {
				vo.setMsg("NOID");
			}
			else {
				vo=session.selectOne("memberInfoData",id);
				if(pwd.equals(vo.getPwd())) {	//로그인 
					vo.setMsg("OK");
				}
				else {		//비밀번호가 틀린 상태
					vo.setMsg("NOPWD");
				}
			}
		}catch (Exception ex) {
			ex.printStackTrace();
		}finally {
			if(session!=null) session.close();
		}
		
		return vo;
	}
}
