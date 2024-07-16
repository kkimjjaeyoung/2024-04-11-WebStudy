package com.sist.diary;

import java.sql.*;

public class DiaryService {
	private Connection conn;
	private PreparedStatement ps;
	private static DiaryService 
	
	private static DiaryService() {
	//2. 일정관리(아이디별)
	//일정등록
	public void diaryInsert() {
		try {
			getConnection();
			String sql="INSERT INTO diary VALUES(diary_no_seq.nextval,?,?,?,?,?,?,SYSDATE)";
			ps=conn.prepareStatement(sql);
			ps.setString(1, getID());
			
			ps.executeUpdate();
		}catch(Exception ex) {
			ex.printStackTrace();
		}finally {
			disCnnection();
		}
	}
	//일정출력
	//달력에 일정 표시
	public boolean diaryCheck(String id, int year, int month, int day) {
		boolean bCheck=false;
		try {
			getConnection();
			String sql="SELECT COUNT(*) FROM diary"
					+ "WHERE id=? AND year=? AND month=? AND day=?";
			ps=conn.prepareStatement(sql);
			ps.setString(1, id);
			ps.setInt(2, year);
			ps.setInt(3, month);
			ps.setInt(4, day);
			
			ResultSet rs=ps.executeQuery();
			rs.next();
			
		}catch (Exception ex){
			ex.printStackTrace();
		}finally {
			disConnection();
		}
		return bCheck;
	}
	//일정 수정
	//일정 취소
	//3. 장바구니
	//상품출력
	//장바구니 등록
	//장바구니 상품 취소
	//구매
}
