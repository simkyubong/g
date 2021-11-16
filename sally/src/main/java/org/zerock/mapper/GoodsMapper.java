package org.zerock.mapper;

import java.util.List;

import org.zerock.domain.Criteria;
import org.zerock.domain.GoodsVO;

public interface GoodsMapper {
	
	//상품 목록 대분류
	public List<GoodsVO> category(String cateName) throws Exception;
	
	//상품 목록 소분류
	public List<GoodsVO> list(String cateParent) throws Exception;
	
	/* 상품 검색 */
	public List<GoodsVO> getGoodsList(Criteria cri);
	
	/* 상품 총 갯수 */
	public int goodsGetTotal(Criteria cri);

}