package com.lsm.web.moosinsa;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ProductService {

	@Autowired
	ProductDAO dao;
	
	public int insertProduct(ProductVO vo) {
		return dao.insertProduct(vo);
	}
	
	public List<ProductVO> selectProductList(){
		return dao.selectProductList();
	}
	
	public int deleteProduct(ProductVO vo) {
		return dao.deleteProduct(vo);
	}
	
	public ProductVO selectProduct(ProductVO vo) {
		return dao.selectProduct(vo);
	}
	
	public int updateProduct(ProductVO vo) {
		return dao.updateProduct(vo);
	}
	
	public int countProduct() {
		return dao.countProduct();
	}
	
	public List<ProductVO> selectList(ProductVO vo){
		return dao.selectList(vo);
	}
}
