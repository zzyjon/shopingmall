package com.lsm.web.resume;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class ResumeController {

	@Autowired
	ResumeService service;
	
	@GetMapping("/resume/resumeReg")
	public String resumeReg() {
		return "resume/resume_reg";
	}
	
	@PostMapping("/resume/procApply")
	@ResponseBody
	public String Apply(@ModelAttribute ResumeVO vo) {
		String result = "fail";
		
		/* 파일 업로드 시작 */
		MultipartFile[] files = vo.getFile();
		for(int i = 0; i <  files.length; i++) {
			
			if(files[i].isEmpty()) { // isEmpty 비어있으면 넘어감
				continue;
			}
			
			byte[] bytes;
			
			try {
				bytes = files[i].getBytes();
				Path path = Paths.get("D:/Java_tutorials/web.zip_expanded/web/src/main/resources/static/" + files[i].getOriginalFilename());
				
				vo.setUserImg(files[i].getOriginalFilename());  // 업로드한 파일 이름 셋팅
				
				Files.write(path, bytes);
								
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		/* 파일 업로드 끝 */
			
		}
		
		service.resumeApply(vo);
		result = "success";
		
		
		return result;
	}
	
	
	/*-----여기부터 테스트 시작 -------- */
	@GetMapping("/resume/test")
	public String test() {
		return "resume/test";
	}
	
	@PostMapping("/resume/applyTest")
	public String applyTest(@ModelAttribute ResumeVO vo) {
		
		service.applyTest(vo);

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
			
		}
		
		return "resume/test";	
	}
	/*---- 여기까지 테스트 끝----------*/
}
