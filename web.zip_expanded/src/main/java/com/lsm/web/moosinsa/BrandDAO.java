package com.lsm.web.moosinsa;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BrandDAO {

	@Autowired
	SqlSession sqlSession;
	
	public List<BrandVO> selectBrand(){
		return sqlSession.selectList("brand.selectBrand");
	}
}
