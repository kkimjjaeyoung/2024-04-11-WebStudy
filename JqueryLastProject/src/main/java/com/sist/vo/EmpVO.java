package com.sist.vo;
import java.util.*;

import lombok.Data;

@Data
public class EmpVO {
	private int empno, sal, comm, deptno;
	private String ename, job, dbday;
	private Date hiredate;
	private DeptVO dvo=new DeptVO();
}
