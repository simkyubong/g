package org.zerock.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import org.zerock.mapper.OrderListMapper;
import org.zerock.domain.OrderListVO;

@Service
public class OrderListServiceImpl implements OrderListService {

	@Autowired
	private OrderListMapper mapper;
	
	// 주문 조회 전체
	@Override
	public List<OrderListVO> orderlistall(){
		
		return mapper.orderlistall();
	}
	
	
	// 주문 조회 - 주문처리상태
	@Override
	public List<OrderListVO> orderlist(String orderState){
		
		return mapper.orderlist(orderState);
	}
	
	
	//주문 조회 - 취소/반품/교환
	@Override
	public List<OrderListVO> orderlistcs(){
		
		return mapper.orderlistcs();
	}

}
