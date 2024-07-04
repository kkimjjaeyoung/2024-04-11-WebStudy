package com.sist.dao;

import java.util.*;
import java.sql.*;
import com.sist.database.*;

public class goodsAllDAO {
	   private Connection conn; 
	   private PreparedStatement ps;
	   private DataBaseConnection dbConn=new DataBaseConnection();
	   private String[] mode={"","전체", "1+1", "만개특가", "美친특가"};
	   private static goodsAllDAO dao;			//싱글턴
	   public static goodsAllDAO newInstance()
	   {
		   if(dao==null) {
			   dao=new goodsAllDAO();
		   }
		   return dao;
	   }
	   /*
	    * if 
	    * sqltype1 = SELECT * FROM goods_all WHERE goods_name LIKE '%'||'1+1'||'%';
	    * sqltype1==goods_name
	    * 
	    * else if
	    * sqltype2 = SELECT * FROM goods_all WHERE goods_name LIKE '%'||'만개특가'||'%';
	    * sqltype2==goods_name
	    * 
	    * else if
	    * sqltype3 = SELECT * FROM goods_all WHERE goods_name LIKE '%'||'美친특가'||'%';
	    * sqltype3==goods_name
	    * 
	    * else
	    * sql=
	    * ==goods_name
	    */

	   public List<goodsAllVO> goodsFindData(String name,int page)
	   {
		   List<goodsAllVO> list=new ArrayList<goodsAllVO>();
		   try
		   {
			   conn=dbConn.getConnection();
			   String sql="SELECT no,goods_name,goods_poster,num"
					     +"FROM (SELECT no,goods_name,goods_poster,rownum as num"
					     +"FROM (SELECT no,goods_name,goods_poster"
					     +"FROM goods_all WHERE goods_name LIKE '%'||?||'%'))"
					     +"WHERE num BETWEEN ? AND ?";
			   ps=conn.prepareStatement(sql);
			   int rowSize=12;
			   int start=(rowSize*page)-(rowSize-1);
			   int end=rowSize*page;
			   // IN OUT 
			   ps.setString(1, name);
			   ps.setInt(2, start);
			   ps.setInt(3, end);
			   // 결과값 받기 
			   ResultSet rs=ps.executeQuery();
			   while(rs.next())
			   {
				   goodsAllVO vo=new goodsAllVO();
				   vo.setNo(rs.getInt(1));
				   vo.setGoods_name(rs.getString(2));
				   vo.setGoods_poster(rs.getString(3).replace("https", "http"));
				   list.add(vo);
			   }
			   rs.close();
			   
		   }catch(Exception ex)
		   {
			   System.out.println("===== goodsFindData() 오류 발생 =====");
			   ex.printStackTrace();
		   }
		   finally
		   {
			   dbConn.disConnection(conn, ps);
		   }
		   return list;
	   }
	   public int goodsFindTotalPage(String name)
	   {
		   int total=0;
		   try
		   {
			   conn=dbConn.getConnection();
			   String sql="SELECT CEIL(COUNT(*)/12.0)"
					     +"FROM goods_all"
					     +"WHERE goods_name LIKE '%'||?||'%'";						
			   ps=conn.prepareStatement(sql);
			   ps.setString(1, name);
			   ResultSet rs=ps.executeQuery();
			   rs.next();
			   total=rs.getInt(1);
			   rs.close();
		   }catch(Exception ex)
		   {
			   System.out.println("===== goodsFindTotalPage() 오류 발생 =====");
			   ex.printStackTrace();
		   }
		   finally
		   {
			   dbConn.disConnection(conn, ps);
		   }
		   return total;
	   }
	   

	   public List<goodsAllVO> goodsListData(int type, int page){
		   List<goodsAllVO> list=new ArrayList<goodsAllVO>();
		   try {
			   conn=dbConn.getConnection();
			   String sql="SELECT no, goods_name, goods_poster, num"
			   		+ "FROM (SELECT no, goods_name, goods_poster,rownum as num"
			   		+ "FROM (SELECT no, goods_name, goods_poster"
			   		+ "FROM goods_all WHERE type LIKE '%'||?||'%'))"
			   		+ "WHERE num BETWEEN ? AND ?";
			   /*
			    * String sql="SELECT fno, name, poster, num"
			   		+ "FROM (SELECT fno,name,poster,rownum as num"
			   		+ "FROM (SELECT fno, name, poster"
			   		+ "FROM food_house WHERE type REGEXP_LIKE (type, '?') ))"
			   		+ "WHERE num BETWEEN ? AND ?";
			    * 
			   */		
			   ps=conn.prepareStatement(sql);
			   int rowSize=12;
			   int start=(rowSize*page)-(rowSize-1);
			   int end=rowSize*page;
			   
			   //?에 값채우기
			   ps.setString(1, mode[type]);
			   ps.setInt(2, start);
			   ps.setInt(3, end);
			   
			   ResultSet rs=ps.executeQuery();
			   while(rs.next())  {
				   goodsAllVO vo=new goodsAllVO();
				   vo.setNo(rs.getInt(1));
				   vo.setGoods_name(rs.getString(2));
				   vo.setGoods_poster(rs.getString(3).replace("https", "http"));
				   list.add(vo);
			   }
			   rs.close();
			   
		   }catch (Exception ex) {
			   System.out.println("===== goodsListData() 오류 발생 =====");
			   ex.printStackTrace();
		}finally {
		dbConn.disConnection(conn, ps);	
		}
		   return list;
	   }
	   
	   public int goodsListTotalPage(int type)
	   {
		   int total=0;
		   try
		   {
			   conn=dbConn.getConnection();
			   String sql="SELECT CEIL(COUNT(*)/12.0) "
					     +"FROM goods_all "
					     +"WHERE type LIKE '%'||?||'%'";		
			   ps=conn.prepareStatement(sql);
			   ps.setString(1, mode[type]);
			   ResultSet rs=ps.executeQuery();
			   rs.next();
			   total=rs.getInt(1);
			   rs.close();
		   }catch(Exception ex)
		   {
			   System.out.println("===== goodsListTotalPage() 오류 발생 =====");
			   ex.printStackTrace();
		   }
		   finally
		   {
			   dbConn.disConnection(conn, ps);
		   }
		   return total;
	   }
	}
