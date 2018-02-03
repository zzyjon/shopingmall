package com.lsm.web.moosinsa;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class BrandController {

	@Autowired
	BrandService service;
	
	@GetMapping("/goods/test")
	public String selectBrand(Model model) {
		List<BrandVO> list = service.selectBrand();
		model.addAttribute("brandList", list);
		
		return "";
	}
}
