package com.lsm.web.moosinsa;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class CategoryController {

	@Autowired
	CategoryService service;
	
	@Autowired
	BrandService bService;
	
	@GetMapping("/page/product/goods_reg")
	public String selectCategory(Model model) {
		List<CategoryVO> cartegoryList = service.selectCategory();
		List<BrandVO> brandList = bService.selectBrand();
		model.addAttribute("categoryList", cartegoryList);
		model.addAttribute("brandList", brandList);
		
		return "page/product/goods_reg";
	}

}
