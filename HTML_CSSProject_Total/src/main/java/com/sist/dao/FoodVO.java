package com.sist.dao;

import lombok.Data;

/*
 *   자바 / 오라클 / JSP / ***Spring / ***Spring-Boot 
 *          | JDBC / DBCP / ***MyBatis / JPA 
 *   ======================================== Back-End (추천 => 85%)
 *   HTML / CSS 
 *     => 화면 제작 , CSS 변경 
 *   JavaScript : JQuery (AJAX) , **VueJS , **ReactJS , NodeJS , NextJS , NuxtJS
 *   =========== TypeScript 
 *   
 *   FNO                                       NOT NULL NUMBER
	 NAME                                      NOT NULL VARCHAR2(200)
	 TYPE                                      NOT NULL VARCHAR2(200)
	 PHONE                                              VARCHAR2(30)
	 ADDRESS                                            VARCHAR2(700)
	 SCORE                                              NUMBER(2,1)
	 THEME                                              CLOB
	 POSTER                                    NOT NULL VARCHAR2(260)
	 CONTENT                                            CLOB
 *   
 *   desc table_name : 확인
 *   변수명 = 컬럼명 동일
 *   	->데이터를 브라우저로 전송할 목록 VO (캡슐화 사용. private 변수 사용. 메소드를 이용해 접근)
 *   데이터형 일치
 *   	-	테이블 1개당 vo/dao 하나씩
 *		CHAR, VATCHAR2, CLOB = String	
 *		NUMBER = int, double
 *		DATE = java.util.Date		--		SYSDATE : 오늘, 	예약일 : YY/MM/DD    	
 *   
 */
@Data
public class FoodVO {
   private int fno;
   private String name,type,phone,address,theme,poster,content;
   private double score;
}