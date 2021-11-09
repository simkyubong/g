package org.zerock.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.zerock.domain.QnaCriteria;
import org.zerock.domain.QnaPageDTO;
import org.zerock.domain.ReviewCriteria;
import org.zerock.domain.ReviewPageDTO;
import org.zerock.service.ProductService;
import org.zerock.service.ReviewService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@AllArgsConstructor
@RequestMapping("/goods")
public class ProductController {
	
	private ProductService service;
	private ReviewService rvservice;
	
	// 제품 상세페이지
	//@RequestMapping(value = "/product/detail", method = RequestMethod.GET)
	@GetMapping("detail")
	public void list(Model model, Model rvmodel, QnaCriteria cri, ReviewCriteria rvcri) {
		log.info("detail");
		//                배열이름,  select된 결과물
		model.addAttribute("list", service.getList(cri));
		
		int total=service.getTotalCount(cri);
		
		model.addAttribute("pageMaker", new QnaPageDTO(cri,total));
		
		//      			배열이름,  select된 결과물
		rvmodel.addAttribute("reviewlist", rvservice.getReviewList(rvcri));

		int rvtotal=rvservice.getReviewTotalCount(rvcri);
		
		rvmodel.addAttribute("rvpageMaker", new ReviewPageDTO(rvcri,rvtotal));
	}
	
	@GetMapping("read")
	public void read(long bno, Model model) {
		log.info("read="+bno);
		model.addAttribute("read", service.get(bno));
	}
}