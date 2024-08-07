package com.sist.dao;
import java.util.*;
import java.sql.*;

public class campDAO {
	private Connection conn;
	private PreparedStatement ps;
	private static campDAO dao;
	private final String URL="jdbc:oracle:thin:@localhost:1514:XE";
			
		//드라이버 등록
	public campDAO() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		}catch (Exception ex) {
			// TODO: handle exception
		}
	}
	//연결
	public void getConnection() {
		 try{
			   conn=DriverManager.getConnection(URL,"hr","happy");
		 }catch(Exception ex) {}
	}
	//해제
	public void disConnection() {
		try {
			if(ps!=null) {
				ps.close();
			}
			if(conn!=null) {
				conn.close();
			}
		}catch (Exception ex) {
			// TODO: handle exception
		}
	}
	//싱글턴
	public static campDAO newInstance() {
		if(dao==null) {
			dao=new campDAO();
		}
		return dao;
	}
	
	public void foodInsert(campVO vo) {
		try {
			getConnection();
		String sql="INSERT INTO food_house(fno,name,type,phone,address,score,theme,poster,content) VALUES(fh_fno_seq.nextval,?,?,?,?,?,?,?,?)";
		ps=conn.prepareStatement(sql);
		ps.setString(1, vo.getName());
		ps.setString(2, vo.getType());
		ps.setString(3, vo.getPhone());
		ps.setString(4, vo.getAddress());
		ps.setDouble(5, vo.getScore());
		ps.setString(6, vo.getTheme());
		ps.setString(7, "https://www.menupan.com"+vo.getPoster());
		ps.setString(8, vo.getContent());
		}catch (Exception ex) {
			// TODO: handle exception
			ex.printStackTrace();
		}finally {
			disConnection();	
		}
	}
}
