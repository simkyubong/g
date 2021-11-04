package org.zerock.domain;

import java.util.Date;

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
	
	private int orderNumber;
	private Date orderDate;
	public int getOrderNumber() {
		return orderNumber;
	}
	public void setOrderNumber(int orderNumber) {
		this.orderNumber = orderNumber;
	}
	public Date getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}
	public String getGdsImg() {
		return gdsImg;
	}
	public void setGdsImg(String gdsImg) {
		this.gdsImg = gdsImg;
	}
	public String getGdsName() {
		return gdsName;
	}
	public void setGdsName(String gdsName) {
		this.gdsName = gdsName;
	}
	public String getOrderOption() {
		return orderOption;
	}
	public void setOrderOption(String orderOption) {
		this.orderOption = orderOption;
	}
	public int getOrderQuantity() {
		return orderQuantity;
	}
	public void setOrderQuantity(int orderQuantity) {
		this.orderQuantity = orderQuantity;
	}
	public int getOrderPrice() {
		return orderPrice;
	}
	public void setOrderPrice(int orderPrice) {
		this.orderPrice = orderPrice;
	}
	public String getOrderState() {
		return orderState;
	}
	public void setOrderState(String orderState) {
		this.orderState = orderState;
	}
	private String gdsImg;
	private String gdsName;
	private String orderOption;
	private int orderQuantity;
	private int orderPrice;
	private String orderState;
}
