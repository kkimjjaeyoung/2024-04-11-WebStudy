package com.sist.dao;

import lombok.Data;

@Data
public class GoodsAllVO {
	private int no, goods_discount, hit ;
	private String goods_name, goods_sub, goods_price, goods_poster, goods_first_price, goods_delivery;
}
