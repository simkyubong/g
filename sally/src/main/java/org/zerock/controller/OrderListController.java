package org.zerock.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import org.zerock.domain.OrderListVO;
import org.zerock.service.OrderListService;

@Controller
@RequestMapping("/mypage/*")
public class OrderListController {	
	
	@Inject
	OrderListService service;
	
	 @RequestMapping(value = "/orderlist", method = RequestMethod.GET)
	 public void getList(Model model) throws Exception{
		 
		 List<OrderListVO> orderlist = null;
		 orderlist = service.orderlist();
		 
		 model.addAttribute("orderlist", orderlist);
	 }
}
