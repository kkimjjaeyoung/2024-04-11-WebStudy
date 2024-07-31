package com.sist.dao;
import java.util.*;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import java.io.*;

public class BoardDAO {
	//XML을 읽어서 저장{Map("id", SQL)	- 파싱
	private static SqlSessionFactory ssf;
	static {
		try {
			Reader reader=Resources.getResourceAsReader("Config.xml");
			ssf=new SqlSessionFactoryBuilder().build(reader);
		}catch (Exception ex) {
			ex.printStackTrace();
		}
	}
	/*
	 	<select id="boardListData resultType="BoardVO parameterType="hashmap">
	 	SELECT no, subject, name, TO_CHAR(regdate, 'YYYY-MM-DD') as dbday, hit, num
 		FROM (SELECT no, subject, name, regdate, hit, rownum as num)
 		FROM (SELECT /*+INDEX_DESC(board board_no_pk)no, subject, name, regdate, hit
 		FROM board))
 		WHERE num BETWEEN #{start} AND #{end}
 		
 		resultType="BoardVO 			- 결과값
 		parameterType="hashmap"			-
	 */
	public static List<BoardVO> boardListData (Map map){
		List<BoardVO> list=new ArrayList<BoardVO>();
			SqlSession session=null;
			try {
				session=ssf.openSession();
				list=session.selectList("baordListData", map);
			}catch (Exception ex) {
				ex.printStackTrace();
			}finally {
				if(session!=null) session.close();
			}
			return list;
	}
	public int{
		
	}
	
	public static void boardInsert (BoardVO vo) {
		SqlSession session=null;
		try {
			session=ssf.openSession(true);
			session.insert("boardInsert", vo);
			//session.commit(); 			//opensession에 true를 주면 commit생략 가능
		}catch (Exception ex) {
			ex.printStackTrace();
		}finally {
			if(session!=null) session.close();
		}
	}
	//상세보기
	/*
		<upodate id="hitIncrement" parameterType="int">
	 	UPDATE board SET
	 	hit=hit+1
	 	WHERE no=#{no}
	 	</upodate>
	 	<select id="boardDetailData", resultType="BoardVO", parameterType="int">
	 	SELECT no,name,subject, content, TO_CHAR(regdate, 'YYYY-MM-DD') as dbday, hit
	 	FROM board
	 	WHERE no=#{no}
	 * 
	 */
	public static BoardVO boardDetailData(int no) {
		SqlSession session=null;
		BoardVO vo=new BoardVO();
		try {
			session=ssf.openSession();
			session.update("hitIncrement", no);
			session.commit();
			
			vo=session.selectOne("baordDetailData", no);
			
		}catch (Exception ex) {
			ex.printStackTrace();
		}finally {
			//connection 반환으로 재사용 가능하게 만듬
			if(session!=null) session.close();
		}
		return vo;
	}
	
	public static boolean boardDelete(int no, String pwd) {
		boolean bCheck=false;
		SqlSession session=null;
		try {
			session=ssf.openSession();
			String db_pwd=session.selectOne("boardGetPassword", no);
			if(db_pwd.equals(pwd)) {
				bCheck=true;
				session.delete("baordDelete",no);
				session.commit();
			}
			else {
				
			}
		}catch (Exception ex) {
			ex.printStackTrace();
		}finally {
			if(session!=null) session.close();
		}
	}
	public static BoardVO boardUpdateData(int no) {
		SqlSession session=null;
		BoardVO vo=new BoardVO();
		try {
			session=ssf.openSession();
			session.update("hitIncrement", no);
			session.commit();
						
		}catch (Exception ex) {
			if(session!=null) session.close();
		}
	}
}
