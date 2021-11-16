package org.zerock.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.zerock.domain.Criteria;
import org.zerock.domain.GoodsVO;
import org.zerock.mapper.GoodsMapper;

import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class GoodsServiceImpl implements GoodsService {

//	@Inject
//	private GoodsMapper dao;
	
	@Autowired
	private GoodsMapper mapper;
	
	// 상품조회
	@Override
	public GoodsVO goodsDetail(int gdsNum) {
		return mapper.goodsDetail(gdsNum);
	}
	
	// 상품 목록 대분류
	@Override
	public List<GoodsVO> category(String cateName) throws Exception{
		return mapper.category(cateName);
	}
	
	// 상품 목록 소분류
	@Override
	public List<GoodsVO> list(String cateParent) throws Exception{
		return mapper.list(cateParent);
	}
	
	/* 상품 검색 */
	@Override
	public List<GoodsVO> getGoodsList(Criteria cri) {
		
		log.info("getGoodsList().......");
		
		return mapper.getGoodsList(cri);
	}

	/* 상품 총 갯수 */
	@Override
	public int goodsGetTotal(Criteria cri) {
		
		log.info("goodsGetTotal().......");
		
		return mapper.goodsGetTotal(cri);
		
	}

}

