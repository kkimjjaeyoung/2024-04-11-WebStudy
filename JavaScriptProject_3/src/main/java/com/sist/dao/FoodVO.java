package com.sist.dao;
import lombok.Data;

@Data
public class FoodVO {
	private int fno,hit,jjimcount,likecount;
	private double score;
	private String name,type,phone,address,theme,poster,content;
}
