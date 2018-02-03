package com.lsm.web.emp;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.lsm.web.test.TestEmpVO;

@Repository
public class EmpDAO {

	@Autowired
	SqlSession sqlSession;
	
	public List<EmpVO> selectEmpName(String ename){
		return sqlSession.selectList("emp.selectMember", ename);
	}
	
	public List<EmpVO> selectMemberDname(){
		return sqlSession.selectList("emp.selectMemberDname");
	}
	
	public int updateDname(EmpVO vo) {
		return sqlSession.update("emp.updateDname", vo);
	}
	
	public List<EmpVO> selectJob(EmpSVO svo){
		return sqlSession.selectList("emp.selectJob", svo);
	}
	
	public List<EmpVO> selectDname(EmpSVO svo){
		return sqlSession.selectList("emp.selectMemberDname", svo);
	}
	
	public List<EmpVO> selectEmpList(){
		return sqlSession.selectList("emp.selectEmpList");
	}
	
	public List<TestEmpVO> selectSalList(TestEmpVO vo){
		return sqlSession.selectList("emp.selectSalList", vo);
	}
}
