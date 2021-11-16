package org.zerock.mapper;

import java.util.List;

import org.zerock.domain.GoodsVO;

public interface GoodsMapper {
	
	public GoodsVO goodsDetail(int gdsNum);
	
	//상품 목록 대분류
	public List<GoodsVO> category(String cateName) throws Exception;
	
	//상품 목록 소분류
	public List<GoodsVO> list(String cateParent) throws Exception;

}
