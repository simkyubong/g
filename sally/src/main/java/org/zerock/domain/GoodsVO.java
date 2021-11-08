package org.zerock.domain;

import java.util.Date;

import lombok.Data;

@Data
public class GoodsVO {
	/* 상품 id */
	private int gdsNum;
	
	/* 상품 이름 */
	private String gdsName;
	
	/* 카테고리 1차 */
	private String cateName;	
	
	/* 카테고리 2차 */
	private String cateCode;	
	
	
	/* 상품 가격 */
	private int gdsPrice;
	
	/* 상품 재고 */
	private int gdsStock;
	
	/* 상품 내용 */
	private String gdsDes;
	
	/* 등록 날짜 */
	private Date gdsDate;

	
	
	

	
	
}
