package com.lsm.web.moosinsa;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class CategoryDAO {

	@Autowired
	SqlSession session;
	
	public List<CategoryVO> selectCategory(){
		return session.selectList("product.selectCategory");
	}
}
