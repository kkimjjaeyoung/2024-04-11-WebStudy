package com.sist.dao;
import java.util.*;
import java.sql.*;
import com.sist.dao.DbcpConnection;
import com.sist.dao.*;
import com.sist.vo.*;


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
	   
	   public List<GoodsVO> goodsTop12(){
		   List<GoodsVO> list=new ArrayList<GoodsVO>();
		   try {
			   conn=dbConn.getConnection();
			   String sql="SELECT no, goods_name, goods_poster, rownum"
						+ "FROM (SELECT no,goods_name, goods_poster"
						+ "FROM goods_all ORDER BY hit DESC"
						+ "WHERE rownum<=12";
			   ps=conn.prepareStatement(sql);
			   ResultSet rs=ps.executeQuery();
			   while(rs.next()) {
				   GoodsVO vo=new GoodsVO();
				   vo.setNo(rs.getInt(1));
				   vo.setGoods_name(rs.getString(2));
				   vo.setGoods_poster(rs.getString(3));
				   list.add(vo);
			   }
			}catch (Exception ex) {
				// TODO: handle exception
				ex.printStackTrace();
			}finally {
				dbConn.disConnection(conn, ps);
			}
			return list;
		}
}
