package com.lsm.web.moosinsa;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CategoryService {

	@Autowired
	CategoryDAO dao;
	
	public List<CategoryVO> selectCategory(){
		return dao.selectCategory();
	}
}
