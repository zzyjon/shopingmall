package com.lsm.web.members;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class MemberService {

	@Autowired
	MemberDAO dao;
	
	
	public int selectMemberCount(MemberVO vo) {
		
		return dao.selectMemberCount(vo);
		
	}
	
	public List<MemberVO> selectList(MemberVO vo) {
		return dao.selectList(vo);
	}
	
	public int selectCount() {
		return dao.selectCount();
	}
}
