package com.lsm.web.moosinsa;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class BrandController {

	@Autowired
	BrandService service;
	
	/**
	 * 브랜드 목록 조회 
	 * 브랜드 갯수 카운트
	 * */
	@GetMapping("/page/product/brand_mana")
	public String selectBrand(Model model) {
		List<BrandVO> list = service.selectBrand();
		model.addAttribute("brandList", list);
		
		int countBrand = service.countBrand();
		model.addAttribute("countBrand", countBrand);
		
		return "page/product/brand_mana";
	}
	
	/**
	 * 브랜드 추가
	 * */
	@PostMapping("/page/product/brand_insert")
	public String insertBrand(@ModelAttribute BrandVO vo) {
		
		System.out.println(vo.getBrandName());
		
		service.insertBrand(vo);
		
		return "page/product/brand_mana";
		
	}
	
	/**
	 * 브랜드 수정
	 * */
	@PostMapping("/page/product/brand_update")
	public String updateBrand(@ModelAttribute BrandVO vo) {
		
		System.out.println("brandName : "+vo.getBrandName());
		System.out.println("brandNo : "+vo.getBrandNo());
		
		service.updateBrand(vo);
		
		return "page/product/brand_mana";
	}
	
	/**
	 * 브랜드 삭제 
	 * */
	@PostMapping("/page/product/brand_delete")
	public String deleteBrand(@ModelAttribute BrandVO vo) {
		
		service.deleteBrand(vo);
		
		return "page/product/brand_mana";
	}
}
