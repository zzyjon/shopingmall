package com.lsm.web.members;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.lsm.web.common.Pagenation;

@Controller
public class MemberController {

	@Autowired
	MemberService service;

	@GetMapping("/member/loginForm")
	public String loginForm() {
		return "member/loginForm";
	}
	
	//@RequestMapping(value="/member/procLogin", method=RequestMethod.POST)
	@PostMapping("/member/procLogin")
	public ModelAndView procLogin(@ModelAttribute MemberVO vo, HttpSession session) {
		ModelAndView mav = new ModelAndView("jsonView");

		int result = service.selectMemberCount(vo);
		if (result > 0) {  // 0 보다 크면 정상 로그인 
			session.setAttribute("id", vo.getmId());
			mav.addObject("result", "200");
			mav.addObject("desc", "login success");
		}else {
			mav.addObject("result", "101");
			mav.addObject("desc", "login fail");
		}

		return mav;
	}

	@RequestMapping("/member/loginComplete")
	public String loginComplete() {
		return "member/loginComplete";
	}
	
	
	
	@GetMapping("/member/membersPaging")
	public String memberPaging(Model model, @RequestParam("currPage") int currPage) {
		
		MemberVO vo = new MemberVO();
		
		vo.setTotalCount(service.selectMemberCount(vo));
		vo.setCurrPage(currPage);
		
		/*Pagenation pg = new Pagenation();
		pg.setTotalCount(service.selectCount());
		
		pg.setCurrPage(currPage);
		
		vo.setCountPerPage(pg.getCountPerPage());
		vo.getOffset();
		
		System.out.println(vo.getOffset());
		*/
		//model.addAttribute("paging", pg);
		
		List<MemberVO> list = service.selectList(vo);
		model.addAttribute("list",list);
		model.addAttribute("startPageNum", vo.getStartPageNum());
		model.addAttribute("lastPageNum", vo.getLastPageNum());
		model.addAttribute("currPage", vo.getCurrPage());
		model.addAttribute("totalPage", vo.getTotalPage());
		
		return "member/member_list";
	}
	
}
