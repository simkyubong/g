package org.zerock.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.zerock.domain.CateVO;
import org.zerock.domain.GoodsVO;
import org.zerock.service.GoodsService;


@Controller
@RequestMapping("/goods/*")
public class GoodsController {

	 @Inject
	 private GoodsService service;
	//카테고리
	 @RequestMapping(value = "/category", method = RequestMethod.GET)
	 public void getList(Model model) throws Exception {
	  
	  List<CateVO> category = null;
	  category = service.category();
	  model.addAttribute("category", category);
	 }
	 
	 //상품 목록
	 @RequestMapping(value = "/list", method = RequestMethod.GET)
	 public void getGoodsList(Model model) throws Exception {
	  
	  List<GoodsVO> list = null;
	  list = service.list();
	  model.addAttribute("list", list);
	 }
	 
}