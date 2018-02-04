package com.lsm.web.moosinsa;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.lsm.web.members.MemberVO;

@Controller
public class ProductController {

	
	@Autowired
	ProductService service;
	
	@Autowired
	BrandService bService;
	
	/**
	 * 상품 목록 뿌리기
	 * */
	@GetMapping("/page/product/goods_all_list")
	public String selectProductList(Model model	) {
		
		List<ProductVO> list = service.selectProductList();
		List<BrandVO> bList = bService.selectBrand();
		model.addAttribute("productList", list);
		model.addAttribute("brandList", bList);
		
		return "page/product/goods_list";
	}
	
	/**
	 * 상픔 등록
	 * */
	@PostMapping("/page/product/goods_reg")
	public String insertProduct(@ModelAttribute ProductVO vo) {
	
		service.insertProduct(vo);
		
		return "page/product/goods_reg";
	}
	
	/**
	 * 상품 삭제 
	 * */
	@PostMapping("/page/product/del")
	public String deleteProduct(@ModelAttribute ProductVO vo) {
		
		service.deleteProduct(vo);
		
		return "page/product/goods_list";
	}
	
	/**
	 * 상품 뷰 (수정 버튼 눌렀을때) 
	 * */
	@GetMapping("/page/product/detailView")
	public String selectProduct(@ModelAttribute ProductVO paramVO, Model model) {
		
		ProductVO vo = service.selectProduct(paramVO);
		
		model.addAttribute("ProductView", vo);
		
		return "page/product/goods_list";
	}
	
	/**
	 * 상품 수정
	 * */
	@GetMapping("/page/product/modify")
	public String updateProduct(@ModelAttribute ProductVO paramVO) {
		System.out.println("pno="+paramVO.getpNo());
		System.out.println("price:"+paramVO.getpPrice());
		System.out.println("name: "+paramVO.getpName());
		System.out.println("brand: "+paramVO.getpBrand());
		System.out.println("stock: "+paramVO.getpStock());
		System.out.println("color: "+paramVO.getpColor());
		System.out.println("size: "+paramVO.getpSize());
		System.out.println("material: "+paramVO.getpMaterial());
		System.out.println("maker: "+paramVO.getpMaker());
		System.out.println("desc: "+paramVO.getpDesc());
		System.out.println("coupon: "+paramVO.getpCouponUseCheck());
		
		service.updateProduct(paramVO);
		
		return "page/product/goods_list";
	}
	
	/**
	 * 페이징 처리 
	 * */
	@GetMapping("/page/product/goods_list")
	public String memberPaging(Model model, @RequestParam("currPage") int currPage) {
		
		List<ProductVO> list = service.selectProductList();
		List<BrandVO> bList = bService.selectBrand();
		model.addAttribute("productList", list);
		model.addAttribute("brandList", bList);
		
		ProductVO vo = new ProductVO();
		
		vo.setTotalCount(service.countProduct());
		vo.setCurrPage(currPage);
		
		/*Pagenation pg = new Pagenation();
		pg.setTotalCount(service.selectCount());
		
		pg.setCurrPage(currPage);
		
		vo.setCountPerPage(pg.getCountPerPage());
		vo.getOffset();
		
		System.out.println(vo.getOffset());
		*/
		//model.addAttribute("paging", pg);
		
		
		
		List<ProductVO> paginglist = service.selectList(vo);
		model.addAttribute("list",paginglist);
		model.addAttribute("startPageNum", vo.getStartPageNum());
		model.addAttribute("lastPageNum", vo.getLastPageNum());
		model.addAttribute("currPage", vo.getCurrPage());
		model.addAttribute("totalPage", vo.getTotalPage());
		
		return "page/product/goods_list";
	}
	
}
