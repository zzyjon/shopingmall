package com.lsm.web.moosinsa;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ProductDAO {

	@Autowired
	SqlSession session;
	
	/**
	 * 상품 등록
	 * */
	public int insertProduct(ProductVO vo) {
		return session.insert("product.insertProduct", vo);
	}
	
	/**
	 * 상품 목록 조회 
	 * */
	public List<ProductVO> selectProductList(){
		return session.selectList("product.selectProductList");
	}
	
	
	/**
	 * 상품 삭제
	 * */
	public int deleteProduct(ProductVO vo) {
		return session.delete("product.deleteProduct", vo);
	}
	
	/**
	 * 상품 조회(수정 버튼 눌렀을 때 )
	 * */
	public ProductVO selectProduct(ProductVO vo) {
		return session.selectOne("product.selectProduct", vo);
	}
	
	
	/**
	 * 상품 수정
	 * */
	public int updateProduct(ProductVO vo) {
		return session.update("product.updateProduct", vo);
	}
	
	/**
	 * 등록된 상품 갯수 카운트 (페이징처리용)
	 * */
	public int countProduct() {
		return session.selectOne("product.countProduct");
	}
	
	/**
	 * 상품 목록 조회 페이징
	 * */
	public List<ProductVO> selectList(ProductVO vo){
		return session.selectList("product.selectList", vo);
	}
}
