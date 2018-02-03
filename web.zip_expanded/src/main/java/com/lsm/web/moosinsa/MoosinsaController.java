package com.lsm.web.moosinsa;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MoosinsaController {

	@GetMapping("/page/index")
	public String pageView() {
		return "index";
	}
	
	@GetMapping("/page/goods")
	public String pageGoods() {
		return "page/product/goods_reg";
	}
	
}
