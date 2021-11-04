package org.zerock.domain;

import java.util.Date;

import lombok.Data;

@Data
public class GoodsVO {
	/* 상품 id */
	private int gdsNum;
	
	/* 상품 이름 */
	private String gdsName;
	
	/* 카테고리 코드 */
	private String cateCode;
	
	/* 카테고리 이름 */
	private String cateName;
	
	/* 상품 가격 */
	private int gdsPrice;
	
	/* 상품 재고 */
	private int gdsStock;
	
	/* 상품 내용 */
	private String gdsDes;
	
	/* 등록 날짜 */
	private Date gdsDate;

	
	
	

	
	
}
