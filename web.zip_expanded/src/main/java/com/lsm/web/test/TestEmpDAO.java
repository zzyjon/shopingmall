package com.lsm.web.test;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class TestEmpDAO {

	@Autowired
	SqlSession session;
	
	public List<TestEmpVO> selectSalList(int sal){
		return session.selectList("empTest.selectSalList", sal);
	}
	
	public List<TestEmpVO> selectEmp(){
		return session.selectList("empTest.selectEmp");
	}
}
