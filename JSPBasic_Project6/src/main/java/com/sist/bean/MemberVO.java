package com.sist.bean;

import lombok.Data;
/*
 * VO, DTO, Bean 는 같은 개녕
 * Spring MyBatis JSP : 데이터를 모아서 한번에 전송할 목적
 * 변수제어 : 읽기(getter)/쓰기(setter)
 * 		데이터 방지(해킹보호)목적
 */
@Data
public class MemberVO {
	private String name, sex, address, phone;
}
