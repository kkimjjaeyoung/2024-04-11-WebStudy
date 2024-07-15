package com.sist.dao;
import java.util.*;
import java.sql.*;
import javax.sql.*;
import javax.naming.*;

public class SeoulDAO {
	private Connection conn;
	private PreparedStatement ps;
	private static SeoulDAO dao;
	
	public static SeoulDAO newInstance() {
		if(dao==null) {
			dao=new SeoulDAO();
		}
		return dao;
	}
	//미리 톰캣에 의해 생성된 conn주소를 읽어 사용
	//pool 갯수 : maxIdle
	public void getConnection() {
		try {
			Context init=new InitialContext();	//탐색기 열기
			Context c=(Context)init.lookup("java://comp//env");
			DataSource ds=(DataSource)c.lookup("jdbc/oracle");
			conn=ds.getConnection();
			//server.xml은 관리자만 볼수있다(보안 강력)
		}catch (Exception ex) {
			ex.printStackTrace();
		}
	}
	
	public void disConnection() {
		try {
			if(ps!=null) ps.close();
			if(conn!=null) conn.close();
		}catch (Exception ex) {
			// TODO: handle exception
		}
	}
	public List<LocationVO> seoulLocationListData(int page){
		List<LocationVO> list=new ArrayList<LocationVO>();
		try {
			getConnection();
			String sql="SELECT no, title,poster,num"
					+ "FROM (SELECT no, title, poster, rounum as num"
					+ "FROM (SELECT no, title, poster"
					+ "FROM seoul_location ORDER BY no ASC))"
					+ "WHERE num BETWEEN ? AND ?";
			ps=conn.prepareStatement(sql);
			int rowSize=10;
			int start=(rowSize*page)-(rowSize-1);	//rownum은 1번
			int end=rowSize*page;
			ps.setInt(1, start);
			ps.setInt(2, end);
			//실행
			ResultSet rs=ps.executeQuery();
			LocationVO vo=new LocationVO();
			vo.setNo(rs.getInt(1));
			vo.setTitle(rs.getNString(2));
			vo.setPoster(rs.getString(3));
			
			list.add(vo);
			
		}catch(Exception ex) {
			ex.printStackTrace();
		}finally {
			disConnection();
		}
		return list;
	}
	
	public int seoulLocationTotalPage() {
		int total=0;
		try {
			getConnection();
			String sql="SELECT CEIL(COUNT(*)/12.0) FORM seoul_location";
			ps=conn.prepareStatement(sql);
			ResultSet rs=ps.executeQuery();
			rs.next();
			total=rs.getInt(1);
			rs.close();
		}catch(Exception ex){
			ex.printStackTrace();
		}finally {
			disConnection();
		}
		return total;
	}
}
