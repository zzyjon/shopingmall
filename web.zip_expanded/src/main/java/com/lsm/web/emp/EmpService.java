package com.lsm.web.emp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lsm.web.test.TestEmpVO;

@Service
public class EmpService {

	@Autowired
	EmpDAO dao;
	
	public List<EmpVO> selectEmpName(String ename){
		List<EmpVO> list = dao.selectEmpName(ename);
		return list;
	}
	
	public List<EmpVO> selectMemberDname(){
		List<EmpVO> list = dao.selectMemberDname();
		return list;
	}
	
	public int updateDname(EmpVO vo) {
		return dao.updateDname(vo);
	}
	
	public List<EmpVO> selectJob(EmpSVO svo){
		return dao.selectJob(svo);
	}
	
	public List<EmpVO> selectDname(EmpSVO svo){
		return dao.selectDname(svo);
	}
	
	public List<EmpVO> selectEmpList(){
		return dao.selectEmpList();
	}
	
	public List<TestEmpVO> selectSalList(TestEmpVO vo){
		return dao.selectSalList(vo);
	}
}
