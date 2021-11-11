package org.zerock.mapper;

import java.util.List;

import org.zerock.domain.OrderListVO;

public interface OrderListMapper {
	
	// 주문 조회 전체
	public List<OrderListVO> orderlistall();
	
	// 주문 조회 - 주문처리상태
	public List<OrderListVO> orderlist(String orderState);
	
	// 주문 조회 - 취소/반품/교환
	public List<OrderListVO> orderlistcs();
}
