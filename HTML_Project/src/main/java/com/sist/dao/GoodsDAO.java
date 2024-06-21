package com.sist.dao;
import java.util.*;
import java.sql.*;

public class GoodsDAO {
	private Connection conn;
	private PreparedStatement ps;
	private GoodsDAO dao;
	private final String URL="jdbc:oracle:thin:@localhost:1521:XE";
	
	public GoodsDAO() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		}catch(Exception ex) {}
	}
	
	public void getConection() {
		try {
			conn=DriverManager.getConnection(URL, "hr", "happy");
		}catch(Exception ex){}
	}
	
	public void dissConnection() {
		try {
			if(ps!=null) ps.close();
			if(conn!=null) conn.close();
		}catch(Exception ex) {}
	}
	
	public static GoodsDAO newinstan() {
		if(dao==null) {
			dao=new GoodsDAO();
		}
		return dao;
		}
	
	public List<GoodsVO> goodsListData(int page){
		List<GoodsVO> list=new ArrayList <GoodsVO>();
		try {
			getConection();
			String sql="SELECT goods_name, goods_poster, num"
					+ "FROM (SELECT goods_name, goods_poster, rownum as num"
					+ "FROM (SELECT goods_name, goods_poster"
					+ "FROM goods_all ORDER BT no ASC"
					+ "WHERE num BETWEEN ? AND ?";
			ps=conn.prepareStatement(sql);
			int rowSize=12;
			int start=(rowSize*page)-(rowSize-1);
			int end=rowSize*page;
			
			ps.setInt(1, start);
			ps.setInt(2, end);
			
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				GoodsVO vo=new GoodsVO();
				vo
			}
		}catch(Exception ex) {
			ex.printStackTrace();
		}finally {
			dissConnection();
		}
		
	//총페이지
		public int goodsTotalPage() {
			int total=0;
			try {
				getConection();
				String sql="SELECT SEIL(COUNT(*)/12.0 FROM goods_all";
				ps=conn.prepareStatement(sql);
				ResultSet rs=ps.executeQuery();
				rs.next();
				total
			}catch(Exception ex) {
				ex.printStackTrace();
			}finally {
				dissConnection();

			}
		}
	}
}
