package com.lsm.web.members;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDAO {
	
	@Autowired
	SqlSession session;
	
	public int selectMemberCount(MemberVO vo) {
		
		return session.selectOne("members.selectMemberCount", vo);
	}
	
	public List<MemberVO> selectList(MemberVO vo){
		return session.selectList("members.selectList", vo);
	}
	
	/**
	 * @author i3G-13
	 * @see 페이지 처리 회원 수 카운트
	 * */
	public int selectCount() {
		return session.selectOne("members.selectCount");
	}
	
}
