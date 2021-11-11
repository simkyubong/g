package org.zerock.domain;

import java.util.Date;

import lombok.Data;

@Data

public class OrderListVO {
/*	create table tbl_orderlist(
			orderNumber int primary key not null,
			orderDate timestamp default now() not null,
			gdsImg varchar(100) null,
			gdsName varchar(30) not null,
			orderOption varchar(30) null,
			orderQuantity int not null,
			orderPrice int not null,
			orderState varchar(20) not null
		);	*/
	
	/* 주문 번호 */ 
	private int orderNumber;
	
	/* 주문 일자 */
	private Date orderDate;
	
	/* 상품이미지 */
	private String gdsImg;
	
	/* 상품 이름 */
	private String gdsName;
	
	/* 주문 옵션*/
	private String orderOption;
	
	/* 주문 수량*/
	private int orderQuantity;
	
	/* 주문 가격 */
	private int orderPrice;
	
	/* 주문 상태 */
	private String orderState;
	
	
}
