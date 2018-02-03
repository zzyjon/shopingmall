package com.lsm.web.moosinsa;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BrandService {

	@Autowired
	BrandDAO dao;
	
	public List<BrandVO> selectBrand(){
		return dao.selectBrand();
	}
}
