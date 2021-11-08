package org.zerock.domain;

import lombok.Data;

@Data
public class CateVO {

	/* 카테고리 이름 */
	private String cateNo;
	private String cateParent;
	private String cateName;
	private String cateCode;
	
}