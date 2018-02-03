package com.lsm.web.test;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TestEmpService {

	@Autowired
	TestEmpDAO dao;
	
	public List<TestEmpVO> selectSalList(int sal){
		return dao.selectSalList(sal);
	}
	
	public List<TestEmpVO> selectEmp(){
		return dao.selectEmp();
	}
}
