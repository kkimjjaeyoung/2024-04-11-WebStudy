//dbcp : 보안/connection효율적 관리/연결시간 절약/접속자 관리로 서버다운 방지
	/*
	 * 1. MyBatis
	 * 2. JPA(DBCP사용. 라이브러리로 제작)
	 */

package com.sist.dao;

import java.util.*;
import java.sql.*;
import javax.sql.*;
import javax.naming.*;

public class DataBoardDAO {
	//오라클 연결 객체(DBCP는 연결할때만 사용)
	private Connection conn;
	private PreparedStatement ps; //SQL: 오라클과 송수신 담당
	private static DataBoardDAO dao;	//싱글턴
	
	//싱글턴
	public static DataBoardDAO newInstance() {
		if(dao==null) {
			dao=new DataBoardDAO();
		}
		return dao;
	}
	//미리 연결해 저장된 pool안의 conn 주소값 가져오기
	public void getConnection() {
		try {
		//JNDI(Java Naming Directoty Interface) : 메모리 주소를 탐색시 형식으로 제작
		//탐색기 생성
		Context init=new InitialContext();
		//c:dirver - java://comp/env
		Context c=(Context)init.lookup("java://comp/env");
		//jebc/oracle이름의 connection주로 찾기
		DataSource ds=(DataSource)c.lookup("jdbc/oracle");
		//lockup() : 이름으로 객체찾기
		conn=ds.getConnection();
		}catch(Exception ex) {
			ex.printStackTrace();
		}
	}
	//conn반환
	public void disConnection() {
		try {
			if(ps!=null) {
				ps.close();
			}
			if(conn!=null) {
				conn.close();
			}
			//connenction poll 사용 : commons-dbcp-jar, commons-pool.jar 파일 톰캣의 lib에 위치해야함
		}catch(Exception ex) {
			
		}
	}
//etc
	//목록 출력(페이지 구분)
	public List<DataBoardVO> databoardListData(int page){
		//DataBoardVO : 자료실 한개에 대한 모든 정보
		//매개변수 int page : 사용자 요청값
		//리턴형은 결과값을 브라우저로 전송
		List<DataBoardVO> list=new ArrayList<DataBoardVO>();
		//페이지 분석
		try {
			getConnection();
			String sql="SELECT no,subject,name,TO_CHAR(regdate,'yyyy-mm-dd'),hit,num "
					  +"FROM (SELECT no,subject,name,regdate,hit,rownum as num "
					  +"FROM (SELECT /*+ INDEX_DESC(databoard db_no_pk)*/no,subject,name,regdate,hit "
					  +"FROM databoard)) "
					  +"WHERE num BETWEEN ? AND ?";
			ps=conn.prepareStatement(sql);
			int rowSize=10;
			int start=(rowSize*page)-(rowSize-1);	//rownum은 1번
			int end=rowSize*page;
			ps.setInt(1, start);
			ps.setInt(2, end);
			//실행
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				DataBoardVO vo=new DataBoardVO();
				vo.setNo(rs.getInt(1));
				vo.setSubject(rs.getString(2));
				vo.setName(rs.getString(3));
				vo.setDbday(rs.getString(4));
				vo.setHit(rs.getInt(5));
				
				list.add(vo);
			}
			
		}catch(Exception ex) {
			ex.printStackTrace();
		}finally {
			disConnection();
		}
		
		return list;
		}
	//총페이지 구하기
	public int databoardRowCount() {
		int count=0;
		try {
			getConnection();
			String sql="SELECT COUNT(*) FROM databoard";
			ps=conn.prepareStatement(sql);
			ResultSet rs=ps.executeQuery();
			rs.next();
			count=rs.getInt(1);
		}catch(Exception ex) {
			ex.printStackTrace();
		}finally {
			disConnection();
		}
		return count;
	}
	//상세보기(다운로드) 
	public DataBoardVO databoardDetailData(int no) {
		DataBoardVO vo=new DataBoardVO();
		try {
			getConnection();
			String sql="UPDATE databoard SET"
					+ "hit=hit+1"
					+ "WHERE no="+no;
			ps=conn.prepareStatement(sql);
			ps.executeQuery();
			//조회수 증가, 증가된 조회수 읽기
			sql="SELECT no,name,subject,content,hit,TO_CHAR(regdate,'YYYY-MM-DD'),"
					+ "filename, fileseiz"
					+ "FROM databoard"
					+ "WHERE no="+no;
			ps=conn.prepareStatement(sql);
			ResultSet rs=ps.executeQuery();
			rs.next();
			rs.next();
			vo.setNo(rs.getInt(1));
			vo.setName(rs.getString(2));
			vo.setSubject(rs.getString(3));
			vo.setContent(rs.getString(4));
			vo.setHit(rs.getInt(5));
			vo.setDbday(rs.getString(6));
			vo.setFilename(rs.getString(7));
			vo.setFilesize(rs.getInt(8));
			rs.close();
		}catch(Exception ex) {
			ex.printStackTrace();
		}finally {
			disConnection();
		}
		return vo;
	}
	//글쓰기(업로드)
	public void dataBoardInsert(DataBoardVO vo) {
		try {
			getConnection();
			String sql="INSERT INTO databoard(no, name, subject, content, pwd, filename, filesize)"
					+ "VALUES (db_no_seq.nextval, ?,?,?,?,?,?,?)";
			ps=conn.prepareStatement(sql);
			ps.setString(1, vo.getName());
			ps.setString(2, vo.getSubject());
			ps.setString(3, vo.getContent());
			ps.setString(4, vo.getPwd());
			ps.setString(5, vo.getFilename());
			ps.setInt(6, vo.getFilesize());
			//실행
			ps.executeUpdate();
		}catch(Exception ex) {
			ex.printStackTrace();
		}finally {
			disConnection();
		}
	}
	//수정.삭제(파일변경시 처리과정. 삭제과정)
	public 
}
