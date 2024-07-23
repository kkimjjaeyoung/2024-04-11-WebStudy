package com.sist.dao;
import java.util.*;
import java.sql.*;
import com.sist.dao.*;

public class GoodsDAO {
	   private Connection conn;
	   private PreparedStatement ps;
	   private static GoodsDAO dao;
	   private DbcpConnection dbConn=new DbcpConnection();
	   
	   public static GoodsDAO newInstance()
	   {
		   if(dao==null)
			   dao=new GoodsDAO();
		   return dao;
	   }
	   
	   public List<GoodsVO> goodsListData(int page){
		   List<GoodsVO> list=new ArrayList<GoodsVO>();
		   try {
			   conn=dbConn.getConnection();
			   String sql="SELECT no, goods_name, goods_price, goods_delivery, goods_poster, hit, num"
			   		+ "FROM (SELECT no, goods_name, goods_sub,goods_price, goods_discount, goods_first_price, goods_delivery, goods_poster, hit, rownum as num"
			   		+ "FROM (SELECT no, goods_name, goods_sub,goods_price, goods_discount, goods_first_price, goods_delivery, goods_poster, hit"
			   		+ "FROM goods_all"
			   		+ "WHERE num BETWEEN ? AND ?";
			   ps=conn.prepareStatement(sql);
			   int rowSize=16;
			   int start=(rowSize*page)-(rowSize-1);
			   int end=rowSize*page;
			   
			   ps.setInt(1, start);
			   ps.setInt(2, end);
			   
			   ResultSet rs=ps.executeQuery();
			   while(rs.next()) {
				   GoodsVO vo=new GoodsVO();
				   vo.setNo(rs.getInt(1));
				   vo.setGoods_name(rs.getString(2));
				   vo.setGoods_sub(rs.getString(3));
				   vo.setGoods_price(rs.getString(4));
				   vo.setGoods_first_price(rs.getString(5));
				   vo.setGoods_discount(rs.getInt(6));
				   vo.setGoods_poster(rs.getString(7));
				   vo.setHit(rs.getInt(8));
			   }
			   rs.close();
		   }catch (Exception ex) {
			   ex.printStackTrace();
		}finally {
			dbConn.disConnection(conn, ps);
		}
		   return list;
	   }
	   public int goodsTotalPage()
	   {
		   int total=0;
		   try
		   {
			   conn=dbConn.getConnection();
			   String sql="SELECT CEIL(COUNT(*)/16	.0) FROM goods_all";
			   ps=conn.prepareStatement(sql);
			   ResultSet rs=ps.executeQuery();
			   rs.next();
			   total=rs.getInt(1);
			   rs.close();
		   }catch(Exception ex)
		   {
			   ex.printStackTrace();
		   }
		   finally
		   {
			   dbConn.disConnection(conn, ps);
		   }
		   return total;
	   }
	   public GoodsVO goodsDetailData(int no) {
		   GoodsVO vo=new GoodsVO();
		   try {
			   conn=dbConn.getConnection();
			   String sql="SELECT no, goods_name, goods_sub,goods_price, goods_discount, goods_first_price, goods_delivery, goods_poster, hit"
			   		+ "FROM goods_all"
			   		+ "WHERE no="+no;
			   ps=conn.prepareStatement(sql);
			   ResultSet rs=ps.executeQuery();
			   rs.next();
			   vo.setNo(rs.getInt(1));
			   vo.setGoods_name(rs.getString(2));
			   vo.setGoods_sub(rs.getString(3));
			   vo.setGoods_price(rs.getString(4));
			   vo.setGoods_first_price(rs.getString(5));
			   vo.setGoods_discount(rs.getInt(6));
			   vo.setGoods_poster(rs.getString(7));
			   vo.setHit(rs.getInt(8));
			   rs.close();
		   }catch (Exception ex) {
			   ex.printStackTrace();
		   }finally {
			   dbConn.disConnection(conn, ps);
		   }
		   return vo;
	   }
}
