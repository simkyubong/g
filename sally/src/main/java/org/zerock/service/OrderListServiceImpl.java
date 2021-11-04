package org.zerock.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import org.zerock.mapper.OrderListMapper;
import org.zerock.domain.OrderListVO;

@Service
public class OrderListServiceImpl implements OrderListService {

	@Inject
	private OrderListMapper dao;
	
	@Override
	public List<OrderListVO> orderlist(){
		
		return dao.orderlist();
	}

}
