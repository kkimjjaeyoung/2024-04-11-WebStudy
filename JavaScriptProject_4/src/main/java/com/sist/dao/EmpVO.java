package com.sist.dao;
import java.util.*;

import lombok.Data;
//mybatis에선 컬럼명과 일치해야함
@Data
public class EmpVO {
	private int empno, sal, comm, deptno, mgr;
	private String ename, job;
	private Date hiredate;
}
