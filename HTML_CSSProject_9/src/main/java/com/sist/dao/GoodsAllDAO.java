package com.sist.dao;

import java.sql.*;
import java.util.*;

import com.sist.database.*;

public class GoodsAllDAO {
	private Connection conn;	//연결 담당
	private PreparedStatement ps;	//SQL문장 송수신
	private static GoodsAllDAO dao;	//싱글턴
	private DataBaseConnection dbConn=new DataBaseConnection();
	
	//싱글턴
	public static GoodsAllDAO newInstance() {
		if(dao==null )	dao=new GoodsAllDAO();
		return dao;
	}

	//기능
	public List<GoodsAllVO> goodsListData(int page){
		List<GoodsAllVO> list=new ArrayList<GoodsAllVO>();
		try {
			conn=dbConn.getConnection();
			String sql="SELECT no, goods_poster, goods_name, num FROM (SELECT no, goods_poster, goods_name, rownum as num FROM (SELECT /*+ INDEX_ASC(goods_all fh_fno_pk)*/ no, goods_poster, goods_name FROM goods_all)) WHERE num BETWEEN ? AND ?";			
			ps=conn.prepareStatement(sql);
			int rowSize=12;
			int start=(rowSize*page)-(rowSize-1);
			int end=rowSize*page;
			ps.setInt(1, start);
			ps.setInt(2, end);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				GoodsAllVO vo=new GoodsAllVO();
				vo.setNo(rs.getInt(1));
				vo.setGoods_poster(rs.getString(2));
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
			String sql="SELECT CEIL(COUNT(*)/12.0) FROM goods_all)";
			//전송
			ps=conn.prepareStatement(sql);
			//결과값
			ResultSet rs=ps.executeQuery();
			rs.next();
			total=rs.getInt(1);
			rs.close();
		}catch (Exception ex) {
			ex.printStackTrace();
		}finally {
			dbConn.disConnection(conn, ps);
		}
		return total;
	}
	
	/*
	 * UPDATE : 증가효과
	 * DELETE : 삭제, 취소효과
	 * INSERT : 추가효과
	 */
	
	//상세보기
	public GoodsAllVO goodsDetailData(int no) {
		GoodsAllVO vo=new GoodsAllVO();
		try {
			conn=dbConn.getConnection();
			String sql="UPDATE goods_all SET hit=hit+1"
					+ "WHERE no=?";
			ps=conn.prepareStatement(sql);
			ps.setInt(1, no);
			ps.executeUpdate();
			
			sql="SELECT no, goods_discount, hit, goods_name, goods_sub, goods_price, goods_poster, goods_first_price, goods_delivery "
					+ "FROM goods_all"
					+ "WHERE fno=?";
			ps=conn.prepareStatement(sql);
			//?에 값채우기
			ps.setInt(1,no);
			//요청값 받기
			ResultSet rs=ps.executeQuery();
			//커서를 데이터 출력위치로 이동
			rs.next();
			vo.setNo(rs.getInt(1));
			vo.setGoods_name(rs.getString(2));
			vo.setGoods_price(rs.getString(3));
			vo.setGoods_first_price(rs.getString(4));
			vo.setGoods_discount(rs.getInt(5));
			vo.setGoods_delivery(rs.getString(6));
			vo.setGoods_poster(rs.getString(7).replace("https", "http"));
			vo.setGoods_sub(rs.getString(8));
			vo.setHit(rs.getInt(9));
			//메모리 닫기
			rs.close();
		}catch (Exception ex) {
			System.out.println( "goodsdetail 오류" );
			ex.printStackTrace();
		}finally {
			dbConn.disConnection(conn, ps);
		}
		return vo;
	}

}

