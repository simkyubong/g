package org.zerock.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.zerock.domain.OrderListVO;
import org.zerock.service.OrderListService;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@RequestMapping("/mypage/*")
public class OrderListController {	
	
	@Autowired
	private OrderListService service;
	
	// 주문 조회 전체
	@GetMapping("/orderlistall")
	public void getList(Model model) {
		 
		 log.info("오더리스트 전체 페이지");	 
		 model.addAttribute("orderlistall", service.orderlistall());
	 }
	
	// 주문 조회 - 주문처리상태
	@RequestMapping(value = "/orderlist", method = RequestMethod.GET)
	public void getList(@RequestParam("order_state") String orderState, Model model) {
		 
		 List<OrderListVO> orderlist = null;
		 orderlist = service.orderlist(orderState);
		 log.info("오더리스트 주문처리상태 페이지");	 
		 model.addAttribute("orderlist", (orderlist));
	 }
	
	// 주문 조회 - 취소/반품/교환
	@GetMapping("/orderlistcs")
	public void getcsList(Model model) {
		log.info("오더리스트 취소/반품/교환");
		model.addAttribute("orderlistcs", service.orderlistcs());
	}
}
