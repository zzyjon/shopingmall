package com.lsm.web.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MembersService {

	@Autowired
	MembersDAO dao;
	
	public List<MembersVO> selectMembersList(){
		List<MembersVO> list = dao.selectMembersList();
		
		return list;
	}
	
	
	public MembersVO selectMember(MembersVO vo) {
		return dao.selectMember(vo);
	}
	
}
