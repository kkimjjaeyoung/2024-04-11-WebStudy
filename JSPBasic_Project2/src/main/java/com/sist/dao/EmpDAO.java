package com.sist.dao;
import java.util.*;
import java.sql.*;
import com.sist.database.*;

public class EmpDAO {
	private PreparedStatement ps;
	private static EmpDAO dao;
	private Connection conn;
	private DataBaseConnection dbConn=new DataBaseConnection();
	
	//싱글턴
	public static EmpDAO newInstance() {
		if(dao==null) {
			dao=new EmpDAO();
		}
		return dao;
	}
	
	//기능(목록)
	public List<EmpVO> empListData(){
		List<EmpVO> list=new ArrayList<EmpVO>();
		try {
			conn=dbConn.getConnection();
			String sql="SELECT empno, ename, job, hiredate, comm FROM emp ORDER BY empno ASC";
			
			ps=conn.prepareStatement(sql);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				EmpVO vo=new EmpVO();
				vo.setEmpno(rs.getInt(1));
				vo.setEname(rs.getString(2));
				vo.setJob(rs.getString(3));
				vo.setHiredate(rs.getDate(4));
				vo.setComm(rs.getInt(5));
			}
		}catch (Exception ex) {
			ex.printStackTrace();
		}finally {
			dbConn.disConnection(conn, ps);
		}
		return list;
	}
}
