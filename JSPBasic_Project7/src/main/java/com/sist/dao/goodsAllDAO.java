package com.sist.dao;

import java.sql.*;
import java.util.*;
import com.sist.database.*;

public class goodsAllDAO {
   private Connection conn;
   private PreparedStatement ps;
   private static goodsAllDAO dao;
   private DataBaseConnection dbConn=new DataBaseConnection();
   
   //싱글턴
   public static goodsAllDAO newInstance() {
	   if(dao==null) {
		   dao=new goodsAllDAO();
	   }
	   return dao;
   }
   
   //목록출력
   public List<goodsAllVO> goodsListData(int page){
	   List<goodsAllVO> list=new ArrayList<goodsAllVO>();
	   try {
		   conn=dbConn.getConnection();
		   String sql="SELECT no, goods_poster, goods_name, num"
		   		+ "FROM (SELECT no, goods_poster, goods_name, rownum as num"
		   		+ "FROM (SELECT no, goods_poster, goods_name"
		   		+ "FROM goods_all))"
		   		+ "WHERE num BETWEEN ? AND ?";
		   ps=conn.prepareStatement(sql);
		   int rowSize=12;
		   int start=(rowSize*page)-(rowSize-1);
		   int end=rowSize*page;
				   
	   		ps.setInt(1, start);
	   		ps.setInt(2, end);
	   		
	   		ResultSet rs=ps.executeQuery();
	   		while(rs.next()) {
	   			goodsAllVO vo=new goodsAllVO();
	   			vo.setNo(rs.getInt(1));
	   			vo.setGoods_poster(rs.getString(2).replace("https", "http"));
	   			vo.setGoods_name(rs.getString(3));
	   			list.add(vo);
	   		}
	   }catch (Exception ex) {
		   ex.printStackTrace();
	   }finally {
		dbConn.disConnection(conn, ps);
	   }
	   return list;
   }
   
   public int goodsTotalPage() {
	   int total=0;
	   try {
		   conn=dbConn.getConnection();
		   String sql="SELECT CEIL(COUNT(*)*12.0)";
		   
	   }catch (Exception ex) {
		   ex.printStackTrace();
	   }finally {
		   dbConn.disConnection(conn, ps);
	   }
	   return total;
	   
   }
}
