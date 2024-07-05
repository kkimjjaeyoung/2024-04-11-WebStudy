/*
 * 클래스(컴포넌트)의 종류
 *  VO : 데이터를 모아서 한번에 브라우저/모바일로 전송
 *  DAO : 데이터베이스 연동
 *  Manager : 관리(데이터 수집, Open API)
 *  Service : 사용자 요청에 대한 처리
 *  Model(Controller) : 사용자 요청을 받아 결과 전송
 * 
 */

package com.sist.dao;

import java.util.*;
import java.sql.*;
import com.sist.database.*;

public class FoodDAO {
	private Connection conn;		//오라클 연결
	private PreparedStatement ps;	//sql문장 전송
	private static FoodDAO dao;		//싱글턴 (메모리 공간 제어)
	private DataBaseConnection dbConn=new DataBaseConnection();		//db연결/해제
	
	//싱글턴
	public static FoodDAO newInstance() {
		if(dao==null) {
			dao=new FoodDAO();
		}
		return dao;
	}
	
	//기능수행
	public List<FoodVO> foodListData(){
		List<FoodVO> list=new ArrayList<FoodVO> () ;
		//예외처리
		try {
			//연결
			conn=dbConn.getConnection();
			//SQL문장 제작
			String sql="SELECT fno, name, poster, rownum FROM food_house WHERE rownum<=20";
					
			//sql문장 전송
			ps=conn.prepareStatement(sql);
			//필요한 데이터 유무 확인
			//결과값 수령
			ResultSet rs=ps.executeQuery();
			//list에 첨부후 전송 준비
			while(rs.next()) {
				FoodVO vo=new FoodVO();
				vo.setFno(rs.getInt(1));
				vo.setName(rs.getString(2));
    			vo.setPoster(rs.getString(3).replace("https", "http"));
				
				list.add(vo);
			}
		}catch (Exception ex) {
			System.out.println("foodlistdata 오류");
			ex.printStackTrace();
		}finally {
			dbConn.disConnection(conn, ps);
		}
		return list;
	}
}
