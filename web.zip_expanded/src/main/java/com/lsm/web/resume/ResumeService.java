package com.lsm.web.resume;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ResumeService {

	@Autowired
	ResumeDAO dao;
	
	public int resumeApply(ResumeVO vo) {
		
		return dao.resumeApply(vo);
	}
	
	public int applyTest(ResumeVO vo) {
		return dao.applyTest(vo);
	}
	
}
