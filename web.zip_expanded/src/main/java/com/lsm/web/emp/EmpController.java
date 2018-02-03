package com.lsm.web.emp;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.lsm.web.common.CommonCheck;
import com.lsm.web.test.TestEmpVO;

@Controller
public class EmpController {

	@Autowired
	EmpService service;
	
	@GetMapping("/emp/empView")
	public String empView() {
		return "emp/empView";
	}
	
	
	/*
	// request.getParameter 사용하지 않는 방법
	@PostMapping("/emp/empSearch")
	public String empList(Model model, @RequestParam("ename") String eName) {
		
		List<EmpVO> list = service.selectEmpName(eName);
		System.out.println(list.toString());
		model.addAttribute("list", list);
		
		return "emp/empView"; 
	}
	*/
	
	/**
	 * 사원명으로 검색하여 emp 테이블 출력  
	 * */
	@PostMapping("/emp/empSearch")
	public String empList(Model model, HttpServletRequest request) {
		
		String ename = request.getParameter("ename");
		
		List<EmpVO> list = service.selectEmpName(ename);
		System.out.println(list.toString());
		model.addAttribute("list", list);
		
		return "emp/empView"; 
	}
	
	/**
	 * emp 테이블 출력 
	 * */
	@GetMapping("/emp/DnameList")
	public String DnameList(Model model) {
		
		List<EmpVO> list = service.selectMemberDname();
		
		 model.addAttribute("list", list);
		 
		 return "emp/dnameList";
	}
	
	
	/**
	 * 사원목록 출력 : 부서명 & 직무 검색 기능
	 * */
	@GetMapping("/emp/SearchResult")
	public String searchResult(Model model, HttpServletRequest request) {
		
		String searchType = request.getParameter("searchType");
		String searchWord = request.getParameter("searchWord");
		
		System.out.println(searchWord+"&"+searchType);
		
		List<EmpVO> list = null;
		//model.addAttribute("list", list);
		
		/*if(searchType == "dname") {
			list = service.selectDname(searchWord);
			
			System.out.println(list.isEmpty());
			
			
		}else if(searchType == "job") {
			list = service.selectJob(searchWord);
			
			System.out.println(list.isEmpty());
			
		}
		*/
		model.addAttribute("list", list);
		
		return "emp/dnameList";
	}
	
	/**
	 * 사원목록 출력 : 부서명 & 직무 검색 기능
	 * */
	@RequestMapping("/emp/searchEmpResult")
	public String searchEmpResult(@ModelAttribute EmpSVO svo, Model model) {
		
		List<EmpVO> list = service.selectDname(svo);
		model.addAttribute("list", list);
		
		return "emp/dnameList";
	}
	
	
	/**
	 * 단순한 사원목록 출력
	 * */
	@GetMapping("/emp/SearchEmp")
	public String SearchEmp(Model model) {
		
		List<EmpVO> list = service.selectMemberDname();
		
		 model.addAttribute("list", list);
		 
		 return "emp/SearchEmpList";
	}
	
	
	/*
	//ModelAndView 사용 방법
	@GetMapping("/emp/DnameList")
	public ModelAndView DnameList22222(Model model) {
		
		List<EmpVO> list = service.selectMemberDname();
		ModelAndView mav = new ModelAndView();
		mav.addObject("list", list);
		mav.setViewName("emp/dnameList");
		
		return mav;
	}
	*/
	
	@PostMapping("/emp/dnameUpdate")
	@ResponseBody
	public void updateDname(@ModelAttribute EmpVO paramVO, HttpServletResponse response) {
		
		service.updateDname(paramVO);
		try {
			response.sendRedirect("/emp/DnameList");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//return "emp/dnameList";
	}
	
	
	/**
	 * @CommonCheck 로그인 세션 체크 
	 * 
	 * 부서명 수정기능
	 * */
	@CommonCheck(isLogin="Y")
	@PostMapping("/emp/updateDname")
	public String updateDname(@ModelAttribute EmpVO vo) {
		
		System.out.println(vo);
		service.updateDname(vo);
		
		return "redirect:/emp/DnameList";
	}
	
	
	/**
	 * 단순한 화면에 login 출력
	 * */
	@GetMapping("/login")
	@ResponseBody	// @ResponseBody는 단순 String 출력 
	public String login() {
		return "login";
	}
	
	/**
	 * emp 테이블 리스트 뿌리기 
	 * */
	@GetMapping("emp/empTotalList")
	public String empTotalList(Model model) {
		List<EmpVO> list = null;
		list = service.selectEmpList();
		model.addAttribute("list" ,list);
		
		return "emp/emp_list";
	}
	
	@GetMapping("test/Main")
	public String testMain() {
		return "test/empSalList";
	}
	
	@PostMapping("test/salList")
	public String salList(@ModelAttribute TestEmpVO vo, Model model) {
		List<TestEmpVO> list = service.selectSalList(vo);
		model.addAttribute("list", list);
		
		return "test/resultSal";
	}
	
}
