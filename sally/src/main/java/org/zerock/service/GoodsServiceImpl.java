package org.zerock.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.zerock.domain.GoodsVO;
import org.zerock.mapper.GoodsMapper;

import lombok.extern.log4j.Log4j;

@Service
public class GoodsServiceImpl implements GoodsService {

//	@Inject
//	private GoodsMapper dao;
	
	@Autowired
	private GoodsMapper mapper;
	
	
	// 상품 목록 대분류
	@Override
	public List<GoodsVO> category(String cateName) throws Exception{
		return mapper.category(cateName);
	}
	
	// 상품 목록 소분류
	@Override
	public List<GoodsVO> list(String cateCode) throws Exception{
		return mapper.list(cateCode);
	}
	

}
