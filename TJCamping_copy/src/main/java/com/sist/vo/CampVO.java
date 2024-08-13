package com.sist.vo;
/*
 CAMP_NO                                   NOT NULL NUMBER
 CAMP_PRICE                                         NUMBER
 CAMP_NAME                                 NOT NULL VARCHAR2(4000)
 CAMP_ADDR                                          VARCHAR2(4000)
 CAMP_PHONE                                         VARCHAR2(4000)
 CAMP_CONTENT                                       CLOB
 CAMP_IMAGE                                         VARCHAR2(4000)
 CAMP_WIFI                                          VARCHAR2(4000)
 CAMP_STORE                                         VARCHAR2(4000)
 CAMP_ANIMAL                                        VARCHAR2(4000)
 */

import lombok.Data;

@Data
public class CampVO {

	private int camp_no,camp_price;
	private String camp_name,camp_addr,camp_phone,camp_content,
		camp_image,camp_wifi,camp_store,camp_animal;
}
