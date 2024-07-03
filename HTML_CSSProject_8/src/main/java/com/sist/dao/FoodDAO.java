package com.sist.dao;
import java.util.*;
import java.sql.*;
import com.sist.database.*;

public class FoodDAO {
	private Connection conn;	//연결 담당
	private PreparedStatement ps;	//SQL문장 송수신
	private static FoodDAO dao;	//싱글턴
	private DataBaseConnection dbConn=new DataBaseConnection();
	
	//라이브러리 형식 : jar
	//싱글턴
	public static FoodDAO newInstance() {
		if(dao==null )	dao=new FoodDAO();
		return dao;
	}
	
	//기능
	public List<FoodVO> foodListData(int page){
		List<FoodVO> list=new ArrayList<FoodVO>();
		try {
			conn=dbConn.getcoConnection();
			String sql="SELECT fno,poster,name,num FROM (SELECT fno, poster, name, rownum as num FROM (SELECT (SELECT /*+ INDEX_ASC(food_house fh_fno_pk)*/ fno, poster, name FROM food_house)) WHERE num BETWEEN ? AND ?";			
			ps=conn.prepareStatement(sql);
			int rowSize=12;
			int start=(rowSize*page)-(rowSize-1);
			int end=rowSize*page;
			ps.setInt(1, start);
			ps.setInt(2, end);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				FoodVO vo=new FoodVO();
				vo.setFno(rs.getInt(1));
				vo.setPoster(rs.getString(2));
				vo.setName(rs.getString(3));
				
				list.add(vo);
			}
		}catch (Exception ex) {
			ex.printStackTrace();
		}finally {
			dbConn.diConnection(conn, ps);
		}
		return list;
	}
	public int foodTotalPage() {
		int total=0;
		try {
			conn=dbConn.getcoConnection();
			String sql="SELECT CEIL(COUNT(*)/12.0) FROM food_house)";
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
			dbConn.diConnection(conn, ps);
		}
		return total;
	}
	//상세보기
	/*
	 * UPDATE : 증가효과
	 * DELETE : 삭제, 취소효과
	 * INSERT : 추가효과
	 */
	public FoodVO foodDetailData(int fno) {
		FoodVO vo=new FoodVO();
		try {
			conn=dbConn.getcoConnection();
			String sql="UPDATE food_house SET hit=hit+1"
					+ "WHERE fno=?";
			ps=conn.prepareStatement(sql);
			ps.setInt(1, fno);
			ps.executeUpdate();
			
			sql="SELECT fno, name, type, phone, address, theme, poster, content, score"
					+ "FROM food_house"
					+ "WHERE fno=?";
			ps=conn.prepareStatement(sql);
			//?에 값채우기
			ps.setInt(1, fno);
			//요청값 받기
			ResultSet rs=ps.executeQuery();
			//커서를 데이터 출력위치로 이동
			rs.next();
			vo.setFno(rs.getInt(1));
			vo.setName(rs.getString(2));
			vo.setType(rs.getString(3));
			vo.setPhone(rs.getString(4));
			vo.setAddress(rs.getString(5));
			vo.setTheme(rs.getString(6));
			vo.setPoster(rs.getString(7).replace("https", "http"));
			vo.setContent(rs.getString(8));
			vo.setScore(rs.getDouble(9));
			//메모리 닫기
			rs.close();
		}catch (Exception ex) {
			System.out.println( "fooddetail 오류" );
			ex.printStackTrace();
		}finally {
			dbConn.diConnection(conn, ps);
		}
		return vo;
	}

}
