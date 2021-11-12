package org.zerock.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.zerock.domain.GoodsVO;
import org.zerock.service.GoodsService;

@Controller
@RequestMapping("/goods/*")
public class GoodsController {
	
	 @Inject
	 GoodsService service;

	 
	//상품 목록 대분류
	 @RequestMapping(value = "/category", method = RequestMethod.GET)
	 public void getList(@RequestParam("name") String cateName, Model model) throws Exception {
		 
		 List<GoodsVO> category = null;
		 category = service.category(cateName);
		 model.addAttribute("category", category);
	/*	 model.addAttribute("cateList", service.cateList());*/
	 }
	 
	 
	 //상품 목록 소분류
	 @RequestMapping(value = "/list", method = RequestMethod.GET)
	 public void getGoodsList(@RequestParam("name") String cateParent, Model model) throws Exception {
	  
	  List<GoodsVO> list = null;
	  list = service.list(cateParent);
	  model.addAttribute("list", list);
	 }
	 
}