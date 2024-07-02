package com.sist.dao;
import java.util.*;
import java.sql.*;
import com.sist.database.*;

public class FoodDAO {
	private Connection conn;
	private PreparedStatement ps;
	private static FoodDAO dao;
	private DataBaseConnection dbConn=new DataBaseConnection();
	
	public static FoodDAO newInstance() {
		if(dao==null) dao=new FoodDAO();
		
		return dao;
	}
	//기능
	public List<FoodVO> foodListData(){
		List<FoodVO> list=new ArrayList<FoodVO>();
		try {
			conn=dbConn.getcoConnection();
			String sql="SELECT fno, name, poster, type, rownum FROM (SELECT fno, name, poster, type From food_house ORDER BY fno ASC) WHERE rownum<=50";
			ps=conn.prepareStatement(sql);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				FoodVO vo=new FoodVO();
				vo.set(rs.getInt(1)));
				
				rs.close()
			}
			
		}catch (Exception ex) {
			ex.printStackTrace();
		}finally {
			dbConn.diConnection(conn, ps);
		}
		return list;
	}
}
