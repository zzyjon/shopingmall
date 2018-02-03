package com.lsm.web.resume;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ResumeDAO {

	@Autowired
	SqlSession sqlSession;
	
	public int resumeApply(ResumeVO vo) {
		return sqlSession.insert("resume.resumeApply", vo);
	}
	
	public int applyTest(ResumeVO vo) {
		return sqlSession.insert("resume.applyTest", vo);
	}
}
