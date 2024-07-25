/*
 * 1. 목록 : 페이징
 * 2. 상세보기
 * 3. CRUD : 게시판
 * 4. 파일 업로드
 */
package com.sist.vo;
import java.util.*;

import lombok.Data;

@Data
public class BoardVO {
	private int no, hit;
	private String name, subject, content, pwd, dbday;
	private Date regdate;
	private int rownum;
}
