package org.zerock.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.zerock.domain.Criteria;
import org.zerock.domain.PageDTO;
import org.zerock.service.ProductService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@AllArgsConstructor
@RequestMapping("/product")
public class ProductController {
	
	private ProductService service;
	
	// 제품 상세페이지
	//@RequestMapping(value = "/product/detail", method = RequestMethod.GET)
	@GetMapping("detail")
	public void list(Model model,Criteria cri) {
		log.info("detail");
		//                배열이름,  select된 결과물
		model.addAttribute("list", service.getList(cri));
		
		int total=service.getTotalCount(cri);
		
		model.addAttribute("pageMaker", new PageDTO(cri,total));
	}
	
	@GetMapping("read")
	public void read(long bno,Model model) {
		log.info("read="+bno);
		model.addAttribute("read", service.get(bno));
	}
}