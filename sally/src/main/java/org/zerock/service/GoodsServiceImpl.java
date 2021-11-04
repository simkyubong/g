package org.zerock.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.zerock.mapper.GoodsMapper;

import lombok.extern.log4j.Log4j;

import org.zerock.domain.CateVO;
import org.zerock.domain.GoodsVO;

@Service
@Log4j
public class GoodsServiceImpl implements GoodsService {

//	@Inject
//	private GoodsMapper dao;
	
	@Autowired
	private GoodsMapper goods;
	
	@Override
	public List<CateVO> category() throws Exception {
		
		return goods.category();
	}
	
	public List<GoodsVO> list() throws Exception{
		return goods.list();
	}
	
}
