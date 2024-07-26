package com.sist.manager;
import java.util.*;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;

import oracle.jdbc.driver.json.tree.JsonpObjectImpl;

public class MovieManager {
	public static void main(String[] args) {
		MovieManager m=new MovieManager();
		m.movieListData(1);
	}
	public List<MovieVO> movieListData(int type){
		String[] strUrl= {
			"",
			"https://www.kobis.or.kr/kobis/business/main/searchMainDailyBoxOffice.do",
			"https://www.kobis.or.kr/kobis/business/main/searchMainRealTicket.do",
			"https://www.kobis.or.kr/kobis/business/main/searchMainDailySeatTicket.do"
		};
		List<MovieVO> list=new ArrayList<MovieVO>();
		try {
			Document doc=Jsoup.connect(strUrl[type]).get();
			String json=doc.toString();
			json=json.substring(json.indexOf("["), json.lastIndexOf("]")+1);
			//파서 생성(필요한 데이터만 읽어오기. HTML:JSOUP, XML:DocumentBuilder, JSON:SimpleJson)
			JSONParser jp=new JSONParser();
			//전체 데이터 불러오기
			JSONArray arr=(JSONArray)jp.parse(json);
			//파세로 데이터 추출
/*
 * 1. HTML : 크롤링
 * 2. JSON : 자바스크립트 호환(Ajax/Vue/React)
 * 3. XML : 설정파일(Mybatism Spring
 * 4. 공공데이터포털(CSV)
 */
			for(int i=0; i<arr.size(); i++) {
				JSONObject obj=(JSONObject)arr.get(i);
				MovieVO vo=new MovieVO();
				vo.setRank(i+1);
				String poster=(String)obj.get("thumbUrl");		//영화 포스터
				vo.setPoster("https://www.kobis.or.kr"+poster);
				String title=(String)obj.get("movieNm");		//제목
				vo.setTitle("https://www.kobis.or.kr"+title);
				vo.setTitle(title);
				String genre=(String)obj.get("genre");		//영화 장르
				vo.setGenre(genre);
				String director=(String)obj.get("director");		//영화 감독
				vo.setDirector(director);
				String grage=(String)obj.get("watchGradeNm");		//영화 포스터
				vo.setGrade(grage);
			}
		}catch (Exception ex) {
			// TODO: handle exception
		}
		return list;
	}
}
