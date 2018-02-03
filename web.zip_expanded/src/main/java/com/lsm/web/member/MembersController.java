package com.lsm.web.member;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.lsm.web.common.FileVO;

@Controller
public class MembersController {

	@Autowired
	MembersService service;
	
	@GetMapping("/member/memberList")
	public String membersList(Model model) {
		List<MembersVO> list = service.selectMembersList();
		model.addAttribute("list", list);
		
		return "member/memberList";
	}
	
	@GetMapping("/member/memberJsonList")
	public ModelAndView memberJsonList() {
		ModelAndView mav = new ModelAndView("jsonView");
		
		List<MembersVO> list = service.selectMembersList();

		mav.addObject(list);
				
		return mav;
	}
	
	@GetMapping("/member/memberJsonOne")
	public ModelAndView memberJsonOne(@ModelAttribute MembersVO paramVO) {
		ModelAndView mav = new ModelAndView("jsonView");
		MembersVO vo = service.selectMember(paramVO);
		mav.addObject("member", vo);
		
		return mav;
	}
	
	@GetMapping("/member/name")
	public @ResponseBody String name(HttpServletRequest request){
		String hello = request.getParameter("name");
		return hello;
	}
	
	
	/**
	 * HttpServletRequest 사용하는 방법과 같은 효과
	 * */
	@GetMapping("/member/name2")
	@ResponseBody
	public String name(String id) {
		return id;
	}
	
	@GetMapping("/member/fileUpload")
	public String upload() {
		return "member/file_upload";
	}
	
	@PostMapping("/fileUpload")
	public String fileUpload(@ModelAttribute FileVO vo, Model model ) {
		
		//MultipartFile file = request.getFile("file"); // 파일 하나만 받을 경우  MultipartHttpServletRequest
		
		MultipartFile[] files = vo.getFile();
		for(int i = 0; i <  files.length; i++) {
			
			if(files[i].isEmpty()) { // isEmpty 비어있으면 넘어감
				continue;
			}
			
			byte[] bytes;
			
			try {
				bytes = files[i].getBytes();
				Path path = Paths.get("D:/Java_tutorials/web.zip_expanded/web/src/main/resources/static/" + files[i].getOriginalFilename());
				Files.write(path, bytes);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			model.addAttribute("msg", "file upload success!");
		}
		
		return "member/fileSuccess";
	}
	
	
	
}
