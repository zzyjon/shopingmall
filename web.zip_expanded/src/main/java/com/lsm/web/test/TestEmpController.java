package com.lsm.web.test;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class TestEmpController {

	@Autowired
	TestEmpService service;
	
	/**
	 * 실기 테스트
	 * */
	@GetMapping("test/empSalList")
	public String empSalList(Model model) {
		return "test/empSalList";
	}
	
	@PostMapping("test/searchEmpSalList")
	public String searchEmpSalList(Model model, HttpServletRequest request) {
		String sal = request.getParameter("userSal");
		
		List<TestEmpVO> list = service.selectSalList(Integer.parseInt(sal));
		model.addAttribute("list", list);
		
		return "test/empSalList";
	}
	
}
