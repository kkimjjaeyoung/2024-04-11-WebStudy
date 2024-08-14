package com.sist.vo;

import lombok.Data;

/*
NO	NUMBER(38,0)
POSTER	VARCHAR2(4000 BYTE)
TITLE	VARCHAR2(1000 BYTE)
CHEF	VARCHAR2(1000 BYTE)
 */
@Data
public class RecipeVO {
   private int no, hit;
   private String poster,title, chef, info3;
}