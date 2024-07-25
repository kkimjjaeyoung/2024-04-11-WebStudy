package com.sist.dao;
import java.util.*;
import java.sql.*;
import com.sist.dao.DbcpConnection;
import com.sist.vo.BoardVO;

public class BoardDAO {
	private Connection conn;
	private PreparedStatement ps;
	private static BoardDAO dao;
	private DbcpConnection dbConn=new DbcpConnection();
	
	public static BoardDAO newInstance() {
		if(dao==null) {
			dao=new BoardDAO();
		}
		return dao;
	}
	
	public List<BoardVO> boardListData(int page){
		List<BoardVO> list=new ArrayList<BoardVO>();	//list에 값을 채워서 브라우저로 전송(Model에서 처리 후 Controller가 전송)
		try {
			dbConn.getConnection();
			String sql="SELECT no,subject, name, TO_CHAR(regdate, 'YYYY-MM-DD'),hit, num"
					+ "FROM (SELECT no,subject, name, regdate,hit, rownum as num"
					+ "FROM (SELECT no,subject, name, regdate,hit"
					+ "FROM baord ORDER BY no DESC))"
					+ "WHERE num BETWEEN ? AND ?";
			ps=conn.prepareStatement(sql);
			int rowSize=10;
			int start=(rowSize*page)-(rowSize-1);
			int end=rowSize*page;
			
			ps.setInt(1, start);
			ps.setInt(2, end);
			
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				BoardVO vo=new BoardVO();
				vo.setNo(rs.getInt(1));
				vo.setSubject(rs.getString(2));
				vo.setName(rs.getString(3));
				vo.setDbday(rs.getString(4));
				vo.setHit(rs.getInt(5));
				vo.setRownum(rs.getInt(6));
				
				list.add(vo);
			}
		}catch (Exception ex) {
			ex.printStackTrace();			
		}finally {
			dbConn.disConnection(conn, ps);
		}
		
		return list;
	}
	//총페이지 구하기
	public int boardRowCount() {
		int total=0;
		try {
			conn=dbConn.getConnection();
			String sql="SELECT COUNT(*) FROM baord";		//빠지는 번호 없을때는 COUNT
			ps=conn.prepareStatement(sql);
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
	//글쓰기
	public void boardInsert(BoardVO vo) {
		try {
			conn=dbConn.getConnection();
			String sql="INSERT INTO board VALUES"
					+ "board_no_seq.nextval,?,?,?,?,STSDATE,0)";
			ps=conn.prepareStatement(sql);
			ps.setString(1, vo.getName());
			ps.setString(2, vo.getSubject());
			ps.setString(3, vo.getContent());
			ps.setString(4, vo.getPwd());
			
			ps.executeQuery();
		}catch(Exception ex) {
			ex.printStackTrace();
		}finally {
			dbConn.disConnection(conn, ps);
		}
	}
	public boolean boardUpdate(BoardVO vo) {
		boolean bCheck=false;
		try {
			conn=dbConn.getConnection();
			String sql="SELECT pwd FROM board WHERE no="+vo.getNo();
			ps=conn.prepareStatement(sql);
			ResultSet rs=ps.executeQuery();
			rs.next();
			String db_pwd=rs.getString(1);
			
		}catch (Exception ex) {
			ex.printStackTrace();
		}finally {
			dbConn.disConnection(conn, ps);
		}
		return bCheck;
	}
	
	public boolean boardDelete(BoardVO vo) {
	boolean bCheck=false;
	try {
		conn=dbConn.getConnection();
		String sql="SELECT pwd FROM board WHERE no="+vo.getNo();
		ps=conn.prepareStatement(sql);
		ResultSet rs=ps.executeQuery();
		rs.next();
		if(db_pwd.equals(pwd)) {
			bCheck=true;
			sql="DELETE FROM board WHERE no="+no;
			ps=conn.prepareStatement(sql);
			ps.executeUpdate();	
		}
		
	}catch (Exception ex) {
		ex.printStackTrace();
	}finally {
		dbConn.disConnection(conn, ps);
	}
	return bCheck;
}
