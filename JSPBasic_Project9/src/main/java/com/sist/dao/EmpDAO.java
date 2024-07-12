package com.sist.dao;
import java.util.*;
import java.sql.*;
import javax.sql.*;
import javax.naming.*;	//이름으로 Connection 주소 찾기
/*
 * Pool : 연결된 COnnection을 저장하는 공간 
 * 	-DBCP(DataBase Connection Pool)
 */

public class EmpDAO {
	private PreparedStatement ps;
	private static EmpDAO dao;
	private Connection conn;
	
	//싱글턴
	public static EmpDAO newInstance() {
		if(dao==null) {
			dao=new EmpDAO();
		}
		return dao;
	}
	/*
	 * 1. DBCP : 미리 일정갯수의 Connection을 만들어 pool에 저장(저장갯수 : madIdle)
	 * 	인원초과하여 최대 Connection = maxActive
	 * 	사용자 요청에 따라 Connection주소를 제공해 사용가능하게 만든다
	 * 	사용이 종료되면 pool안으로 Connection을 반환
	 * 		1). 데이터베이스 연결에 소모되는 시간 단축 가능
	 * 		2). Connection을 일정 갯수로 관리 가능
	 * 		3). 동시접속자가 많아도 쉽게 다운되지 않음
	 * 
	 * 		동작 : 톰캣이 Connection을 Pool에 저장
	 * 			1) pool안에서 connection 객체를 가져온다
	 * 			2) connection객체를 이용해 DB작업을 실행한다
	 * 			3) 수행이 종료되면 다시 재사용을 위해 반환
	 * 	pool
	 * 		주소 : java://conf/env	->	jdbc/oracle new Connection() false		//비활성화시 false, 활성화시 true
	 * 
	 */
	/*
	 * JDBC 
	 * 	DBCP 
	 * 		1. WEB에서만 사용 가능
	 * 	ORM
	 * 	Dataset
	 */
	
	public void getConnection() {
		//미리 오라클 연결해 저장된 Connection주소를 얻어온다
		try {
			//1. pool에 연결
			//이름형식으로 탐색기 제작
			Context init=new InitialContext();					//탐색기 열기
			Context c=(Context)init.lookup("java://comp/env");	//c드라이브에 접근
			DataSource ds=(DataSource)c.lookup("jdbc/oracle");	//원하는 폴더 선택
			conn=ds.getConnection();							//파일 읽기(주소얻기)
			
		}catch (Exception ex) {
			ex.printStackTrace();
		}
	}
	public void disConnection() {
		//사용후 반환
		try {
			if(ps!=null) {
				ps.close();
			}
			if(conn!=null) {
				conn.close();
			}
		}catch (Exception ex) {}
	}
	
	//기능(목록)
	public List<EmpVO> empListData(){
		List<EmpVO> list=new ArrayList<EmpVO>();
		try {
			getConnection();
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
			disConnection();
		}
		return list;
	}
	
	public EmpVO empDetailData(int empno) {
		EmpVO vo=new EmpVO();
		try {
			getConnection();
			String sql="SELECT empno,ename, job, hiredate,sal,comm, dname, loc, grade"
					+ "FROM emp JOIN dept"
					+ "ON emp.deptno=dept.detpno"
					+ "AND empno="+empno
					+ "JOIN salgrage"
					+ "ON sal BETWEEN losal AND hisal";
			ps=conn.prepareStatement(sql);
			ResultSet rs=ps.executeQuery();
			rs.next();
			vo.setEmpno(rs.getInt(1));
			vo.setEname(rs.getString(2));
			vo.setJob(rs.getString(3));
			vo.setHiredate(rs.getDate(4));
			vo.setSal(rs.getInt(5));
			vo.setComm(rs.getInt(6));
			vo.getDvo().setDname(rs.getString(7));
			vo.getDvo().setLoc(rs.getString(8));
			vo.getSvo().setGrade(rs.getInt(9));
			rs.close();
		}catch (Exception ex) {
			ex.printStackTrace();
		}finally {
			disConnection();
		}
		return vo;
	}
	
	public List<EmpVO> empSubQueryData(){
		List<EmpVO> list=new ArrayList<EmpVO>();
		try {
			getConnection(); 	//커넥션 주소 얻어오기
			String sql="SELECT empno, ename, job, hiredate,"
					+ "(SELECT dname FROM dept WHERE deptno=emp.deptno),"
					+ "(SELECT loc FROM dept WHERE deptno=emp.deptno)"
					+ "FROM emp";
			
			ps=conn.prepareStatement(sql);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				EmpVO vo=new EmpVO();
				vo.setEmpno(rs.getInt(1));
				vo.setEname(rs.getString(2));
				vo.setJob(rs.getString(3));
				vo.setHiredate(rs.getDate(4));
				vo.setDvo().setDname(rs.getInt(5));
				
			}
		}catch (Exception ex) {
			ex.printStackTrace();
		}finally {
			disConnection();	//주소 반환
		}
		return list;
	}
}
