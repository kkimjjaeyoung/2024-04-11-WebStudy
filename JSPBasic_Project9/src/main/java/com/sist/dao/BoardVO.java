package com.sist.dao;

import java.sql.Date;

import lombok.Data;

public class BoardVO {
	private int no;
	private String name, subject, content, pwd;
	private Date regdate;
	private int group_id;
	private int group_step;
	private int group_tab;
	private int root;
	private int depth;
}
