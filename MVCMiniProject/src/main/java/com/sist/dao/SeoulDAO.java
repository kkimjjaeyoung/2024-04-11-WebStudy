package com.sist.dao;
import java.util.*;
import java.sql.*;
import com.sist.dao.DbcpConnection;
import com.sist.vo.LocationVO;
public class SeoulDAO {
	private Connection conn;
	private PreparedStatement ps;
	private static SeoulDAO dao;
	private DbcpConnection dbconn=new DbcpConnection();
	
	public static SeoulDAO newInstance() {
		if(dao==null) {
			dao=new SeoulDAO();
		}
		return dao;
	}
	
	public List<LocationVO> seoulTop12(){
		List<LocationVO> list=new ArrayList<LocationVO>();
		try {
			conn=dbconn.getConnection();
			String sql="SELECT no, title, poster, rownum"
					+ "FROM (SELECT no,title, poster"
					+ "FROM Seoul_location ORDER BY hit DESC"
					+ "WHERE rownum<=12";
			ps=conn.prepareStatement(sql);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				LocationVO vo=new LocationVO();
				vo.setNo(rs.getInt(1));
				vo.setTitle(rs.getString(2));
				vo.setPoster(rs.getString(3));
				list.add(vo);
			}
		}catch (Exception ex) {
			// TODO: handle exception
			ex.printStackTrace();
		}finally {
			dbconn.disConnection(conn, ps);
		}
		return list;
	}
}
