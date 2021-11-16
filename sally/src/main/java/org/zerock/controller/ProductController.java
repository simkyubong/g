package org.zerock.controller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.zerock.domain.GoodsVO;
import org.zerock.domain.QnaCriteria;
import org.zerock.domain.QnaPageDTO;
import org.zerock.domain.ReviewCriteria;
import org.zerock.domain.ReviewPageDTO;
import org.zerock.service.GoodsService;
import org.zerock.service.ProductService;
import org.zerock.service.ReviewService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@AllArgsConstructor
@RequestMapping("/goods")
public class ProductController {
	
	private GoodsService service;
	private ProductService qnaservice;
	private ReviewService rvservice;
	
	// 제품 상세페이지
	//@RequestMapping(value = "/goods/detail", method = RequestMethod.GET)
	@GetMapping("detail")
	public void list(@RequestParam("gdsNum") int gdsNum, Model model, Model rvmodel, QnaCriteria cri, ReviewCriteria rvcri) {
		log.info("detail");
		GoodsVO goods = service.goodsDetail(gdsNum);
		model.addAttribute("goods", goods);
		
		
		//      			배열이름,  select된 결과물
		rvmodel.addAttribute("reviewlist", rvservice.getReviewList(rvcri));

		int rvtotal=rvservice.getReviewTotalCount(rvcri);
		
		rvmodel.addAttribute("rvpageMaker", new ReviewPageDTO(rvcri,rvtotal));
		
		//      배열이름,  select된 결과물
		model.addAttribute("list", qnaservice.getList(cri));
		
		int total=qnaservice.getTotalCount(cri);
		
		model.addAttribute("pageMaker", new QnaPageDTO(cri,total));
		
		log.info(model);
	}
	
	
}