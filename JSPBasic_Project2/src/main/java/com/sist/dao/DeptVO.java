package com.sist.dao;
import java.util.*;
import lombok.*;

@Data
public class DeptVO {
	private int empno,deptno,sal,comm,mgr;
	private String enma, job;
	private Date hiredate;
}
