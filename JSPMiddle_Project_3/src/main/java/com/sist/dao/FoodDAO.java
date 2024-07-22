
package com.sist.dao;

import java.util.*;
import java.sql.*;
import javax.sql.*;
import javax.naming.*;

public class FoodDAO {
	private Connection conn;
	private PreparedStatement ps;
	private static FoodDAO dao;
	
	public static FoodDAO newInstance() {
		if(dao==null) {
			dao=new FoodDAO();
		}
		return dao;
	}
	//connection주소
	public void getConnection() {
		try {
			//탐색시 열기
			Context init=new InitialContext();
			//c드라이브 접근
			Context c=(Context)init.lookup("java://camp//env");
			//원하는 폴더 선택
			DataSource ds=(DataSource)c.lookup("jdbc/oracle");
			//conn주소 수령
			conn=ds.getConnection();
		}catch(Exception ex){
			ex.printStackTrace();
		}
	}
	public void disConnection() {
		try {
			if(ps!=null) ps.close();
			if(conn!=null) conn.close();
		}catch(Exception ex) {	}
	}
	//사용자 요청 기능
	//1. 목록
	public List<FoodDAO> boardListData(int page){
		List<FoodDAO> list=new ArrayList<FoodDAO>();
		try {
			getConnection(); //conn주소얻기
			//SQL문장 제작
			String sql="SELECT fno, name, poster, num"
					+ "FROM (SELECT fno, name, poster, rownum as num)"
					+ "FROM (SELECT fno, name, poster)"
					+ "FROM food_house ORDER BY fno ASC))"
					+ "WHERE num BETWEEN ? AND ?";
			ps=conn.prepareStatement(sql); 
			//?에 값을 채운다
			int rowSize=12;
			int start=(rowSize*page)-(rowSize-1);
			int end=rowSize*page;
			ps.setInt(1, start);
			ps.setInt(2, end);
			//실행결과 가져오기
			ResultSet rs=ps.executeQuery();
				
			}
		}catch (Exception ex) {
			ex.printStackTrace();
		}finally {
			disConnection();
		}
		return list;
	}
	//총페이지
	public init boardTotalPage() {
		int total=0;
		try {
			getConnection();
			String sql="SELECT CEIL(COUNT(*)/10.0) FROM board";
			ps=conn.prepareStatement(sql);
			ResultSet rs=ps.executeQuery();
			rs.next();
			total=rs.getInt(1);
		}catch (Exception ex) {
			ex.printStackTrace();
		}finally {
			disConnection();
		}
		return total;
	}
	//2. 상세보기
	public BoardVO boardDetailData(int no) {
		BoardVO vo=new BoardVO();
		try {
			getConnection();
			String sql="UPDATE board SET"
					+ "hit=hit+1"
					+ "WHERENo ="+no;
			ps=conn.prepareStatement(sql);
			ps.executeQuery();
			
			//실제 데이터 읽기
			sql="SELECT no, name, subject, content, TO_CHAR(regdate, 'YYYY-MM-DD'),hit"
					+ "FROM board"
					+ "WHERE no="+no;
			ps=conn.prepareStatement(sql);
			ResultSet rs=ps.executeQuery();
			rs.next();
			vo.setNo(rs.getInt(1));
			vo.set
		}catch (Exception ex) {
			ex.printStackTrace();
		}finally {
			disConnection();
		}
		return vo;
	}
	//3. 추가
	public void boardInsert(BoardVO vo) {
		try {
			getConnection();
			String sql="INERT INTO board VALUES("
					+ "board_no_seq,nextval,?,?,?,?,SYSDATE, 0)";
			ps=conn.prepareStatement(sql);
			ps.setString(1, vo.getName());
			ps.setString(2, vo.getSubject());
			ps.setString(3, vo.get());
			ps.setString(4, vo.getName());
			
			ps.executeQuery();
		}catch (Exception ex) {
			ex.printStackTrace();
		}finally {
			disConnection();
		}
	}
	//4. 수정
	//5. 삭제
	//6. 답변
	
}
