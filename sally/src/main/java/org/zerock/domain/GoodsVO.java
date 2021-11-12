package org.zerock.domain;

import java.util.Date;
import java.util.List;

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
	private String cateParent;
	
	/* 상품 사이즈 */
	private String gdsSize;
	
	/* 상품 색상 */
	private String gdsColor;
	
	/* 상품 가격 */
	private int gdsPrice;
	
	/* 상품 재고 */
	private int gdsStock;
	
	/* 상품 내용 */
	private String gdsDes;
	
	/* 등록 날짜 */
	private Date gdsDate;
	
	/* 경로 */
	private String uploadPath;
	
	/* uuid */
	private String uuid;
	
	/* 파일 이름 */
	private String fileName;

	/* 이미지 정보 */
	private List<AttachImageVO> imageList;

	public void setCateParent(String cateParent2) {
		// TODO Auto-generated method stub
		
	}

	
	
}

