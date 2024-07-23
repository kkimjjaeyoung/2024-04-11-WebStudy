//메소드 탐색
package com.sist.controller;

import static java.lang.annotation.ElementType.METHOD;
import static java.lang.annotation.RetentionPolicy.RUNTIME;

import java.lang.annotation.Retention;
import java.lang.annotation.Target;

@Retention(RUNTIME)	//객체저장기간(runtime : 프로그램 종료시까지 메모리 할당)
@Target(METHOD) //구분자(탐색기)
/*
 * TYPE : 클래스 구분자
 * METHOD : 메소드 구분자
 * PARAMETER : 매개변수 구분자
 * FIELD : 맴버변수/맴버객체 구분자
 * 
 * 위치
 * 		public clas className{
 * 			@ => FIELD
 * 			A a;
 * 			@ => METHOD
 * 			public void display(){
 * 			
 * 		}
 * 		public void setA(/@=> PARAMETER/ A a){
 * 			
 * 			}
 * 		}
 * 
 * 	@RequestMapping("구분내용")
 * 		-밑에있는 메소드를 제어
 */
public @interface RequestMapping {
	public String value();
}
