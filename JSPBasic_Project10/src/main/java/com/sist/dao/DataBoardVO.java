/*
 NAME                                      NOT NULL VARCHAR2(50)
 SUBJECT                                   NOT NULL VARCHAR2(2000)
 CONTENT                                   NOT NULL CLOB
 PWD                                       NOT NULL VARCHAR2(10)
 REGDATE                                            DATE
 HIT                                                NUMBER
 FILENAME                                           VARCHAR2(260)
 FILESIZE                                           NUMBER
 */
/*
 * DB연결 데이터값을 저장한 후 한번에 브라우저로 전송할 목적
 * 	-데이터보호(캡슐화)->private 변수
 *  -사용가능하게 구성-> 읽기/쓰기 변수(getter/setter)
 *  jsp : Bean
 *   - 생성시 태그
 *   	<jsp:useBean>
 *   	<jsp:setProperty> (MVC. 사용빈도 적음)
 *   매칭 : DB컬럼과 매칭, 크롤링 데이터 매칭
 *   	데이터베이스
 *   		문자형 : CHAR, VARCHAR2, CLOB
 *   		숫자형 : NUMBER( , )
 *   		날짜형 : DATE			-	java.util
 */
package com.sist.dao;
import java.util.*;

import lombok.Data;

@Data
public class DataBoardVO {
	private int no, filesize, hit;
	private String name, subject, content, pwd, filename, dbday;
	private Date regdate;
}
